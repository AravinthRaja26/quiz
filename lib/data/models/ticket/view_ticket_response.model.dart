import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'view_ticket_response.model.g.dart';

///
@JsonSerializable()
class ViewTicketResponse with SerializableMixin {
  ///
  ViewTicketData? data;

  ///
  String? status;

  ///
  ViewTicketResponse({
    this.data,
    this.status,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$ViewTicketResponseToJson(this);

  ///
  static ViewTicketResponse fromJson(Map<String, dynamic> json) =>
      _$ViewTicketResponseFromJson(json);
}

///
@JsonSerializable()
class ViewTicketData with SerializableMixin {
  ///
  String? ticketTitle;

  ///
  int? createdDate;

  ///
  String? ticketStatus;

  ///
  String? ticketDescription;

  ///
  int? updatedDate;

  ///
  String? ticketId;

  ///
  String? errorMessage;

  ///
  ViewTicketData({
    this.ticketTitle,
    this.createdDate,
    this.ticketStatus,
    this.ticketDescription,
    this.updatedDate,
    this.ticketId,
    this.errorMessage,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$ViewTicketDataToJson(this);

  ///
  static ViewTicketData fromJson(Map<String, dynamic> json) =>
      _$ViewTicketDataFromJson(json);
}

///
@JsonSerializable()
class TicketDescription with SerializableMixin {
  ///
  String? dateTime;

  ///
  String? date;

  ///
  String? amount;

  ///
  String? rechargeMobile;

  ///
  String? networkCircle;

  ///
  String? name;

  ///
  String? networkType;

  ///
  String? message;

  ///

  List<ListDescription>? list;

  ///
  String? consumerMobile;

  ///
  String? network;

  ///
  String? emailConsumer;

  ///

  ///
  TicketDescription(
    this.dateTime,
    this.date,
    this.message,
    this.name,
    this.amount,
    this.consumerMobile,
    this.emailConsumer,
    this.list,
    this.network,
    this.networkCircle,
    this.networkType,
    this.rechargeMobile,
  );

  @override
  Map<String, dynamic> toJson() => _$TicketDescriptionToJson(this);

  ///
  static TicketDescription fromJson(Map<String, dynamic> json) =>
      _$TicketDescriptionFromJson(json);
}

///
@JsonSerializable()
class ListDescription with SerializableMixin {
  ///
  ListDescription();
  @override
  Map<String, dynamic> toJson() => _$ListDescriptionToJson(this);

  ///
  static ListDescription fromJson(Map<String, dynamic> json) =>
      _$ListDescriptionFromJson(json);
}
