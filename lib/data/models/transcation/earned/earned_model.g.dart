// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earned_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EarnedResponse _$EarnedResponseFromJson(Map<String, dynamic> json) =>
    EarnedResponse(
      data: json['data'] == null
          ? null
          : EarnedData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$EarnedResponseToJson(EarnedResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

EarnedData _$EarnedDataFromJson(Map<String, dynamic> json) => EarnedData(
      (json['count'] as num?)?.toInt(),
      (json['list'] as List<dynamic>?)
          ?.map((e) => EarnedList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EarnedDataToJson(EarnedData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };

EarnedList _$EarnedListFromJson(Map<String, dynamic> json) => EarnedList(
      timeStamp: json['timeStamp'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      coupenCode: json['coupenCode'] as String?,
      couponType: json['couponType'] as String?,
      expiredDate: json['expiredDate'] as String?,
      typeDesc: json['type_desc'] as String?,
      transactionTime: json['transactionTime'] as String?,
      isExpired: json['isExpired'] as bool?,
    );

Map<String, dynamic> _$EarnedListToJson(EarnedList instance) =>
    <String, dynamic>{
      'timeStamp': instance.timeStamp,
      'amount': instance.amount,
      'coupenCode': instance.coupenCode,
      'couponType': instance.couponType,
      'expiredDate': instance.expiredDate,
      'type_desc': instance.typeDesc,
      'transactionTime': instance.transactionTime,
      'isExpired': instance.isExpired,
    };
