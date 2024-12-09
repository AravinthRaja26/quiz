// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_transaction.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumerTransactionResponse _$ConsumerTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    ConsumerTransactionResponse(
      data: json['data'] == null
          ? null
          : ConsumerTransactionData.fromJson(
              json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ConsumerTransactionResponseToJson(
        ConsumerTransactionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ConsumerTransactionData _$ConsumerTransactionDataFromJson(
        Map<String, dynamic> json) =>
    ConsumerTransactionData(
      (json['earned'] as List<dynamic>?)
          ?.map((e) => Earned.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['referral'] as List<dynamic>?)
          ?.map((e) => Referral.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['expired'] as List<dynamic>?)
          ?.map((e) => Expired.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['redeemed'] as List<dynamic>?)
          ?.map((e) => Redeemed.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['verified'] as List<dynamic>?)
          ?.map((e) => Verified.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..errorMessage = json['error_message'] as String?;

Map<String, dynamic> _$ConsumerTransactionDataToJson(
        ConsumerTransactionData instance) =>
    <String, dynamic>{
      'earned': instance.earned,
      'referral': instance.referral,
      'expired': instance.expired,
      'redeemed': instance.redeemed,
      'verified': instance.verified,
      'error_message': instance.errorMessage,
    };

Earned _$EarnedFromJson(Map<String, dynamic> json) => Earned(
      json['timeStamp'] as String?,
      (json['amount'] as num?)?.toDouble(),
      json['coupenCode'] as String?,
      json['couponType'] as String?,
      json['expiredDate'] as String?,
      json['type_desc'] as String?,
      json['transactionTime'] as String?,
      json['isExpired'] as bool?,
    );

Map<String, dynamic> _$EarnedToJson(Earned instance) => <String, dynamic>{
      'timeStamp': instance.timeStamp,
      'amount': instance.amount,
      'coupenCode': instance.coupenCode,
      'couponType': instance.couponType,
      'expiredDate': instance.expiredDate,
      'type_desc': instance.typeDesc,
      'transactionTime': instance.transactionTime,
      'isExpired': instance.isExpired,
    };

Referral _$ReferralFromJson(Map<String, dynamic> json) => Referral();

Map<String, dynamic> _$ReferralToJson(Referral instance) => <String, dynamic>{};

Expired _$ExpiredFromJson(Map<String, dynamic> json) => Expired(
      (json['expireAmount'] as num).toDouble(),
      json['expiryDate'] as String,
      json['timeStamp'] as String,
      json['accrualDate'] as String,
      (json['amount'] as num).toDouble(),
      json['coupenCode'] as String,
      json['companyName'] as String,
      json['type_desc'] as String,
    );

Map<String, dynamic> _$ExpiredToJson(Expired instance) => <String, dynamic>{
      'expireAmount': instance.expireAmount,
      'expiryDate': instance.expiryDate,
      'timeStamp': instance.timeStamp,
      'accrualDate': instance.accrualDate,
      'amount': instance.amount,
      'coupenCode': instance.coupenCode,
      'companyName': instance.companyName,
      'type_desc': instance.typeDesc,
    };

Redeemed _$RedeemedFromJson(Map<String, dynamic> json) => Redeemed(
      json['timeStamp'] as String?,
      json['transactionType'] as String?,
      (json['amount'] as num?)?.toDouble(),
      json['createdDate'] as String?,
      json['transactionStatus'] as String?,
      json['accNo'] as String?,
      json['benificiaryName'] as String?,
      json['uniqueRefNum'] as String?,
      json['reason'],
      json['type_desc'] as String?,
      json['paymentRef'] as String?,
    );

Map<String, dynamic> _$RedeemedToJson(Redeemed instance) => <String, dynamic>{
      'timeStamp': instance.timeStamp,
      'transactionType': instance.transactionType,
      'amount': instance.amount,
      'createdDate': instance.createdDate,
      'transactionStatus': instance.transactionStatus,
      'accNo': instance.accNo,
      'benificiaryName': instance.benificiaryName,
      'uniqueRefNum': instance.uniqueRefNum,
      'reason': instance.reason,
      'type_desc': instance.typeDesc,
      'paymentRef': instance.paymentRef,
    };

Verified _$VerifiedFromJson(Map<String, dynamic> json) => Verified(
      json['couponCode'] as String?,
      json['scannedDate'] as String?,
    );

Map<String, dynamic> _$VerifiedToJson(Verified instance) => <String, dynamic>{
      'scannedDate': instance.scannedDate,
      'couponCode': instance.couponCode,
    };
