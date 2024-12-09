// ignore_for_file: always_specify_types

import 'dart:async';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/application/events/enquiry_event.dart';
import 'package:nikitchem/application/events/language_event.dart';
import 'package:nikitchem/application/events/previous_page_event.dart';
import 'package:nikitchem/application/events/profile_event.dart';
import 'package:nikitchem/application/events/transaction_event.dart';
import 'package:nikitchem/application/events/un_focus_event.dart';
import 'package:nikitchem/application/localizations/locale_keys.g.dart';
import 'package:nikitchem/data/abstract/abstract.viewmodel.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/mixin/event_mixin.dart';
import 'package:nikitchem/data/models/language_model/local_language.dart';
import 'package:nikitchem/data/network/run_api_safe_zone.dart';
import 'package:nikitchem/data/repository/language/language_repository.dart';
import 'package:nikitchem/data/repository/push_notification/push_notification_repository.dart';
import 'package:nikitchem/data/services/notification_service.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/infrastructure/globle.dart';
import 'package:nikitchem/infrastructure/utils/app.text.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/main_viewstate.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

///
class MainViewModel extends BaseViewModel<MainViewState>
    with EventMixin<AppEvent> {
  ///
  LocalStorage localStorage;

  ///
  StreamSubscription<AppEvent>? streamSubscription;

  ///
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //     FlutterLocalNotificationsPlugin();

  ///
  final bool _kShouldTestAsyncErrorOnInit = false;

  ///
  final bool _kTestingCrashlytics = true;
  late Future<void> _initializeFlutterFireFuture;

  ///
  PushNotificationRepository pushNotificationRepository =
      injector<PushNotificationRepository>();

  ///
  LanguageRepository languageRepository = injector<LanguageRepository>();

  ///
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ///
  BuildContext context;

  ///
  MainViewModel(this.localStorage, this.context)
      : super(MainViewState.initial()) {
    streamSubscription = listenEvents((AppEvent event) {
      if (event is LanguageEvent) {
        notifyListeners();
      } else if (event is PreviousPageEvent) {
        setPreviousIndex();
      }
    });
  }

  ///
  void init(bool? isComesUserProfile, BuildContext context) async {
    _initializeFlutterFireFuture = _initializeFlutterFire();

    setState(state.copyWith(
        isComesUserProfile:
            isComesUserProfile != null && isComesUserProfile == true));

    Position currentLocation = await _determinePosition();
    localStorage.save(StorageKey.latitude, currentLocation.latitude);
    localStorage.save(StorageKey.longitude, currentLocation.longitude);
    _getAddressFromLatLng(currentLocation);
    localStorage.save(StorageKey.currentPageIndex, 0);
    await NotificationService.injected()
        .initialize()
        .onError((error, stackTrace) async {
      String? fcmToken = await FirebaseMessaging.instance.getToken();
      localStorage.save(StorageKey.fcmToken, fcmToken);
      if (fcmToken != null && fcmToken.isNotEmpty) {
        await sendNotification(fcmToken);
        getLanguage();
      }
    });
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    localStorage.save(StorageKey.fcmToken, fcmToken);
    if (fcmToken != null && fcmToken.isNotEmpty) {
      await sendNotification(fcmToken);
      getLanguage();
    }

    remoteConfigAppUpdate();
  }

  ///remote config
  Future<void> remoteConfigAppUpdate() async {
    FirebaseRemoteConfig firebaseRemoteConfigInstance =
        FirebaseRemoteConfig.instance;

    firebaseRemoteConfigInstance.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 30),
        minimumFetchInterval: const Duration(seconds: 120)));

    await firebaseRemoteConfigInstance.fetchAndActivate();
    int versionCode = firebaseRemoteConfigInstance.getInt('version_code');
    await appUpdate(versionCode);

    firebaseRemoteConfigInstance.onConfigUpdated.listen((event) async {
      bool? temp = await firebaseRemoteConfigInstance.activate();
      if (temp == true) {
        String? tell = event.updatedKeys.first;
        int? versionCode = firebaseRemoteConfigInstance.getInt(tell);
        appUpdate(versionCode);
      }
    });
  }

  ///
  /// Crashlytics
  ///
  Future<void> _testAsyncErrorOnInit() async {
    Future<void>.delayed(const Duration(seconds: 2), () {
      final List<int> list = <int>[];
    });
  }

  ///
  Future<bool> navigateToHomeScreen(BuildContext context) async {
    if (localStorage.retrieveInt(StorageKey.backPageIndex) == 0) {
      return true;
    } else {
      localStorage.save(StorageKey.backPageIndex, 0);
      setState(state.copyWith(selectIndex: 0));
      AutoTabsRouter.of(context).setActiveIndex(0);
      return false;
    }
  }

  Future<void> _initializeFlutterFire() async {
    if (_kTestingCrashlytics) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    } else {
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(!kDebugMode);
    }

    if (_kShouldTestAsyncErrorOnInit) {
      await _testAsyncErrorOnInit();
    }
  }

  ///
  /// sendNotification
  ///
  Future<void> sendNotification(String fcmToken) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo? iosDeviceInfo;
    AndroidDeviceInfo? androidDeviceInfo;
    if (Platform.isAndroid) {
      androidDeviceInfo = await deviceInfo.androidInfo;
    } else {
      iosDeviceInfo = await deviceInfo.iosInfo;
    }

    String? id = Platform.isAndroid
        ? androidDeviceInfo?.id
        : iosDeviceInfo?.identifierForVendor;

    await runApiInSafeZone(() =>
        pushNotificationRepository.sendPushNotification(id ?? '', fcmToken));
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      permission = await Geolocator.requestPermission();
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();

    }
    return Geolocator.getCurrentPosition();
  }

  ///
  void setPreviousIndex() {
    setState(state.copyWith(
        selectIndex: localStorage.retrieveInt(StorageKey.currentPageIndex)));
  }

  ///app update function
  Future<void> appUpdate(int versionCode) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String? buildNumber = packageInfo.buildNumber;
    if (versionCode > int.parse(buildNumber)) {

    } else {}
  }

  ///
  Future<void> getLanguage() async {
    // if (context != null) {
    ApiResult<LanguageResponse> result = await runApiInSafeZone(() =>
        languageRepository.getLanguage(
            language: localStorage.retrieveString(StorageKey.selectLanguage) ??
                '${Platform.localeName[0]}${Platform.localeName[1]}'));
    if (result.isSucceeded) {
      localLanguage = result.data?.language;
      notifyListeners();
      fireEvent(const LanguageEvent());
    } else {
      // ApiResult.catchError(result, context!);
      // }
    }
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(position.latitude, position.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      '${place.administrativeArea}, ${place.subAdministrativeArea},${place.locality}, ${place.subLocality} ${place.postalCode}';
      addressData(place);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  ///
  void addressData(Placemark place) {
    localStorage.save(StorageKey.administrativeArea, place.administrativeArea);
    localStorage.save(
        StorageKey.subAdministrativeArea, place.subAdministrativeArea);
    localStorage.save(StorageKey.locality, place.locality);
    localStorage.save(StorageKey.subLocality, place.subLocality);
    localStorage.save(StorageKey.postalCode, place.postalCode);
  }

  ///
  void onItemTap(int index) {
    //AutoRouter.of(context!).popTop();
    setState(state.copyWith(selectIndex: index));
    fireEvent(const EnquiryEvent());
    localStorage.save(StorageKey.backPageIndex, index);
    if (index == 1) {
      fireEvent(const TransactionEvent());
    }
    if (index == 3) {
      fireEvent(const ProfileNameEvent());
    }
    fireEvent(const UnFocusEvent());
    if (index != 4) {
      localStorage.save(StorageKey.currentPageIndex, index);
    }
  }
}
