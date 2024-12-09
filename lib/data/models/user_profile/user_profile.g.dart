// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) =>
    UserProfileResponse(
      consumerDetail: json['data'] == null
          ? null
          : ConsumerDetail.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$UserProfileResponseToJson(
        UserProfileResponse instance) =>
    <String, dynamic>{
      'data': instance.consumerDetail,
      'status': instance.status,
    };

ConsumerDetail _$ConsumerDetailFromJson(Map<String, dynamic> json) =>
    ConsumerDetail(
      json['Message'] as String?,
      json['consumer'] == null
          ? null
          : Consumer.fromJson(json['consumer'] as Map<String, dynamic>),
      json['error_message'] as String?,
    );

Map<String, dynamic> _$ConsumerDetailToJson(ConsumerDetail instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'error_message': instance.errorMessage,
      'consumer': instance.consumer,
    };

Consumer _$ConsumerFromJson(Map<String, dynamic> json) => Consumer(
      json['email'] as String?,
      json['firstName'] as String?,
      json['mobile'] as String?,
      json['key'] as String?,
    );

Map<String, dynamic> _$ConsumerToJson(Consumer instance) => <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'mobile': instance.mobile,
      'key': instance.key,
    };
