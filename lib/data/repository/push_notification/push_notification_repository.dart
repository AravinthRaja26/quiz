import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:flutter/services.dart';
import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/notification/push_notification.dart';

import 'package:nikitchem/data/network/endpoint/push_notificaton/push_notification_endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

///
@injectable
class PushNotificationRepository {
  ///
  PushNotificationEndPoint pushNotification =
      injector<PushNotificationEndPoint>();

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  PushNotificationRepository();

  ///
  Future<PushNotificationResponse> sendPushNotification(String deviceId,String fcmToken) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();


    AndroidId androidIdPlugin = const AndroidId();
    String androidId;

    try {
      androidId = await androidIdPlugin.getId() ?? 'Unknown ID';
    } on PlatformException {
      androidId = 'Failed to get Android ID.';
    }
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo? iosDeviceInfo;
    AndroidDeviceInfo? androidDeviceInfo;
    if (Platform.isAndroid) {
      androidDeviceInfo = await deviceInfo.androidInfo;
    } else {
      iosDeviceInfo = await deviceInfo.iosInfo;
    }
    Map<String, String> data = <String, String>{
      'device_type': Platform.isAndroid ? 'android' : 'ios',
      'unique_id': localStorage.retrieveString(StorageKey.keykjm).toString(),
      'phone_number':
      localStorage.retrieveString(StorageKey.userPhoneNumber).toString(),
      'device_id': Platform.isAndroid
          ? androidId
          : iosDeviceInfo?.identifierForVendor ?? '',
      'fcm_token': fcmToken,
      'preferred_language':
      localStorage.retrieveString(StorageKey.selectLanguage) ?? '',
      'version_name': packageInfo.version ?? '',
      'app_id': packageInfo.packageName,
      'company_id': '${appConfig?.companyId}',
      'os_version': Platform.isAndroid
          ? '${androidDeviceInfo?.version.release}'
          : '${iosDeviceInfo?.systemVersion}',
      'device_brand': Platform.isAndroid
          ? androidDeviceInfo?.brand ?? ''
          : iosDeviceInfo?.name ?? '',
    };
    PushNotificationResponse response = await pushNotification.pushNotification(data);
    return response;
  }
}
