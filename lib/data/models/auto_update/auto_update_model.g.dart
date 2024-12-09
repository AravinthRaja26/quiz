// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoUpdateModel _$AutoUpdateModelFromJson(Map<String, dynamic> json) =>
    AutoUpdateModel(
      version: json['data'] == null
          ? null
          : Version.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AutoUpdateModelToJson(AutoUpdateModel instance) =>
    <String, dynamic>{
      'data': instance.version,
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      messageVersion: json['message_version'] as String?,
      messageDownload: json['message_download'] as String?,
      messageInstall: json['message_install'] as String?,
      versionCode: json['version_code'] as String?,
      versionName: json['version_name'] as String?,
      appLink: json['app_link'] as String?,
      isUpdate: json['is_update'] as bool?,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'version_code': instance.versionCode,
      'version_name': instance.versionName,
      'app_link': instance.appLink,
      'message_version': instance.messageVersion,
      'message_download': instance.messageDownload,
      'message_install': instance.messageInstall,
      'is_update': instance.isUpdate,
    };
