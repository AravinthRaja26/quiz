import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

///
/// Handles Notification
///
@singleton
class NotificationService {
  ///
  bool _initialized = false;

  String? _token;

  // final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
  //     FlutterLocalNotificationsPlugin();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  ///
  // AndroidNotificationDetails androidNotificationDetails =
  //     const AndroidNotificationDetails('your channel id', 'your channel name',
  //         channelDescription: 'your channel description',
  //         importance: Importance.max,
  //         priority: Priority.high,
  //         playSound: true,
  //         color: Colors.green,
  //         sound: UriAndroidNotificationSound('sound/test.audio.mp3'),
  //         enableVibration: true,
  //         ticker: 'ticker');

  ///
  // DarwinNotificationDetails iosNotificationDetails =
  //     const DarwinNotificationDetails(
  //   presentAlert: true,
  //   presentBadge: true,
  // );

  ///
  // NotificationDetails get notificationDetails => NotificationDetails(
  //     iOS: iosNotificationDetails, android: androidNotificationDetails);

  ///
  NotificationService();

  ///
  /// Get injected [NotificationService]
  ///
  factory NotificationService.injected() => injector<NotificationService>();

  /// Messaging instance
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  ///
  /// Initialize this service ad configure the FirebaseMessaging
  /// Must be call after requesting the permission for the first time
  ///
  Future<void> initialize() async {
    if (!_initialized) {
      await AwesomeNotifications().initialize(
          'resource://mipmap/nikit_logo', //'resource://drawable/res_app_icon',//
          [
            NotificationChannel(
                channelKey: 'nikitchem_notification',
                channelName: 'Nikitchem Notification',
                channelDescription: 'Notification tests as alerts',
                playSound: true,
                onlyAlertOnce: true,
                groupAlertBehavior: GroupAlertBehavior.Children,
                importance: NotificationImportance.High,
                defaultPrivacy: NotificationPrivacy.Private,
                defaultColor: Colors.deepPurple,
                ledColor: Colors.deepPurple)
          ],
          debug: true);

      FirebaseMessaging.onMessage.listen((RemoteMessage event) async {
        showNotification(event);
      });
      FirebaseMessaging.onMessage.listen((RemoteMessage event) async {
        showNotification(event);
      });
      _token = await _firebaseMessaging.getToken();
      _firebaseMessaging.onTokenRefresh.listen((String event) {
        _token = event;
      });
      if (await notificationAuthorized()) {
        await _initializeLocalNotifications();
      }
      debugPrint('_token => $_token');
      _initialized = true;
    }
  }

  /// Check if the user authorized to receive push notification
  Future<bool> notificationAuthorized() async {
    try {
      final NotificationSettings settings =
          await _firebaseMessaging.getNotificationSettings();
      bool hasPermission =
          settings.authorizationStatus == AuthorizationStatus.authorized ||
              settings.authorizationStatus == AuthorizationStatus.provisional;
      if (!hasPermission) {
        NotificationSettings settings =
            await FirebaseMessaging.instance.requestPermission();
        return settings.authorizationStatus == AuthorizationStatus.authorized ||
            settings.authorizationStatus == AuthorizationStatus.provisional;
      }
      return hasPermission;
    } catch (e) {
      return false;
    }
  }

  ///
  /// Show a local notification
  ///
  Future<void> showNotification(RemoteMessage message) async {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 23,
          channelKey: 'nikitchem_notification',
          actionType: ActionType.Default,
          title: message.notification?.title,
          // bigPicture: 'https://kumbhat.com/wp-content/uploads/2023/03/kh-log-min.jpg',
          // largeIcon: 'https://kumbhat.com/wp-content/uploads/2023/03/kh-log-min.jpg',
          body: message.notification?.body,
        )
    );
    // await _flutterLocalNotificationsPlugin.show(
    //     0,
    //     message.notification?.title ?? 'Default Title',
    //     message.notification?.body ?? 'Default Body',
    //     notificationDetails);
  }

  Future<void> _initializeLocalNotifications() async {
    // const AndroidInitializationSettings initializationSettingsAndroid =
    //     AndroidInitializationSettings('@mipmap/nikit_logo');
    // final DarwinInitializationSettings initializationSettingsIOS =
    //     DarwinInitializationSettings(
    //   requestSoundPermission: true,
    //   requestBadgePermission: true,
    //   requestAlertPermission: true,
    //   onDidReceiveLocalNotification:
    //       (int id, String? title, String? body, String? payload) async {
    //     try {
    //       //todo tap handle
    //     } catch (e) {
    //       //
    //     }
    //   },
    // );
    // final InitializationSettings initializationSettings =
    //     InitializationSettings(
    //   android: initializationSettingsAndroid,
    //   iOS: initializationSettingsIOS,
    // );
    // await _flutterLocalNotificationsPlugin.initialize(
    //   initializationSettings,
    // );
  }

  /// Handle background notification message
  static Future<void> handleBackgroundNotification(
      RemoteMessage message) async {
    try {
      await Firebase.initializeApp();
      final NotificationService service = NotificationService();
      await service.initialize();
      service.showNotification(message);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
