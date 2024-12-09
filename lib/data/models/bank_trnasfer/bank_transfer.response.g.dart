// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_transfer.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankTransferResponse _$BankTransferResponseFromJson(
        Map<String, dynamic> json) =>
    BankTransferResponse(
      data: json['data'] == null
          ? null
          : BankTransfer.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$BankTransferResponseToJson(
        BankTransferResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

BankTransfer _$BankTransferFromJson(Map<String, dynamic> json) => BankTransfer(
      errorMessage: json['errorMessage'] as String?,
      nepalErrorMessage: json['error_message'] as String?,
      errorCode: json['errorCode'] as String?,
      message: json['message'] as String?,
      refNum: json['refNum'] as String?,
      senderName: json['senderName'] as String?,
      receiverName: json['receiverName'] as String?,
      receiverMobile: json['receiverMobile'] as String?,
      senderMobile: json['senderMobile'] as String?,
      points: (json['points'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BankTransferToJson(BankTransfer instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'error_message': instance.nepalErrorMessage,
      'errorCode': instance.errorCode,
      'message': instance.message,
      'senderName': instance.senderName,
      'receiverName': instance.receiverName,
      'receiverMobile': instance.receiverMobile,
      'senderMobile': instance.senderMobile,
      'points': instance.points,
      'refNum': instance.refNum,
    };
