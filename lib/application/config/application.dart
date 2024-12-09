import 'package:nikitchem/application/config/app_config.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/services/notification_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

///
/// [Application]
///

class Application {
  ///
  AppConfiguration? configuration;

  ///
  static Application? instance;

  ///
  Application._({required this.configuration});

  ///
  ///Initialize
  ///
  static Future<void> initialize(
      {required AppConfiguration configuration}) async {
    if (Application.instance != null) return;
    Application.instance = Application._(configuration: configuration);
    await Application.instance?.initializeServices();
  }

  ///
  /// Initialize Services
  ///
  Future<void> initializeServices() async {
    WidgetsFlutterBinding.ensureInitialized();
    FirebaseMessaging.onBackgroundMessage(
        NotificationService.handleBackgroundNotification);
    await Firebase.initializeApp();
    await EasyLocalization.ensureInitialized();
    await configureDependencies();
  }
}

///
/// Get App Configuration
///
AppConfiguration? get appConfig => Application.instance?.configuration;
