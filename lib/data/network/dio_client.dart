import 'package:dio/dio.dart';
import 'package:dio/io.dart';

///
class DioClient extends DioForNative {
  ///
  /// [DioClient]
  ///
  DioClient._(String baseUrl)
      : super(BaseOptions(
            baseUrl: baseUrl, connectTimeout: const Duration(seconds: 30)));

  ///
  factory DioClient(String baseUrl) {
    return DioClient._(baseUrl);
  }
}

///

class PointTransfer extends DioForNative {
  ///
  /// [PointTransfer]
  ///
  PointTransfer._(String baseUrl)
      : super(BaseOptions(
          baseUrl: baseUrl,
        ));

  ///
  factory PointTransfer(String baseUrl) {
    return PointTransfer._(baseUrl);
  }
}

///
class CompanyDioClient extends DioForNative {
  ///
  /// [DioClient]
  ///
  CompanyDioClient._(String companyBaseUrl)
      : super(BaseOptions(
            baseUrl: companyBaseUrl,
            connectTimeout: const Duration(seconds: 30)));

  ///
  factory CompanyDioClient(String companyBaseUrl) {
    return CompanyDioClient._(companyBaseUrl);
  }
}

///
  class ForceUpdateDioClient extends DioForNative {
  ///
  /// [DioClient]
  ///
  ForceUpdateDioClient._(String forceUpdateBaseUrl)
      : super(BaseOptions(
            baseUrl: forceUpdateBaseUrl,
            connectTimeout: const Duration(seconds: 30)));

  ///
  factory ForceUpdateDioClient(String forceUpdateBaseUrl) {
    return ForceUpdateDioClient._(forceUpdateBaseUrl);
  }
}
