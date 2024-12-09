// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_ticket_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumerTicketList _$ConsumerTicketListFromJson(Map<String, dynamic> json) =>
    ConsumerTicketList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TicketListData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ConsumerTicketListToJson(ConsumerTicketList instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

TicketListData _$TicketListDataFromJson(Map<String, dynamic> json) =>
    TicketListData(
      createdDate: (json['createdDate'] as num?)?.toInt(),
      ticketStatus: json['ticketStatus'] as String?,
      ticketId: json['ticketId'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$TicketListDataToJson(TicketListData instance) =>
    <String, dynamic>{
      'createdDate': instance.createdDate,
      'ticketStatus': instance.ticketStatus,
      'ticketId': instance.ticketId,
      'errorMessage': instance.errorMessage,
    };
