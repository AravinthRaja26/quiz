// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifiedResponse _$VerifiedResponseFromJson(Map<String, dynamic> json) =>
    VerifiedResponse(
      data: json['data'] == null
          ? null
          : VerifiedData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$VerifiedResponseToJson(VerifiedResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

VerifiedData _$VerifiedDataFromJson(Map<String, dynamic> json) => VerifiedData(
      (json['count'] as num?)?.toInt(),
      (json['list'] as List<dynamic>?)
          ?.map((e) => VerifiedList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VerifiedDataToJson(VerifiedData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };

VerifiedList _$VerifiedListFromJson(Map<String, dynamic> json) => VerifiedList(
      scannedDate: json['scannedDate'] as String?,
      couponCode: json['couponCode'] as String?,
    );

Map<String, dynamic> _$VerifiedListToJson(VerifiedList instance) =>
    <String, dynamic>{
      'scannedDate': instance.scannedDate,
      'couponCode': instance.couponCode,
    };
