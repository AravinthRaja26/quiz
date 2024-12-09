

import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'dealer_validate_reponse.g.dart';

///
@JsonSerializable()
class DealerResponse with SerializableMixin {
  ///
  final Dealer? data;

  ///
  final String? status;

  ///
  DealerResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$DealerResponseToJson(this);

  ///
  static DealerResponse fromJson(Map<String, dynamic> json) =>
      _$DealerResponseFromJson(json);
}

///
@JsonSerializable()
class Dealer with SerializableMixin {
  ///
  final String? senderName;

  ///
  final String? receiverName;

  ///
  final String? receiverMobile;

  ///
  final String? senderMobile;
  ///
  final double? points;

  ///
  @JsonKey(name: 'error_message')
  final String? errorMessage;

  ///
  @JsonKey(name: 'error_code')
  final String? errorCode;


  ///
  Dealer({this.errorMessage, this.errorCode, this.senderName, this.receiverName, this.receiverMobile, this.senderMobile, this.points});
  @override
  Map<String, dynamic> toJson() => _$DealerToJson(this);

  ///
  static Dealer fromJson(Map<String, dynamic> json) =>
      _$DealerFromJson(json);
}