

import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'delete_image_response.g.dart';
///
@JsonSerializable()
class DeleteImageResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
  final String? state;
  ///
  final String? status;

  ///
  const DeleteImageResponse({this.state, this.status});

  ///
  @override
  Map<String, dynamic> toJson() => _$DeleteImageResponseToJson(this);

  ///
  static DeleteImageResponse fromJson(Map<String, dynamic> json) =>
      _$DeleteImageResponseFromJson(json);
}