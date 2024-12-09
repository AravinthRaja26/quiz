// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expired_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpiredResponse _$ExpiredResponseFromJson(Map<String, dynamic> json) =>
    ExpiredResponse(
      data: json['data'] == null
          ? null
          : ExpiredData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ExpiredResponseToJson(ExpiredResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ExpiredData _$ExpiredDataFromJson(Map<String, dynamic> json) => ExpiredData(
      (json['count'] as num?)?.toInt(),
      (json['list'] as List<dynamic>?)
          ?.map((e) => ExpiredList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExpiredDataToJson(ExpiredData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };

ExpiredList _$ExpiredListFromJson(Map<String, dynamic> json) => ExpiredList(
      amount: (json['amount'] as num?)?.toDouble(),
      expiredDate: json['expiredDate'] as String?,
      couponCode: json['couponCode'] as String?,
    );

Map<String, dynamic> _$ExpiredListToJson(ExpiredList instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'expiredDate': instance.expiredDate,
      'couponCode': instance.couponCode,
    };
