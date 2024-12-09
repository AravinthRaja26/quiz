// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferResponse _$TransferResponseFromJson(Map<String, dynamic> json) =>
    TransferResponse(
      data: json['data'] == null
          ? null
          : TransferData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TransferResponseToJson(TransferResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

TransferData _$TransferDataFromJson(Map<String, dynamic> json) => TransferData(
      (json['count'] as num?)?.toInt(),
      (json['list'] as List<dynamic>?)
          ?.map((e) => TransferList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransferDataToJson(TransferData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };

TransferList _$TransferListFromJson(Map<String, dynamic> json) => TransferList(
      transactionType: json['transactionType'] as String?,
      receiverFrom: json['receiverFrom'] as String?,
      receiverMobile: json['receiverMobile'] as String?,
      couponCode: json['couponCode'] as String?,
      referenceNum: json['referenceNum'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      sendTo: json['sendTo'] as String?,
      sendName: json['sendName'] as String?,
      transactionTime: json['transactionTime'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TransferListToJson(TransferList instance) =>
    <String, dynamic>{
      'transactionType': instance.transactionType,
      'referenceNum': instance.referenceNum,
      'receiverFrom': instance.receiverFrom,
      'receiverMobile': instance.receiverMobile,
      'couponCode': instance.couponCode,
      'amount': instance.amount,
      'sendTo': instance.sendTo,
      'sendName': instance.sendName,
      'transactionTime': instance.transactionTime,
      'type': instance.type,
    };
