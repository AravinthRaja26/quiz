// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_consumer_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumerByIdResponse _$ConsumerByIdResponseFromJson(
        Map<String, dynamic> json) =>
    ConsumerByIdResponse(
      consumerDetail: json['data'] == null
          ? null
          : ConsumerResponse.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ConsumerByIdResponseToJson(
        ConsumerByIdResponse instance) =>
    <String, dynamic>{
      'data': instance.consumerDetail,
      'status': instance.status,
    };

ConsumerResponse _$ConsumerResponseFromJson(Map<String, dynamic> json) =>
    ConsumerResponse(
      pincode: json['pincode'],
      empId: (json['empId'] as num?)?.toInt(),
      kycStatus: (json['kycStatus'] as num?)?.toInt(),
      comments: json['comments'] as String?,
      city: json['city'],
      address2: json['address2'] as String?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => DocumentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      address1: json['address1'] as String?,
      garageName: json['garageName'] as String?,
      mobile: json['mobile'] as String?,
      locality: json['locality'] as String?,
      active: (json['active'] as num?)?.toInt(),
      gstin: json['gstin'] as String?,
      firstName: json['firstName'] as String?,
      kycStatusName: json['kycStatusName'] as String?,
      cityName: json['cityName'] as String?,
      stateName: json['stateName'] as String?,
      adharNum: json['adharNum'] as String?,
      firmName: json['firmName'] as String?,
      state: json['state'],
      pan: json['pan'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ConsumerResponseToJson(ConsumerResponse instance) =>
    <String, dynamic>{
      'pincode': instance.pincode,
      'empId': instance.empId,
      'kycStatus': instance.kycStatus,
      'comments': instance.comments,
      'city': instance.city,
      'address2': instance.address2,
      'documents': instance.documents,
      'address1': instance.address1,
      'garageName': instance.garageName,
      'mobile': instance.mobile,
      'locality': instance.locality,
      'active': instance.active,
      'gstin': instance.gstin,
      'firstName': instance.firstName,
      'kycStatusName': instance.kycStatusName,
      'cityName': instance.cityName,
      'stateName': instance.stateName,
      'adharNum': instance.adharNum,
      'firmName': instance.firmName,
      'state': instance.state,
      'pan': instance.pan,
      'email': instance.email,
    };

DocumentDetail _$DocumentDetailFromJson(Map<String, dynamic> json) =>
    DocumentDetail(
      documentType: (json['documentType'] as num?)?.toInt(),
      documentId: (json['documentId'] as num?)?.toInt(),
      document: json['document'] as String?,
    );

Map<String, dynamic> _$DocumentDetailToJson(DocumentDetail instance) =>
    <String, dynamic>{
      'documentType': instance.documentType,
      'documentId': instance.documentId,
      'document': instance.document,
    };
