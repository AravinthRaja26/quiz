// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerificationResponse _$OtpVerificationResponseFromJson(
        Map<String, dynamic> json) =>
    OtpVerificationResponse(
      json['data'] == null
          ? null
          : OtpVerification.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as String?,
    );

Map<String, dynamic> _$OtpVerificationResponseToJson(
        OtpVerificationResponse instance) =>
    <String, dynamic>{
      'data': instance.otpVerification,
      'status': instance.status,
    };

OtpVerification _$OtpVerificationFromJson(Map<String, dynamic> json) =>
    OtpVerification(
      json['message'] as String?,
      json['isDealer'] as bool?,
      json['status'] as String?,
      json['key'] as String?,
      json['referralKey'] as String?,
      json['referral'] as bool?,
      json['firstTimeLogin'] as bool?,
    );

Map<String, dynamic> _$OtpVerificationToJson(OtpVerification instance) =>
    <String, dynamic>{
      'firstTimeLogin': instance.firstTimeLogin,
      'referral': instance.referral,
      'referralKey': instance.referralKey,
      'message': instance.message,
      'isDealer': instance.isDealer,
      'key': instance.key,
      'status': instance.status,
    };
