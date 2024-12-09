import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'account_details_response.model.g.dart';

///
@JsonSerializable()
class AccountDetailsResponse with SerializableMixin {
  ///
  final AccountDetailsData? data;

  ///
  final String? status;

  ///
  AccountDetailsResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$AccountDetailsResponseToJson(this);

  ///
  static AccountDetailsResponse fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsResponseFromJson(json);
}

///
@JsonSerializable()
class AccountDetailsData with SerializableMixin {
  ///
  List<AccountDetail>? accountDetails;

  ///
  @JsonKey(name: 'error_message')
  String? errorMessage;

  ///
  @JsonKey(name:'Message')
  String? message;

  ///
  AccountDetailsData(
    this.accountDetails,
  );
  @override
  Map<String, dynamic> toJson() => _$AccountDetailsDataToJson(this);

  ///
  static AccountDetailsData fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsDataFromJson(json);
}

///
@JsonSerializable()
class AccountDetail with SerializableMixin {
  ///
  String? accNo;

  ///
  String? accHolderName;

  ///
  int? accId;

  ///
  String? branchName;

  ///
  String? bankName;

  ///
  String? ifscCode;

  ///
  int? benificiaryStatus;

  ///
  AccountDetail(
    this.accNo,
    this.accHolderName,
    this.accId,
    this.branchName,
    this.bankName,
    this.ifscCode,
    this.benificiaryStatus,
  );
  @override
  Map<String, dynamic> toJson() => _$AccountDetailToJson(this);

  ///
  static AccountDetail fromJson(Map<String, dynamic> json) =>
      _$AccountDetailFromJson(json);
}
