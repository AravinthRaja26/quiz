// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_m_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestMPinResponse _$RestMPinResponseFromJson(Map<String, dynamic> json) =>
    RestMPinResponse(
      restMPinData: json['data'] == null
          ? null
          : RestMPinData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$RestMPinResponseToJson(RestMPinResponse instance) =>
    <String, dynamic>{
      'data': instance.restMPinData,
      'status': instance.status,
    };

RestMPinData _$RestMPinDataFromJson(Map<String, dynamic> json) => RestMPinData(
      phone: json['phone'] as String?,
      whatsappNumber: json['fax'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RestMPinDataToJson(RestMPinData instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'fax': instance.whatsappNumber,
      'message': instance.message,
    };
