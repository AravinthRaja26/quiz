import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'version_validate.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class VersionValidateResponse with SerializableMixin {
  ///
  @JsonKey(name: 'data')
  final Validation? data;

  ///
  final String? status;

  ///
  const VersionValidateResponse({this.data, this.status});

  @override
  Map<String, dynamic> toJson() => _$VersionValidateResponseToJson(this);

  ///
  static VersionValidateResponse fromJson(Map<String, dynamic> json) =>
      _$VersionValidateResponseFromJson(json);
}

///
@JsonSerializable()
class Validation with SerializableMixin {

  ///
  final String? appLink;
  ///
  final int? notificationCount;
  ///
  final String? message;
  ///
  final String? errorMessage;
  ///
  final String? status;

  ///
  final String? errorCode;

  ///
  final bool? isKyc;

  ///
  final Language? language;

  ///

  final ConsumerModel? consumer;

  ///
  const Validation(this.errorMessage,
      {this.appLink, this.notificationCount, this.isKyc, this.language,this.consumer,this.message, this.status, this.errorCode});

  @override
  Map<String, dynamic> toJson() => _$ValidationToJson(this);

  ///
  static Validation fromJson(Map<String, dynamic> json) =>
      _$ValidationFromJson(json);
}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class ConsumerModel with SerializableMixin{
  ///
  final String? email;

  ///
  @JsonKey(name: 'firstName')
  final String? firstName;

  ///
  final String? mobile;

  ///
  final String? key;
  ///
  @JsonKey(name: 'accBalance')
  final dynamic accBalance;
  ///

  @JsonKey(name: 'isbanktermsverified')
  final bool? isBankTermsVerified;

  ///
  const ConsumerModel(this.email, this.firstName, this.mobile, this.key, this.accBalance, this.isBankTermsVerified);


  @override
  Map<String, dynamic> toJson() => _$ConsumerModelToJson(this);

  ///
  static ConsumerModel fromJson(Map<String, dynamic> json) =>
      _$ConsumerModelFromJson(json);

}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class Language with SerializableMixin {

  ///
  @JsonKey(name: 'languageId')
  final int? languageId;
  ///
  @JsonKey(name: 'languageName')
  final String? languageName;
  ///
  @JsonKey(name: 'languageJson')
  final String? languageJson;

  ///
  const Language({this.languageId,this.languageName, this.languageJson});

  @override
  Map<String, dynamic> toJson() => _$LanguageToJson(this);

  ///
  static Language fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}