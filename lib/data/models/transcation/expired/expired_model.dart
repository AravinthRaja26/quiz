import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'expired_model.g.dart';

///
@JsonSerializable()
class ExpiredResponse with SerializableMixin {
  ///
  final ExpiredData? data;

  ///
  final String? status;

  ///
  ExpiredResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$ExpiredResponseToJson(this);

  ///
  static ExpiredResponse fromJson(Map<String, dynamic> json) =>
      _$ExpiredResponseFromJson(json);
}

///
@JsonSerializable()
class ExpiredData with SerializableMixin {
  ///
  final int? count;
  ///
  List<ExpiredList>? list;
  ///
  ExpiredData(this.count,this.list);
  @override
  Map<String, dynamic> toJson() => _$ExpiredDataToJson(this);

  ///
  static ExpiredData fromJson(Map<String, dynamic> json) =>
      _$ExpiredDataFromJson(json);
}

///
@JsonSerializable()
class ExpiredList with SerializableMixin {
  ///
  double? amount;
  ///
  String? expiredDate;
  ///
  String? couponCode;
  ///
  ExpiredList({
     this.amount,
     this.expiredDate,
     this.couponCode,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$ExpiredListToJson(this);

  ///
  static ExpiredList fromJson(Map<String, dynamic> json) =>
      _$ExpiredListFromJson(json);
}
