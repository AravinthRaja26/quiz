import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auto_update_model.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class AutoUpdateModel with SerializableMixin {
  ///
  @JsonKey(name: 'data')
  final Version? version;

  ///
  const AutoUpdateModel({this.version});

  @override
  Map<String, dynamic> toJson() => _$AutoUpdateModelToJson(this);

  ///
  static AutoUpdateModel fromJson(Map<String, dynamic> json) =>
      _$AutoUpdateModelFromJson(json);
}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class Version with SerializableMixin {
  ///
  final String? versionCode;

  ///
  final String? versionName;

  ///
  final String? appLink;

  ///
  final String? messageVersion;

  ///
  final String? messageDownload;

  ///
  final String? messageInstall;

  ///
  final bool? isUpdate;

  ///
  const Version(
      {this.messageVersion,
      this.messageDownload,
      this.messageInstall,
      this.versionCode,
      this.versionName,
      this.appLink,
      this.isUpdate});

  @override
  Map<String, dynamic> toJson() => _$VersionToJson(this);

  ///
  static Version fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);
}
