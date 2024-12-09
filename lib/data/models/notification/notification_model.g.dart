// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponse _$NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationResponse(
      data: json['data'] == null
          ? null
          : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$NotificationResponseToJson(
        NotificationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    NotificationData(
      (json['bankTransfer'] as List<dynamic>?)
          ?.map((e) => BankTransfer.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['error_message'] as String?,
    );

Map<String, dynamic> _$NotificationDataToJson(NotificationData instance) =>
    <String, dynamic>{
      'bankTransfer': instance.bankTransfer,
      'error_message': instance.errorMessage,
    };

BankTransfer _$BankTransferFromJson(Map<String, dynamic> json) => BankTransfer(
      date: json['date'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      transactionId1: json['transactionId1'] as String?,
      euroNetRefNo: json['euroNetRefNo'] as String?,
      mobile: json['mobile'] as String?,
      rechargeMessage: json['rechargeMessage'] as String?,
      transactionId: json['transactionId'] as String?,
      status: json['status'] as String?,
      paymentType: json['paymentType'] as String?,
    );

Map<String, dynamic> _$BankTransferToJson(BankTransfer instance) =>
    <String, dynamic>{
      'date': instance.date,
      'amount': instance.amount,
      'transactionId1': instance.transactionId1,
      'euroNetRefNo': instance.euroNetRefNo,
      'mobile': instance.mobile,
      'rechargeMessage': instance.rechargeMessage,
      'transactionId': instance.transactionId,
      'status': instance.status,
      'paymentType': instance.paymentType,
    };
