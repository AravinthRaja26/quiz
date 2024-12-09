import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

///
Future<ApiResult<R>> runApiInSafeZone<R>(Future<R> Function() callback) async {
  try {
    return ApiResult<R>(data: await callback());
  } on DioException catch (e) {
    debugPrint('${e.type}');
    return ApiResult<R>(error: e);
  } catch (e) {
    return ApiResult<R>(error: e);
  }
}

///
class ApiResult<T> {
  ///
  final T? data;

  ///
  final Object? error;

  ///
  const ApiResult({this.data, this.error});

  ///
  bool get isSucceeded => error == null;

  ///
  ///
  static Future<void> catchError(
      ApiResult<dynamic>? result, BuildContext context,
      {String? contentMessage, VoidCallback? callBack}) async {
    switch (result?.error.runtimeType) {
      case DioException:
        final Response<dynamic>? errors =
            (result?.error as DioException).response;
        DioException error = result?.error as DioException;
        if (error.error.runtimeType == SocketException) {

        } else if (error.type == DioExceptionType.connectionTimeout ||
            error.type == DioExceptionType.receiveTimeout) {



          /*confirmationDialog(context,
              image: AssetImagePath.timeOut,
              showCancelButton: false,
              doneButtonText: localLanguage?.keyRetry?.toUpperCase() ??LocaleKeys.retry.tr().toUpperCase(), onTap: () {
            *//*AutoRouter.of(context).pushAndPopUntil(const DashboardScreen(),
                predicate: (_) => false);*//*
                AutoRouter.of(context).pop();
          },
              subTitle: LocaleKeys.noResponse.tr() ??
                  'No response,Please try again later');*/
        } else {
          if (error.type == DioExceptionType.badResponse) {

          } else {

          }
        }
        break;
      default:
        debugPrint(result.toString());
        break;
    }
  }
}

/*///
Future<void> confirmDialog(BuildContext context,
    {String? contentMessage, VoidCallback? callBack}) async {
  await apiAlertDialog(context,
          contentMessage: contentMessage, callBack: callBack)
      .then((bool? value) {});
}*/
