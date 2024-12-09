// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_validate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionValidateResponse _$VersionValidateResponseFromJson(
        Map<String, dynamic> json) =>
    VersionValidateResponse(
      data: json['data'] == null
          ? null
          : Validation.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$VersionValidateResponseToJson(
        VersionValidateResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

Validation _$ValidationFromJson(Map<String, dynamic> json) => Validation(
      json['errorMessage'] as String?,
      appLink: json['appLink'] as String?,
      notificationCount: (json['notificationCount'] as num?)?.toInt(),
      isKyc: json['isKyc'] as bool?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      consumer: json['consumer'] == null
          ? null
          : ConsumerModel.fromJson(json['consumer'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$ValidationToJson(Validation instance) =>
    <String, dynamic>{
      'appLink': instance.appLink,
      'notificationCount': instance.notificationCount,
      'message': instance.message,
      'errorMessage': instance.errorMessage,
      'status': instance.status,
      'errorCode': instance.errorCode,
      'isKyc': instance.isKyc,
      'language': instance.language,
      'consumer': instance.consumer,
    };

ConsumerModel _$ConsumerModelFromJson(Map<String, dynamic> json) =>
    ConsumerModel(
      json['email'] as String?,
      json['firstName'] as String?,
      json['mobile'] as String?,
      json['key'] as String?,
      json['accBalance'],
      json['isbanktermsverified'] as bool?,
    );

Map<String, dynamic> _$ConsumerModelToJson(ConsumerModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'mobile': instance.mobile,
      'key': instance.key,
      'accBalance': instance.accBalance,
      'isbanktermsverified': instance.isBankTermsVerified,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      languageId: (json['languageId'] as num?)?.toInt(),
      languageName: json['languageName'] as String?,
      languageJson: json['languageJson'] as String?,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'languageId': instance.languageId,
      'languageName': instance.languageName,
      'languageJson': instance.languageJson,
    };
