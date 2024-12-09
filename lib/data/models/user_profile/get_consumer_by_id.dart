

import 'package:json_annotation/json_annotation.dart';
import 'package:nikitchem/data/mixin/serializable.mixin.dart';

part 'get_consumer_by_id.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class ConsumerByIdResponse with SerializableMixin{
  ///
  @JsonKey(name: 'data')
  final ConsumerResponse? consumerDetail;
  ///
  final String? status;

  ///
  const ConsumerByIdResponse({this.consumerDetail, this.status});

  @override
  Map<String, dynamic> toJson() => _$ConsumerByIdResponseToJson(this);

  ///
  static ConsumerByIdResponse fromJson(Map<String, dynamic> json) =>
      _$ConsumerByIdResponseFromJson(json);
}

///
@JsonSerializable()
class ConsumerResponse with SerializableMixin{

  ///
  final dynamic pincode;
  ///
  final int? empId;
  ///
  final int? kycStatus;
  ///
  final String? comments;
  ///
  final dynamic city;
  ///
  final String? address2;
  ///
  final List<DocumentDetail>? documents;
  ///
  final String? address1;
  ///
  final String? garageName;
  ///
  final String? mobile;
  ///
  final String? locality;
  ///
  final int? active;
  ///
  final String? gstin;
  ///
  final String? firstName;
  ///
  final String? kycStatusName;
  ///
  final String? cityName;
  ///
  final String? stateName;
  ///
  final String? adharNum;
  ///
  final String? firmName;
  ///
  final dynamic state;
  ///
  final String? pan;
  ///
  final String? email;


  ///
  const ConsumerResponse({this.pincode, this.empId, this.kycStatus, this.comments, this.city, this.address2, this.documents, this.address1, this.garageName, this.mobile, this.locality, this.active, this.gstin, this.firstName, this.kycStatusName, this.cityName, this.stateName, this.adharNum, this.firmName, this.state, this.pan, this.email});

  @override
  Map<String, dynamic> toJson() => _$ConsumerResponseToJson(this);

  ///
  static ConsumerResponse fromJson(Map<String, dynamic> json) =>
      _$ConsumerResponseFromJson(json);
}


///
@JsonSerializable()
class DocumentDetail with SerializableMixin{
  ///

  final int? documentType;

  ///
  final int? documentId;
  ///
  final String? document;

  ///
  const DocumentDetail({this.documentType, this.documentId, this.document});

  @override
  Map<String, dynamic> toJson() => _$DocumentDetailToJson(this);

  ///
  static DocumentDetail fromJson(Map<String, dynamic> json) =>
      _$DocumentDetailFromJson(json);
}



