// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteAccountResponse _$DeleteAccountResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteAccountResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DeleteAccountResponseToJson(
        DeleteAccountResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      Message: json['message'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'message': instance.Message,
    };
