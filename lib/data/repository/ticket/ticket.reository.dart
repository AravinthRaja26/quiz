import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/contact_us/contact_us_response.dart';
import 'package:nikitchem/data/models/ticket/consumer_ticket_list.model.dart';
import 'package:nikitchem/data/models/ticket/view_ticket_response.model.dart';
import 'package:nikitchem/data/network/endpoint/ticket/ticket_details.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class TicketRepository {
  ///
  final TicketEndpoint ticketEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  TicketRepository(this.ticketEndpoint);

  ///

  ///
  Future<ViewTicketResponse?> viewTicketDetail(
      Map<String, dynamic> body) async {
    ViewTicketResponse? response = await ticketEndpoint.viewTicketDetail(body);
    return response;
  }

  ///
  Future<ConsumerTicketList?> consumerTicketList(
      Map<String, dynamic> body) async {
    ConsumerTicketList? response =
        await ticketEndpoint.consumerTicketList(body);
    return response;
  }

  ///
  Future<ContactUsResponse?> createTicket(Map<String, dynamic> body) async {
    ContactUsResponse? response = await ticketEndpoint.createTicket(body);
    return response;
  }
}
