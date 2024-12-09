// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpResponse _$OtpResponseFromJson(Map<String, dynamic> json) => OtpResponse(
      otp: json['data'] == null
          ? null
          : Otp.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$OtpResponseToJson(OtpResponse instance) =>
    <String, dynamic>{
      'data': instance.otp,
      'status': instance.status,
    };

Otp _$OtpFromJson(Map<String, dynamic> json) => Otp(
      message: json['message'] as String?,
      errorMessage: json['error_message'] as String?,
      errorCode: json['error_code'] as String?,
      mPin: json['mPin'] as String?,
      countryCode: json['countryCode'] as String?,
      alertMessage: json['alertMessage'] as String?,
      isFirstTime: json['isFirstTime'] as bool?,
    );

Map<String, dynamic> _$OtpToJson(Otp instance) => <String, dynamic>{
      'message': instance.message,
      'error_message': instance.errorMessage,
      'error_code': instance.errorCode,
      'mPin': instance.mPin,
      'countryCode': instance.countryCode,
      'alertMessage': instance.alertMessage,
      'isFirstTime': instance.isFirstTime,
    };
