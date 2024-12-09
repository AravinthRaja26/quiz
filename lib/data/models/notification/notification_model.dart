import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'notification_model.g.dart';

///
@JsonSerializable()
class NotificationResponse with SerializableMixin {
  ///
  final NotificationData? data;

  ///
  final String? status;

  ///
  NotificationResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$NotificationResponseToJson(this);

  ///
  static NotificationResponse fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}

///
@JsonSerializable()
class NotificationData with SerializableMixin {
  ///
  ///

  List<BankTransfer>? bankTransfer;

  ///
  @JsonKey(name: 'error_message')
  String? errorMessage;

  ///
  NotificationData(this.bankTransfer,this.errorMessage);
  @override
  Map<String, dynamic> toJson() => _$NotificationDataToJson(this);

  ///
  static NotificationData fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

///
@JsonSerializable()
class BankTransfer with SerializableMixin {
  ///
  String? date;

  ///
  double? amount;

  ///
  String? transactionId1;

  ///
  String? euroNetRefNo;

  ///
  String? mobile;

  ///
  String? rechargeMessage;

  ///
  String? transactionId;

  ///
  String? status;

  ///
  String? paymentType;

  ///
  BankTransfer({
    this.date,
    this.amount,
    this.transactionId1,
    this.euroNetRefNo,
    this.mobile,
    this.rechargeMessage,
    this.transactionId,
    this.status,
    this.paymentType,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$BankTransferToJson(this);

  ///
  static BankTransfer fromJson(Map<String, dynamic> json) =>
      _$BankTransferFromJson(json);
}
