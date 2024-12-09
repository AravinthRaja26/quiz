import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:nikitchem/application/config/app_config.dart';
import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/application/localizations/localizations.g.dart';
import 'package:nikitchem/presentation/routing/auto_router.dart';
import 'package:nikitchem/presentation/ui/custom_widget/app_network_connectivity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// app staring way
///
void startApplication(AppConfiguration configuration) async {


  await Application.initialize(configuration: configuration);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light) // Or Brightness.dark
  );
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  NetworkConnectivity().connectivityCheck();
  runApp(EasyLocalization(
      supportedLocales: const <Locale>[
        Locale('en'),
        Locale('bn'),
        Locale('hi'),
        Locale('ml'),
        Locale('ta'),
        Locale('te')
      ],
      path: 'assets/translations',
      startLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: MyApp()));
}

///
class MyApp extends StatelessWidget {
  ///
  final AppRouter appRouter = AppRouter();

  ///
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,

      routerConfig: appRouter.config(),
      themeMode: ThemeMode.system,
    );
  }
}
