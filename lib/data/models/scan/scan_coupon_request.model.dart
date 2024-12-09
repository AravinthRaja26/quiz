import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scan_coupon_request.model.g.dart';

///
@JsonSerializable()
class ScanCouponRequest with SerializableMixin {
  ///
  String? deviceMfgName;

  ///
  String? deviceOs;

  ///
  String? deviceOsVersion;
  ///
  String? dveiceModel;
  ///
  String? deviceuuid;
  ///
  String? sim1Carriername;
  ///
  String? sim1CountryCode;
  ///
  String? sim1mcc;
  ///
  String? sim1mnc;
  ///
  String? sim1Serial;
  ///
  String? sim1Phone;
  ///
  String? sim1Imei;
  ///
  String? sim2Carriername;
  ///
  String? sim2CountryCode;
  ///
  String? sim2mcc;
  ///
  String? sim2mnc;
  ///
  String? sim2Serial;
  ///
  String? sim2Phone;
  ///
  String? sim2Imei;
  ///
  String? postalCode;
  ///
  String? administrativeArea;
  ///
  String? subAdministrativeArea;

  ///
  String? locality;

  ///
  String? keykjm;

  ///
  String? couponCode;

  ///
  String? platForm;

  ///
  String? latitude;

  ///
  String? longitude;

  ///
  ScanCouponRequest({
    this.deviceMfgName,
    this.deviceOs,
    this.deviceOsVersion,
    this.dveiceModel,
    this.deviceuuid,
    this.sim1Carriername,
    this.sim1CountryCode,
    this.sim1mcc,
    this.sim1mnc,
    this.sim1Serial,
    this.sim1Phone,
    this.sim1Imei,
    this.sim2Carriername,
    this.sim2CountryCode,
    this.sim2mcc,
    this.sim2mnc,
    this.sim2Serial,
    this.sim2Phone,
    this.sim2Imei,
    this.postalCode,
    this.administrativeArea,
    this.subAdministrativeArea,
    this.locality,
    this.keykjm,
    this.couponCode,
    this.platForm,
    this.latitude,
    this.longitude,
  });

  @override
  Map<String, dynamic> toJson() => _$ScanCouponRequestToJson(this);

  ///
  static ScanCouponRequest fromJson(Map<String, dynamic> json) =>
      _$ScanCouponRequestFromJson(json);
}
