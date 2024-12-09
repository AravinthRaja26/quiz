import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scan_coupon_response.model.g.dart';

///
@JsonSerializable()
class ScanCouponResponse with SerializableMixin {
  ///
  final ScanCouponData? data;

  ///
  final String? status;

  ///
  ScanCouponResponse({this.data, this.status});

  @override
  Map<String, dynamic> toJson() => _$ScanCouponResponseToJson(this);

  ///
  static ScanCouponResponse fromJson(Map<String, dynamic> json) =>
      _$ScanCouponResponseFromJson(json);
}

///
@JsonSerializable()
class ScanCouponData with SerializableMixin {
  ///
  final String? alertMessage;

  ///
  @JsonKey(name: 'error_message')
  final String? errorMessage;

  ///
  @JsonKey(name: 'Company')
  final String? company;

  ///
  @JsonKey(name: 'Message')
  String? message;

  ///
  String? companyLogo;

  ///
  int? scannedCount;

  ///
  bool? isRedemable;

  ///
  String? loyaltyMessage;

  ///
  int? usageCount;

  ///
  double? couponAmount;

  ///
  String? matrixMessage;

  ///
  String? authenticMessage;

  ///
  @JsonKey(name: 'Descrption')
  String? descrption;

  ///
  String? thanksMessage;

  ///
  @JsonKey(name: 'Balance')
  double? balance;

  ///
  String? messageTemplate;

  ///
  ScanCouponData(
    this.errorMessage, {
    this.alertMessage,
    this.company,
    this.message,
    this.companyLogo,
    this.scannedCount,
    this.isRedemable,
    this.loyaltyMessage,
    this.usageCount,
    this.matrixMessage,
    this.authenticMessage,
    this.descrption,
    this.couponAmount,
    this.thanksMessage,
    this.balance,
    this.messageTemplate,
  });

  @override
  Map<String, dynamic> toJson() => _$ScanCouponDataToJson(this);

  ///
  static ScanCouponData fromJson(Map<String, dynamic> json) =>
      _$ScanCouponDataFromJson(json);
}
