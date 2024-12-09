// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageListResponse _$LanguageListResponseFromJson(
        Map<String, dynamic> json) =>
    LanguageListResponse(
      languageList: (json['data'] as List<dynamic>?)
          ?.map((e) => LanguageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageListResponseToJson(
        LanguageListResponse instance) =>
    <String, dynamic>{
      'data': instance.languageList,
    };

LanguageItem _$LanguageItemFromJson(Map<String, dynamic> json) => LanguageItem(
      languageId: (json['language_id'] as num?)?.toInt(),
      languageName: json['language_name'] as String?,
      subTitle: json['sub_title'] as String?,
      languageCode: json['language_code'] as String?,
      status: json['status'] as String?,
      sortOrder: json['sort_order'] as String?,
    );

Map<String, dynamic> _$LanguageItemToJson(LanguageItem instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'language_name': instance.languageName,
      'sub_title': instance.subTitle,
      'language_code': instance.languageCode,
      'status': instance.status,
      'sort_order': instance.sortOrder,
    };
