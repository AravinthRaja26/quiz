import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'passbook_model.g.dart';

///
@JsonSerializable()
class PassbookResponse with SerializableMixin {
  ///
  final PassbookData? data;

  ///
  final String? status;

  ///
  PassbookResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$PassbookResponseToJson(this);

  ///
  static PassbookResponse fromJson(Map<String, dynamic> json) =>
      _$PassbookResponseFromJson(json);
}

///
@JsonSerializable()
class PassbookData with SerializableMixin {
  ///
  final int? count;
  ///
  List<PassbookList>? list;
  ///
  PassbookData(this.count,this.list);
  @override
  Map<String, dynamic> toJson() => _$PassbookDataToJson(this);

  ///
  static PassbookData fromJson(Map<String, dynamic> json) =>
      _$PassbookDataFromJson(json);
}

///
@JsonSerializable()
class PassbookList with SerializableMixin {
  ///
  String? transactionType;
  ///
  String? referenceNum;
  ///
  String? benificiaryName;
  ///
  dynamic reason;
  ///
  double? amount;
  ///
  String? transactionStatus;
  ///
  String? accNo;
  ///
  String? transactionTime;
  ///
  String? type;
  ///
  String? paymentRef;
  ///
  String? sendTo;
  ///
  String? sendMobile;
  ///
  String? couponCode;
  ///
  PassbookList({
     this.transactionType,
    this.referenceNum,
    this.benificiaryName,
    this.reason,
    this.amount,
    this.transactionStatus,
    this.accNo,
    this.transactionTime,
    this.type,
    this.paymentRef,
    this.sendTo,
    this.sendMobile,
    this.couponCode,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$PassbookListToJson(this);

  ///
  static PassbookList fromJson(Map<String, dynamic> json) =>
      _$PassbookListFromJson(json);
}
