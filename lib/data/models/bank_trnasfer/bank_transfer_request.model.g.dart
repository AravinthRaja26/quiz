// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_transfer_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankTransferRequest _$BankTransferRequestFromJson(Map<String, dynamic> json) =>
    BankTransferRequest(
      keykjm: json['keykjm'] as String?,
      amount: json['amount'] as String?,
      otp: json['otp'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'],
      deviceMfgName: json['deviceMfgName'] as String?,
      deviceOs: json['deviceOs'] as String?,
      deviceOsVersion: json['deviceOsVersion'] as String?,
      dveiceModel: json['dveiceModel'] as String?,
      deviceuuid: json['deviceuuid'] as String?,
      sim1Carriername: json['sim1Carriername'],
      sim1CountryCode: json['sim1CountryCode'],
      sim1Serial: json['sim1Serial'],
      sim1Phone: json['sim1Phone'],
      sim1Imei: json['sim1Imei'],
      sim2Carriername: json['sim2Carriername'],
      sim2CountryCode: json['sim2CountryCode'],
      sim2Serial: json['sim2Serial'],
      sim2Phone: json['sim2Phone'],
      sim2Imei: json['sim2Imei'],
      postalCode: json['postalCode'] as String?,
      administrativeArea: json['administrativeArea'] as String?,
      subAdministrativeArea: json['subAdministrativeArea'] as String?,
      locality: json['locality'] as String?,
      subLocality: json['subLocality'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      sim1mcc: json['sim1mcc'],
      sim1mnc: json['sim1mnc'],
      sim2mnc: json['sim2mnc'],
      beneficiaryAccNo: json['beneficiaryAccNo'] as String?,
      beneficiaryBranchIfscCode: json['beneficiaryBranchIfscCode'] as String?,
      creditNarration: json['creditNarration'] as String?,
      beneficiaryName: json['beneficiaryName'] as String?,
      sim2mcc: json['sim2mcc'],
    );

Map<String, dynamic> _$BankTransferRequestToJson(
        BankTransferRequest instance) =>
    <String, dynamic>{
      'keykjm': instance.keykjm,
      'amount': instance.amount,
      'otp': instance.otp,
      'mobile': instance.mobile,
      'email': instance.email,
      'deviceMfgName': instance.deviceMfgName,
      'deviceOs': instance.deviceOs,
      'deviceOsVersion': instance.deviceOsVersion,
      'dveiceModel': instance.dveiceModel,
      'deviceuuid': instance.deviceuuid,
      'sim1Carriername': instance.sim1Carriername,
      'sim1CountryCode': instance.sim1CountryCode,
      'sim1mcc': instance.sim1mcc,
      'sim1mnc': instance.sim1mnc,
      'sim1Serial': instance.sim1Serial,
      'sim1Phone': instance.sim1Phone,
      'sim1Imei': instance.sim1Imei,
      'sim2Carriername': instance.sim2Carriername,
      'sim2CountryCode': instance.sim2CountryCode,
      'sim2mcc': instance.sim2mcc,
      'sim2mnc': instance.sim2mnc,
      'sim2Serial': instance.sim2Serial,
      'sim2Phone': instance.sim2Phone,
      'sim2Imei': instance.sim2Imei,
      'postalCode': instance.postalCode,
      'administrativeArea': instance.administrativeArea,
      'subAdministrativeArea': instance.subAdministrativeArea,
      'beneficiaryAccNo': instance.beneficiaryAccNo,
      'beneficiaryBranchIfscCode': instance.beneficiaryBranchIfscCode,
      'creditNarration': instance.creditNarration,
      'beneficiaryName': instance.beneficiaryName,
      'locality': instance.locality,
      'subLocality': instance.subLocality,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };