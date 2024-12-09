// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUpdateBody _$ProfileUpdateBodyFromJson(Map<String, dynamic> json) =>
    ProfileUpdateBody(
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      city: json['city'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      area: json['area'] as String?,
      pincode: json['pincode'] as String?,
      pan: json['pan'] as String?,
      countryCode: (json['countryCode'] as num?)?.toInt(),
      state: (json['state'] as num?)?.toInt(),
      keykjm: json['keykjm'] as String?,
      documents: json['documents'] as List<dynamic>?,
    );

Map<String, dynamic> _$ProfileUpdateBodyToJson(ProfileUpdateBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'city': instance.city,
      'address1': instance.address1,
      'address2': instance.address2,
      'area': instance.area,
      'pincode': instance.pincode,
      'pan': instance.pan,
      'countryCode': instance.countryCode,
      'state': instance.state,
      'keykjm': instance.keykjm,
      'documents': instance.documents,
    };
