import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'otp_response.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class OtpResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
  final Otp? otp;
  ///
  final String? status;


  ///
  const OtpResponse({this.otp, this.status});
  @override
  Map<String, dynamic> toJson() =>_$OtpResponseToJson(this);

  ///
  static OtpResponse fromJson(Map<String,dynamic>json)=>_$OtpResponseFromJson(json);

}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class Otp with SerializableMixin {
  ///
  final String? message;

  ///
  final String? errorMessage;

  ///
  final String? errorCode;

  ///
  @JsonKey(name: 'mPin')
  final String? mPin;

  ///
  @JsonKey(name: 'countryCode')
  final String? countryCode;

  ///
  @JsonKey(name: 'alertMessage')
  final String? alertMessage;

  ///
  @JsonKey(name: 'isFirstTime')
  final bool? isFirstTime;

  ///
  const Otp(
      {this.message,
        this.errorMessage,
        this.errorCode,
        this.mPin,
        this.countryCode,
        this.alertMessage,
        this.isFirstTime});

  @override
  Map<String, dynamic> toJson() => _$OtpToJson(this);

  ///
  static Otp fromJson(Map<String, dynamic> json) => _$OtpFromJson(json);
}