

import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

///
@module
abstract class AppModule{

  ///
  @Named('baseUrl')
  String get baseUrl => appConfig!.baseUrl;
  ///
  @Named('companyBaseUrl')
  String get companyBaseUrl => appConfig!.localUrl;

  ///
  @Named('forceUpdateBaseUrl')
  String get forceUpdateBaseUrl => appConfig!.forceUpdateUrl;

  ///
  @lazySingleton
  DioClient dio(@Named('baseUrl') String url) => DioClient(url);

  ///
  @lazySingleton
  CompanyDioClient companyDio(@Named('companyBaseUrl') String url) => CompanyDioClient(url);

  ///
  @lazySingleton
  ForceUpdateDioClient forceUpdateDio(@Named('forceUpdateBaseUrl') String url) => ForceUpdateDioClient(url);

  ///
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  ///
  @singleton
  EventBus get eventBus => EventBus();
}