import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_profile.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class UserProfileResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
  final ConsumerDetail? consumerDetail;
  ///
  final String? status;

  ///
  const UserProfileResponse({this.consumerDetail, this.status});

  @override
  Map<String, dynamic> toJson() => _$UserProfileResponseToJson(this);

  ///
  static UserProfileResponse fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
  }


///
@JsonSerializable(fieldRename: FieldRename.snake)
class ConsumerDetail with SerializableMixin{
  ///
  @JsonKey(name: 'Message')
  final String? message;

  @JsonKey(name: 'error_message')
  final String? errorMessage;

  ///
  final Consumer? consumer;

  ///
  const ConsumerDetail(this.message, this.consumer,this.errorMessage);


  @override
  Map<String, dynamic> toJson() => _$ConsumerDetailToJson(this);

  ///
  static ConsumerDetail fromJson(Map<String, dynamic> json) =>
      _$ConsumerDetailFromJson(json);
}

///
@JsonSerializable()
class Consumer with SerializableMixin {
  ///
  final String? email;

  ///
  final String? firstName;

  ///
  final String? mobile;

  ///
  final String? key;

  ///
  const Consumer(this.email, this.firstName, this.mobile, this.key);

  @override
  Map<String, dynamic> toJson() => _$ConsumerToJson(this);

  ///
  static Consumer fromJson(Map<String, dynamic> json) =>
      _$ConsumerFromJson(json);
}
