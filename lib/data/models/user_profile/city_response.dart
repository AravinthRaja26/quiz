

import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:nikitchem/data/models/user_profile/state_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'city_response.g.dart';

///
@JsonSerializable()
class CityResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
  final List<CityData>? state;
  ///
  final String? status;

  ///
  const CityResponse({this.state, this.status});

  ///
  @override
  Map<String, dynamic> toJson() => _$CityResponseToJson(this);

  ///
  static CityResponse fromJson(Map<String, dynamic> json) =>
      _$CityResponseFromJson(json);
}

///
@JsonSerializable()
class CityData with SerializableMixin{
  ///
  final dynamic cityCode;
  ///
  final String? cityName;
  ///
  final StatesData? states;

  ///
  const CityData({this.cityCode, this.cityName, this.states});

  ///
  @override
  Map<String, dynamic> toJson() => _$CityDataToJson(this);

  ///
  static CityData fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);
}