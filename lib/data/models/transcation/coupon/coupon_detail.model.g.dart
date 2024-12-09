// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponDetail _$CouponDetailFromJson(Map<String, dynamic> json) => CouponDetail(
      data: json['data'] == null
          ? null
          : CouponDetailData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$CouponDetailToJson(CouponDetail instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

CouponDetailData _$CouponDetailDataFromJson(Map<String, dynamic> json) =>
    CouponDetailData(
      basepoints: (json['basepoints'] as num?)?.toDouble(),
      expiryDate: json['expiryDate'] as String?,
      additionalPoints: (json['additionalPoints'] as num?)?.toDouble(),
      amountEarned: (json['amountEarned'] as num?)?.toDouble(),
      QRcode: json['QRcode'] as String?,
      scanDate: json['scanDate'] as String?,
    );

Map<String, dynamic> _$CouponDetailDataToJson(CouponDetailData instance) =>
    <String, dynamic>{
      'basepoints': instance.basepoints,
      'expiryDate': instance.expiryDate,
      'additionalPoints': instance.additionalPoints,
      'amountEarned': instance.amountEarned,
      'QRcode': instance.QRcode,
      'scanDate': instance.scanDate,
    };
