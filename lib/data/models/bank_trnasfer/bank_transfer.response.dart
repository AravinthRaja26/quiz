import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_transfer.response.g.dart';

///
@JsonSerializable()
class BankTransferResponse with SerializableMixin {
  ///
  final BankTransfer? data;

  ///
  final String? status;

  ///
  BankTransferResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$BankTransferResponseToJson(this);

  ///
  static BankTransferResponse fromJson(Map<String, dynamic> json) =>
      _$BankTransferResponseFromJson(json);
}

///
@JsonSerializable()
class BankTransfer with SerializableMixin {
  ///
  final String? errorMessage;

  ///
  @JsonKey(name: 'error_message')
  final String? nepalErrorMessage;

  ///
  final String? errorCode;

  ///
  final String? message;
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
  @JsonKey(name: 'refNum')
  final String? refNum;


  ///
  BankTransfer({this.errorMessage,this.nepalErrorMessage, this.errorCode, this.message,this.refNum,this.senderName, this.receiverName, this.receiverMobile, this.senderMobile, this.points});
  @override
  Map<String, dynamic> toJson() => _$BankTransferToJson(this);

  ///
  static BankTransfer fromJson(Map<String, dynamic> json) =>
      _$BankTransferFromJson(json);
}
