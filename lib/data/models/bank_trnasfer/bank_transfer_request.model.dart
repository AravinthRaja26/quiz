import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bank_transfer_request.model.g.dart';

///
@JsonSerializable()
class BankTransferRequest with SerializableMixin {
  ///
  String? keykjm;

  ///
  String? amount;

  ///
  String? otp;

  ///
  String? mobile;

  ///
  dynamic email;

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
  dynamic sim1Carriername;

  ///
  dynamic sim1CountryCode;

  ///
  dynamic sim1mcc;

  ///
  dynamic sim1mnc;

  ///
  dynamic sim1Serial;

  ///
  dynamic sim1Phone;

  ///
  dynamic sim1Imei;

  ///
  dynamic sim2Carriername;

  ///
  dynamic sim2CountryCode;

  ///
  dynamic sim2mcc;

  ///
  dynamic sim2mnc;

  ///
  dynamic sim2Serial;

  ///
  dynamic sim2Phone;

  ///
  dynamic sim2Imei;

  ///
  String? postalCode;

  ///
  String? administrativeArea;

  ///
  String? subAdministrativeArea;
  ///
  String? beneficiaryAccNo;
  ///
  String? beneficiaryBranchIfscCode;
  ///
  String? creditNarration;
  ///
  String? beneficiaryName;

  ///
  String? locality;

  ///
  String? subLocality;

  ///
  double? latitude;

  ///
  double? longitude;

  ///
  BankTransferRequest({
    this.keykjm,
    this.amount,
    this.otp,
    this.mobile,
    this.email,
    this.deviceMfgName,
    this.deviceOs,
    this.deviceOsVersion,
    this.dveiceModel,
    this.deviceuuid,
    this.sim1Carriername,
    this.sim1CountryCode,
    this.sim1Serial,
    this.sim1Phone,
    this.sim1Imei,
    this.sim2Carriername,
    this.sim2CountryCode,
    this.sim2Serial,
    this.sim2Phone,
    this.sim2Imei,
    this.postalCode,
    this.administrativeArea,
    this.subAdministrativeArea,
    this.locality,
    this.subLocality,
    this.latitude,
    this.longitude,
    this.sim1mcc,
    this.sim1mnc,
    this.sim2mnc,
    this.beneficiaryAccNo,
    this.beneficiaryBranchIfscCode,
    this.creditNarration,
    this.beneficiaryName,
    this.sim2mcc,
  });
  @override
  Map<String, dynamic> toJson() => _$BankTransferRequestToJson(this);

  ///
  static BankTransferRequest fromJson(Map<String, dynamic> json) =>
      _$BankTransferRequestFromJson(json);
}
