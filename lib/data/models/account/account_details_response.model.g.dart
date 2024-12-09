// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetailsResponse _$AccountDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    AccountDetailsResponse(
      data: json['data'] == null
          ? null
          : AccountDetailsData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AccountDetailsResponseToJson(
        AccountDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

AccountDetailsData _$AccountDetailsDataFromJson(Map<String, dynamic> json) =>
    AccountDetailsData(
      (json['accountDetails'] as List<dynamic>?)
          ?.map((e) => AccountDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..errorMessage = json['error_message'] as String?
      ..message = json['Message'] as String?;

Map<String, dynamic> _$AccountDetailsDataToJson(AccountDetailsData instance) =>
    <String, dynamic>{
      'accountDetails': instance.accountDetails,
      'error_message': instance.errorMessage,
      'Message': instance.message,
    };

AccountDetail _$AccountDetailFromJson(Map<String, dynamic> json) =>
    AccountDetail(
      json['accNo'] as String?,
      json['accHolderName'] as String?,
      (json['accId'] as num?)?.toInt(),
      json['branchName'] as String?,
      json['bankName'] as String?,
      json['ifscCode'] as String?,
      (json['benificiaryStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AccountDetailToJson(AccountDetail instance) =>
    <String, dynamic>{
      'accNo': instance.accNo,
      'accHolderName': instance.accHolderName,
      'accId': instance.accId,
      'branchName': instance.branchName,
      'bankName': instance.bankName,
      'ifscCode': instance.ifscCode,
      'benificiaryStatus': instance.benificiaryStatus,
    };
