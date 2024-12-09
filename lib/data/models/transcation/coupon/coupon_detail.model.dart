import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'coupon_detail.model.g.dart';

///
@JsonSerializable()
class CouponDetail with SerializableMixin {
  ///
  final CouponDetailData? data;

  ///
  final String? status;

  ///
  CouponDetail({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$CouponDetailToJson(this);

  ///
  static CouponDetail fromJson(Map<String, dynamic> json) =>
      _$CouponDetailFromJson(json);
}

///
@JsonSerializable()
class CouponDetailData with SerializableMixin {
  ///
  double? basepoints;
  ///
  String? expiryDate;
  ///
  double? additionalPoints;
  ///
  double? amountEarned;
  ///
  String? QRcode;
  ///
  String? scanDate;
  ///
  CouponDetailData({
     this.basepoints,
     this.expiryDate,
     this.additionalPoints,
     this.amountEarned,
     this.QRcode,
     this.scanDate,
  });
  @override
  Map<String, dynamic> toJson() => _$CouponDetailDataToJson(this);

  ///
  static CouponDetailData fromJson(Map<String, dynamic> json) =>
      _$CouponDetailDataFromJson(json);
}

