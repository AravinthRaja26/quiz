// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetailsRequest _$AccountDetailsRequestFromJson(
        Map<String, dynamic> json) =>
    AccountDetailsRequest(
      keykjm: json['keykjm'] as String?,
      ifscCode: json['ifscCode'] as String?,
      accId: (json['accId'] as num?)?.toInt(),
      accHolderName: json['accHolderName'] as String?,
      accNo: json['accNo'] as String?,
      branchName: json['branchName'] as String?,
      bankName: json['bankName'] as String?,
    );

Map<String, dynamic> _$AccountDetailsRequestToJson(
        AccountDetailsRequest instance) =>
    <String, dynamic>{
      'keykjm': instance.keykjm,
      'ifscCode': instance.ifscCode,
      'accId': instance.accId,
      'accHolderName': instance.accHolderName,
      'accNo': instance.accNo,
      'branchName': instance.branchName,
      'bankName': instance.bankName,
    };
