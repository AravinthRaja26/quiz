import 'package:json_annotation/json_annotation.dart';
import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:nikitchem/data/models/login/otp_response.dart';
part 'rest_m_pin_response.g.dart';
///
@JsonSerializable(fieldRename: FieldRename.snake)
class RestMPinResponse with SerializableMixin {
  ///
  @JsonKey(name: 'data')
  final RestMPinData? restMPinData;

  ///
  final String? status;

  ///
  const RestMPinResponse({this.restMPinData, this.status});

  @override
  Map<String, dynamic> toJson() => _$RestMPinResponseToJson(this);

  ///
  static RestMPinResponse fromJson(Map<String, dynamic> json) =>
      _$RestMPinResponseFromJson(json);
}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class RestMPinData with SerializableMixin {
  ///
  final String? phone;

  ///
  @JsonKey(name: 'fax')
  final String? whatsappNumber;

  ///
  final String? message;

  ///
  const RestMPinData({this.phone, this.whatsappNumber, this.message});

  @override
  Map<String, dynamic> toJson() => _$RestMPinDataToJson(this);

  ///
  static RestMPinData fromJson(Map<String, dynamic> json) =>
      _$RestMPinDataFromJson(json);
}
