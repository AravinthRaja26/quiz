// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passbook_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassbookResponse _$PassbookResponseFromJson(Map<String, dynamic> json) =>
    PassbookResponse(
      data: json['data'] == null
          ? null
          : PassbookData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$PassbookResponseToJson(PassbookResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

PassbookData _$PassbookDataFromJson(Map<String, dynamic> json) => PassbookData(
      (json['count'] as num?)?.toInt(),
      (json['list'] as List<dynamic>?)
          ?.map((e) => PassbookList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PassbookDataToJson(PassbookData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };

PassbookList _$PassbookListFromJson(Map<String, dynamic> json) => PassbookList(
      transactionType: json['transactionType'] as String?,
      referenceNum: json['referenceNum'] as String?,
      benificiaryName: json['benificiaryName'] as String?,
      reason: json['reason'],
      amount: (json['amount'] as num?)?.toDouble(),
      transactionStatus: json['transactionStatus'] as String?,
      accNo: json['accNo'] as String?,
      transactionTime: json['transactionTime'] as String?,
      type: json['type'] as String?,
      paymentRef: json['paymentRef'] as String?,
      sendTo: json['sendTo'] as String?,
      sendMobile: json['sendMobile'] as String?,
      couponCode: json['couponCode'] as String?,
    );

Map<String, dynamic> _$PassbookListToJson(PassbookList instance) =>
    <String, dynamic>{
      'transactionType': instance.transactionType,
      'referenceNum': instance.referenceNum,
      'benificiaryName': instance.benificiaryName,
      'reason': instance.reason,
      'amount': instance.amount,
      'transactionStatus': instance.transactionStatus,
      'accNo': instance.accNo,
      'transactionTime': instance.transactionTime,
      'type': instance.type,
      'paymentRef': instance.paymentRef,
      'sendTo': instance.sendTo,
      'sendMobile': instance.sendMobile,
      'couponCode': instance.couponCode,
    };
