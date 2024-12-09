import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui show instantiateImageCodec, Codec;
import 'package:dio/io.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

///
@singleton
class AppActivityInterceptor extends InterceptorsWrapper {
  ///
  final DioClient dioClient;

  ///
  final CompanyDioClient companyDioClient;

  ///
  final ForceUpdateDioClient forceUpdateDioClient;

  ///
  String credentials = r'pays:pays!@#$%^';

  ///
  String basic = "Basic ${base64Encode(utf8.encode(r'pays:pays!@#$%^'))}";

  ///
  AppActivityInterceptor(this.dioClient, this.companyDioClient,this.forceUpdateDioClient) {
    _registerInterceptor();
  }

  Future<void> _onRequestInterceptor(RequestOptions options,
      RequestInterceptorHandler requestInterceptorHandler) async {
      options.headers.addAll(<String, dynamic>{'Authorization': basic});
    requestInterceptorHandler.next(options);

    ///
    /// Intercept here
    ///
  }

  void _registerInterceptor() {

/*
    (dioClient.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
    HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
*/

    dioClient.interceptors.add(QueuedInterceptorsWrapper(
        onRequest: _onRequestInterceptor,
        onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
          // Do something with response data
          return handler.next(response); // continue
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.next(e); //continue
        }));
    dioClient.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
    ));

    companyDioClient.interceptors.add(QueuedInterceptorsWrapper(
        onRequest: _onRequestInterceptor,
        onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
          // Do something with response data
          return handler.next(response); // continue
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.next(e); //continue
        }));
    companyDioClient.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
    ));

    forceUpdateDioClient.interceptors.add(QueuedInterceptorsWrapper(
        onRequest: _onRequestInterceptor,
        onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.next(e);
        }));
    forceUpdateDioClient.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
    ));
  }
}
