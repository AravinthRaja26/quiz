// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) => CityResponse(
      state: (json['data'] as List<dynamic>?)
          ?.map((e) => CityData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$CityResponseToJson(CityResponse instance) =>
    <String, dynamic>{
      'data': instance.state,
      'status': instance.status,
    };

CityData _$CityDataFromJson(Map<String, dynamic> json) => CityData(
      cityCode: json['cityCode'],
      cityName: json['cityName'] as String?,
      states: json['states'] == null
          ? null
          : StatesData.fromJson(json['states'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityDataToJson(CityData instance) => <String, dynamic>{
      'cityCode': instance.cityCode,
      'cityName': instance.cityName,
      'states': instance.states,
    };
