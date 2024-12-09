import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'support_model.g.dart';

///
@JsonSerializable()

///
class ConsumerDetails with SerializableMixin {
  ///
  List<ConsumerData>? data;

  ///
  String? status;

  ///
  final String? errorMessage;

  ///
  ConsumerDetails({
    this.errorMessage,
    this.data,
    this.status,}
 );
  @override

  ///
  Map<String, dynamic> toJson() => _$ConsumerDetailsToJson(this);

  ///
  static ConsumerDetails fromJson(Map<String, dynamic> json) =>
      _$ConsumerDetailsFromJson(json);
}

///
@JsonSerializable()

///
class ConsumerData with SerializableMixin {
  ///
  int? questionId;

  ///
  String? consumerOptionOne;

  ///
  int? showForm;

  ///
  String? consumerOption;

  ///
  bool? child;
  ///
  bool? viewMore;

  ///
  ConsumerData({
    this.questionId,
    this.consumerOptionOne,
    this.showForm,
    this.consumerOption,
    this.child,
    this.viewMore,
  }){viewMore = false;}
  @override

  ///
  Map<String, dynamic> toJson() => _$ConsumerDataToJson(this);

  ///
  static ConsumerData fromJson(Map<String, dynamic> json) =>
      _$ConsumerDataFromJson(json);
}
