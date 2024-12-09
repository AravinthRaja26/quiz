import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ifsc_reponse.g.dart';

///
@JsonSerializable()
class IfscResponse with SerializableMixin {
  ///
  @JsonKey(name: 'MICR')
  final String? micr;

  ///
  @JsonKey(name: 'BRANCH')
  final String? branch;

  ///
  @JsonKey(name: 'ADDRESS')
  final String? address;

  ///
  @JsonKey(name: 'STATE')
  final String? state;

  ///
  @JsonKey(name: 'CONTACT')
  final String? contact;

  ///
  @JsonKey(name: 'UPI')
  final bool? upi;

  ///
  @JsonKey(name: 'RTGS')
  final bool? rtgs;

  ///
  @JsonKey(name: 'CITY')
  final String? city;

  ///
  @JsonKey(name: 'CENTRE')
  final String? center;

  ///
  @JsonKey(name: 'DISTRICT')
  final String? district;

  ///

  @JsonKey(name: 'NEFT')
  final bool? neft;

  ///
  @JsonKey(name: 'IMPS')
  final bool? imps;

  ///
  @JsonKey(name: 'SWIFT')
  dynamic swift;

  ///
  @JsonKey(name: 'ISO3166')
  final String? iso3166;

  ///
  @JsonKey(name: 'BANK')
  final String? bank;

  ///
  @JsonKey(name: 'BANKCODE')
  final String? bankCode;

  ///
  @JsonKey(name: 'IFSC')
  final String? ifsc;

  ///
  IfscResponse(
      {this.micr,
      this.branch,
      this.address,
      this.state,
      this.contact,
      this.upi,
      this.rtgs,
      this.city,
      this.center,
      this.district,
      this.neft,
      this.imps,
      this.iso3166,
      this.bank,
      this.bankCode,
      this.ifsc});

  @override
  Map<String, dynamic> toJson() => _$IfscResponseToJson(this);

  ///
  static IfscResponse fromJson(Map<String, dynamic> json) =>
      _$IfscResponseFromJson(json);
}
