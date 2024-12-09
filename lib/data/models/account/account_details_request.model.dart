import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'account_details_request.model.g.dart';

///
@JsonSerializable()
class AccountDetailsRequest with SerializableMixin {
  ///
  String? keykjm;

  ///
  String? ifscCode;

  ///
  int? accId;

  ///
  String? accHolderName;

  ///
  String? accNo;

  ///
  String? branchName;

  ///
  String? bankName;

  ///
  AccountDetailsRequest({
    this.keykjm,
    this.ifscCode,
    this.accId,
    this.accHolderName,
    this.accNo,
    this.branchName,
    this.bankName,
  });
  @override
  Map<String, dynamic> toJson() => _$AccountDetailsRequestToJson(this);

  ///
  static AccountDetailsRequest fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsRequestFromJson(json);
}
