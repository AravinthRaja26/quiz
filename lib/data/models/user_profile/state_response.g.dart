// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateResponse _$StateResponseFromJson(Map<String, dynamic> json) =>
    StateResponse(
      state: (json['data'] as List<dynamic>?)
          ?.map((e) => StatesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$StateResponseToJson(StateResponse instance) =>
    <String, dynamic>{
      'data': instance.state,
      'status': instance.status,
    };

StatesData _$StatesDataFromJson(Map<String, dynamic> json) => StatesData(
      stateCode: json['stateCode'],
      stateName: json['stateName'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatesDataToJson(StatesData instance) =>
    <String, dynamic>{
      'stateCode': instance.stateCode,
      'stateName': instance.stateName,
      'country': instance.country,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      countryCode: (json['countryCode'] as num?)?.toInt(),
      countryName: json['countryName'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
    };
