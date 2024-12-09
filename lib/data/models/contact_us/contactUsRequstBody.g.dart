// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactUsRequstBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsRequestBody _$ContactUsRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ContactUsRequestBody(
      message: json['message'] as String?,
      email: json['email'] as String?,
      subject: json['subject'] as String?,
      mobile: json['mobile'] as String?,
    );

Map<String, dynamic> _$ContactUsRequestBodyToJson(
        ContactUsRequestBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'email': instance.email,
      'subject': instance.subject,
      'mobile': instance.mobile,
    };
