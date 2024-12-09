

import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'state_response.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class StateResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
  final List<StatesData>? state;
  ///
  final String? status;

  ///
  const StateResponse({this.state, this.status});

  ///
  @override
  Map<String, dynamic> toJson() => _$StateResponseToJson(this);

  ///
  static StateResponse fromJson(Map<String, dynamic> json) =>
      _$StateResponseFromJson(json);
}


///
@JsonSerializable()
class StatesData with SerializableMixin{

  ///
  final dynamic stateCode;
  ///
  final String? stateName;
  ///
  final Country? country;

  ///
  const StatesData({this.stateCode, this.stateName, this.country});

  @override
  Map<String, dynamic> toJson() => _$StatesDataToJson(this);

  ///
  static StatesData fromJson(Map<String, dynamic> json) =>
      _$StatesDataFromJson(json);
}///
@JsonSerializable()
class Country with SerializableMixin{

  ///
  final int? countryCode;
  ///
  final String? countryName;

  ///
  const Country({this.countryCode, this.countryName});

  @override
  Map<String, dynamic> toJson() => _$CountryToJson(this);

  ///
  static Country fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

