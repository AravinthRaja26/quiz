import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'consumer_ticket_list.model.g.dart';

///
@JsonSerializable()
class ConsumerTicketList with SerializableMixin {
  ///
  List<TicketListData>? data;

  ///
  String? status;

  ///
  ConsumerTicketList({
    this.data,
    this.status,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$ConsumerTicketListToJson(this);

  ///
  static ConsumerTicketList fromJson(Map<String, dynamic> json) =>
      _$ConsumerTicketListFromJson(json);
}

///
@JsonSerializable()
class TicketListData with SerializableMixin {
  ///
  int? createdDate;

  ///
  String? ticketStatus;

  ///
  String? ticketId;

  ///
  String? errorMessage;

  ///
  TicketListData({
    this.createdDate,
    this.ticketStatus,
    this.ticketId,
    this.errorMessage,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$TicketListDataToJson(this);

  ///
  static TicketListData fromJson(Map<String, dynamic> json) =>
      _$TicketListDataFromJson(json);
}
