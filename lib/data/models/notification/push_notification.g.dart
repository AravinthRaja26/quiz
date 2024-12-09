// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationResponse _$PushNotificationResponseFromJson(
        Map<String, dynamic> json) =>
    PushNotificationResponse(
      message: json['message'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PushNotificationResponseToJson(
        PushNotificationResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
    };
