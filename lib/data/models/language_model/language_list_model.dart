


import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'language_list_model.g.dart';

///
@JsonSerializable()
class LanguageListResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
 final List<LanguageItem>? languageList;
 ///
 LanguageListResponse({this.languageList});

  @override
  Map<String, dynamic> toJson() => _$LanguageListResponseToJson(this);


 ///
 static LanguageListResponse fromJson(Map<String,dynamic>json)=>_$LanguageListResponseFromJson(json);

}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class LanguageItem with SerializableMixin{

  ///
  final int? languageId;
  ///
  final String? languageName;
  ///
  final String? subTitle;
  ///
  final String? languageCode;
  ///
  final String? status;
  ///
  final String? sortOrder;

  ///
  const LanguageItem(
      {this.languageId,
      this.languageName,
      this.subTitle,
      this.languageCode,
      this.status,
      this.sortOrder});

  @override
  Map<String, dynamic> toJson() => _$LanguageItemToJson(this);


  ///
  static LanguageItem fromJson(Map<String,dynamic>json)=>_$LanguageItemFromJson(json);
}