// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsResponse _$ContactUsResponseFromJson(Map<String, dynamic> json) =>
    ContactUsResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ContactUsResponseToJson(ContactUsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      data: json['data'] as String?,
      errorMessage: json['error_message'] as String?,
      errorCode: json['error_code'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'data': instance.data,
      'error_message': instance.errorMessage,
      'error_code': instance.errorCode,
    };
