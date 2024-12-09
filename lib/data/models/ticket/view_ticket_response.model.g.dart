// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_ticket_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewTicketResponse _$ViewTicketResponseFromJson(Map<String, dynamic> json) =>
    ViewTicketResponse(
      data: json['data'] == null
          ? null
          : ViewTicketData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ViewTicketResponseToJson(ViewTicketResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

ViewTicketData _$ViewTicketDataFromJson(Map<String, dynamic> json) =>
    ViewTicketData(
      ticketTitle: json['ticketTitle'] as String?,
      createdDate: (json['createdDate'] as num?)?.toInt(),
      ticketStatus: json['ticketStatus'] as String?,
      ticketDescription: json['ticketDescription'] as String?,
      updatedDate: (json['updatedDate'] as num?)?.toInt(),
      ticketId: json['ticketId'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$ViewTicketDataToJson(ViewTicketData instance) =>
    <String, dynamic>{
      'ticketTitle': instance.ticketTitle,
      'createdDate': instance.createdDate,
      'ticketStatus': instance.ticketStatus,
      'ticketDescription': instance.ticketDescription,
      'updatedDate': instance.updatedDate,
      'ticketId': instance.ticketId,
      'errorMessage': instance.errorMessage,
    };

TicketDescription _$TicketDescriptionFromJson(Map<String, dynamic> json) =>
    TicketDescription(
      json['dateTime'] as String?,
      json['date'] as String?,
      json['message'] as String?,
      json['name'] as String?,
      json['amount'] as String?,
      json['consumerMobile'] as String?,
      json['emailConsumer'] as String?,
      (json['list'] as List<dynamic>?)
          ?.map((e) => ListDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['network'] as String?,
      json['networkCircle'] as String?,
      json['networkType'] as String?,
      json['rechargeMobile'] as String?,
    );

Map<String, dynamic> _$TicketDescriptionToJson(TicketDescription instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'date': instance.date,
      'amount': instance.amount,
      'rechargeMobile': instance.rechargeMobile,
      'networkCircle': instance.networkCircle,
      'name': instance.name,
      'networkType': instance.networkType,
      'message': instance.message,
      'list': instance.list,
      'consumerMobile': instance.consumerMobile,
      'network': instance.network,
      'emailConsumer': instance.emailConsumer,
    };

ListDescription _$ListDescriptionFromJson(Map<String, dynamic> json) =>
    ListDescription();

Map<String, dynamic> _$ListDescriptionToJson(ListDescription instance) =>
    <String, dynamic>{};
