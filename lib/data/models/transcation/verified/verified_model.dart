import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'verified_model.g.dart';

///
@JsonSerializable()
class VerifiedResponse with SerializableMixin {
  ///
  final VerifiedData? data;

  ///
  final String? status;

  ///
  VerifiedResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$VerifiedResponseToJson(this);

  ///
  static VerifiedResponse fromJson(Map<String, dynamic> json) =>
      _$VerifiedResponseFromJson(json);
}

///
@JsonSerializable()
class VerifiedData with SerializableMixin {
  ///
  final int? count;
  ///
  List<VerifiedList>? list;
  ///
  VerifiedData(this.count,this.list);
  @override
  Map<String, dynamic> toJson() => _$VerifiedDataToJson(this);

  ///
  static VerifiedData fromJson(Map<String, dynamic> json) =>
      _$VerifiedDataFromJson(json);
}

///
@JsonSerializable()
class VerifiedList with SerializableMixin {
  ///
  String? scannedDate;
  ///
  String? couponCode;
  ///
  VerifiedList({
     this.scannedDate,
     this.couponCode,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$VerifiedListToJson(this);

  ///
  static VerifiedList fromJson(Map<String, dynamic> json) =>
      _$VerifiedListFromJson(json);
}
