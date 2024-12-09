// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteImageResponse _$DeleteImageResponseFromJson(Map<String, dynamic> json) =>
    DeleteImageResponse(
      state: json['data'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DeleteImageResponseToJson(
        DeleteImageResponse instance) =>
    <String, dynamic>{
      'data': instance.state,
      'status': instance.status,
    };
