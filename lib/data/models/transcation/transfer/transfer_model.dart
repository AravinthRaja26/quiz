import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'transfer_model.g.dart';

///
@JsonSerializable()
class TransferResponse with SerializableMixin {
  ///
  final TransferData? data;

  ///
  final String? status;

  ///
  TransferResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$TransferResponseToJson(this);

  ///
  static TransferResponse fromJson(Map<String, dynamic> json) =>
      _$TransferResponseFromJson(json);
}

///
@JsonSerializable()
class TransferData with SerializableMixin {
  ///
  final int? count;
  ///
  List<TransferList>? list;
  ///
  TransferData(this.count,this.list);
  @override
  Map<String, dynamic> toJson() => _$TransferDataToJson(this);

  ///
  static TransferData fromJson(Map<String, dynamic> json) =>
      _$TransferDataFromJson(json);
}

///
@JsonSerializable()
class TransferList with SerializableMixin {
  ///
  String? transactionType;
  ///
  String? referenceNum;
  ///
  String? receiverFrom;
  ///
  String? receiverMobile;
  ///
  String? couponCode;
  ///
  double? amount;
  ///
  String? sendTo;
  ///
  String? sendName;
  ///
  String? transactionTime;
  ///
  String? type;
  ///
  TransferList({
     this.transactionType,
     this.receiverFrom,
     this.receiverMobile,
     this.couponCode,
     this.referenceNum,
     this.amount,
     this.sendTo,
     this.sendName,
     this.transactionTime,
     this.type,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$TransferListToJson(this);

  ///
  static TransferList fromJson(Map<String, dynamic> json) =>
      _$TransferListFromJson(json);
}
