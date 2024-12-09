import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_verification_response.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class OtpVerificationResponse with SerializableMixin {
  ///
  @JsonKey(name: 'data')
  final OtpVerification? otpVerification;

  ///
  final String? status;

  ///
  const OtpVerificationResponse(this.otpVerification, this.status);

  @override
  Map<String, dynamic> toJson() => _$OtpVerificationResponseToJson(this);

  ///
  static OtpVerificationResponse fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationResponseFromJson(json);
}

///
@JsonSerializable()
class OtpVerification with SerializableMixin {
  ///
  final bool? firstTimeLogin;

  ///
  final bool? referral;

  ///
  final String? referralKey;

  ///
  final String? message;

  ///
  final bool? isDealer;

  ///
  final String? key;

  ///
  final String? status;

  ///
  const OtpVerification(this.message, this.isDealer, this.status, this.key,
      this.referralKey, this.referral, this.firstTimeLogin);

  @override
  Map<String, dynamic> toJson() => _$OtpVerificationToJson(this);

  ///
  static OtpVerification fromJson(Map<String, dynamic> json) => _$OtpVerificationFromJson(json);
}
