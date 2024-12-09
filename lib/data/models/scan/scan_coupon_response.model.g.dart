// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_coupon_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanCouponResponse _$ScanCouponResponseFromJson(Map<String, dynamic> json) =>
    ScanCouponResponse(
      data: json['data'] == null
          ? null
          : ScanCouponData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ScanCouponResponseToJson(ScanCouponResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ScanCouponData _$ScanCouponDataFromJson(Map<String, dynamic> json) =>
    ScanCouponData(
      json['error_message'] as String?,
      alertMessage: json['alertMessage'] as String?,
      company: json['Company'] as String?,
      message: json['Message'] as String?,
      companyLogo: json['companyLogo'] as String?,
      scannedCount: (json['scannedCount'] as num?)?.toInt(),
      isRedemable: json['isRedemable'] as bool?,
      loyaltyMessage: json['loyaltyMessage'] as String?,
      usageCount: (json['usageCount'] as num?)?.toInt(),
      matrixMessage: json['matrixMessage'] as String?,
      authenticMessage: json['authenticMessage'] as String?,
      descrption: json['Descrption'] as String?,
      couponAmount: (json['couponAmount'] as num?)?.toDouble(),
      thanksMessage: json['thanksMessage'] as String?,
      balance: (json['Balance'] as num?)?.toDouble(),
      messageTemplate: json['messageTemplate'] as String?,
    );

Map<String, dynamic> _$ScanCouponDataToJson(ScanCouponData instance) =>
    <String, dynamic>{
      'alertMessage': instance.alertMessage,
      'error_message': instance.errorMessage,
      'Company': instance.company,
      'Message': instance.message,
      'companyLogo': instance.companyLogo,
      'scannedCount': instance.scannedCount,
      'isRedemable': instance.isRedemable,
      'loyaltyMessage': instance.loyaltyMessage,
      'usageCount': instance.usageCount,
      'couponAmount': instance.couponAmount,
      'matrixMessage': instance.matrixMessage,
      'authenticMessage': instance.authenticMessage,
      'Descrption': instance.descrption,
      'thanksMessage': instance.thanksMessage,
      'Balance': instance.balance,
      'messageTemplate': instance.messageTemplate,
    };
