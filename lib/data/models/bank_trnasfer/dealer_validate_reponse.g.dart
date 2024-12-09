// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dealer_validate_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DealerResponse _$DealerResponseFromJson(Map<String, dynamic> json) =>
    DealerResponse(
      data: json['data'] == null
          ? null
          : Dealer.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DealerResponseToJson(DealerResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

Dealer _$DealerFromJson(Map<String, dynamic> json) => Dealer(
      errorMessage: json['error_message'] as String?,
      errorCode: json['error_code'] as String?,
      senderName: json['senderName'] as String?,
      receiverName: json['receiverName'] as String?,
      receiverMobile: json['receiverMobile'] as String?,
      senderMobile: json['senderMobile'] as String?,
      points: (json['points'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DealerToJson(Dealer instance) => <String, dynamic>{
      'senderName': instance.senderName,
      'receiverName': instance.receiverName,
      'receiverMobile': instance.receiverMobile,
      'senderMobile': instance.senderMobile,
      'points': instance.points,
      'error_message': instance.errorMessage,
      'error_code': instance.errorCode,
    };
