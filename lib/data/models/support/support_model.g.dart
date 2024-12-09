// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumerDetails _$ConsumerDetailsFromJson(Map<String, dynamic> json) =>
    ConsumerDetails(
      errorMessage: json['errorMessage'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ConsumerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ConsumerDetailsToJson(ConsumerDetails instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'errorMessage': instance.errorMessage,
    };

ConsumerData _$ConsumerDataFromJson(Map<String, dynamic> json) => ConsumerData(
      questionId: (json['questionId'] as num?)?.toInt(),
      consumerOptionOne: json['consumerOptionOne'] as String?,
      showForm: (json['showForm'] as num?)?.toInt(),
      consumerOption: json['consumerOption'] as String?,
      child: json['child'] as bool?,
      viewMore: json['viewMore'] as bool?,
    );

Map<String, dynamic> _$ConsumerDataToJson(ConsumerData instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'consumerOptionOne': instance.consumerOptionOne,
      'showForm': instance.showForm,
      'consumerOption': instance.consumerOption,
      'child': instance.child,
      'viewMore': instance.viewMore,
    };
