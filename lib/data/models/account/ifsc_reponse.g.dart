// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ifsc_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IfscResponse _$IfscResponseFromJson(Map<String, dynamic> json) => IfscResponse(
      micr: json['MICR'] as String?,
      branch: json['BRANCH'] as String?,
      address: json['ADDRESS'] as String?,
      state: json['STATE'] as String?,
      contact: json['CONTACT'] as String?,
      upi: json['UPI'] as bool?,
      rtgs: json['RTGS'] as bool?,
      city: json['CITY'] as String?,
      center: json['CENTRE'] as String?,
      district: json['DISTRICT'] as String?,
      neft: json['NEFT'] as bool?,
      imps: json['IMPS'] as bool?,
      iso3166: json['ISO3166'] as String?,
      bank: json['BANK'] as String?,
      bankCode: json['BANKCODE'] as String?,
      ifsc: json['IFSC'] as String?,
    )..swift = json['SWIFT'];

Map<String, dynamic> _$IfscResponseToJson(IfscResponse instance) =>
    <String, dynamic>{
      'MICR': instance.micr,
      'BRANCH': instance.branch,
      'ADDRESS': instance.address,
      'STATE': instance.state,
      'CONTACT': instance.contact,
      'UPI': instance.upi,
      'RTGS': instance.rtgs,
      'CITY': instance.city,
      'CENTRE': instance.center,
      'DISTRICT': instance.district,
      'NEFT': instance.neft,
      'IMPS': instance.imps,
      'SWIFT': instance.swift,
      'ISO3166': instance.iso3166,
      'BANK': instance.bank,
      'BANKCODE': instance.bankCode,
      'IFSC': instance.ifsc,
    };
