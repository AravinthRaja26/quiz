import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'earned_model.g.dart';

///
@JsonSerializable()
class EarnedResponse with SerializableMixin {
  ///
  final EarnedData? data;

  ///
  final String? status;

  ///
  EarnedResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$EarnedResponseToJson(this);

  ///
  static EarnedResponse fromJson(Map<String, dynamic> json) =>
      _$EarnedResponseFromJson(json);
}

///
@JsonSerializable()
class EarnedData with SerializableMixin {
  ///
  final int? count;
  ///
  List<EarnedList>? list;
  ///
  EarnedData(this.count,this.list);
  @override
  Map<String, dynamic> toJson() => _$EarnedDataToJson(this);

  ///
  static EarnedData fromJson(Map<String, dynamic> json) =>
      _$EarnedDataFromJson(json);
}

///
@JsonSerializable()
class EarnedList with SerializableMixin {
  ///
  String? timeStamp;
  ///
  double? amount;
  ///
  String? coupenCode;
  ///
  String? couponType;
  ///
  String? expiredDate;
  ///
  @JsonKey(name: 'type_desc')
  String? typeDesc;
  ///
  String? transactionTime;
  ///
  bool? isExpired;
  ///
  EarnedList({
     this.timeStamp,
     this.amount,
     this.coupenCode,
     this.couponType,
     this.expiredDate,
     this.typeDesc,
     this.transactionTime,
     this.isExpired,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$EarnedListToJson(this);

  ///
  static EarnedList fromJson(Map<String, dynamic> json) =>
      _$EarnedListFromJson(json);
}
