import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'delete_account.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class DeleteAccountResponse with SerializableMixin {
  ///
  final Data? data;

  ///
  final String? status;

  ///
  const DeleteAccountResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$DeleteAccountResponseToJson(this);

  ///
  static DeleteAccountResponse fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountResponseFromJson(json);
}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class Data with SerializableMixin {
  ///
  final String? Message;

  ///
  const Data({
    this.Message,
  });

  @override
  Map<String, dynamic> toJson() => _$DataToJson(this);

  ///
  static Data fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
