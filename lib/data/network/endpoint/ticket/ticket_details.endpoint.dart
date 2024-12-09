import 'package:nikitchem/data/models/contact_us/contact_us_response.dart';
import 'package:nikitchem/data/models/ticket/consumer_ticket_list.model.dart';
import 'package:nikitchem/data/models/ticket/view_ticket_response.model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'ticket_details.endpoint.g.dart';

///ticket end point class
@RestApi()
@injectable
abstract class TicketEndpoint {
  ///
  @factoryMethod
  factory TicketEndpoint(DioClient dio) {
    return _TicketEndpoint(dio);
  }

  ///
  @POST('faq/viewTicket')
  Future<ViewTicketResponse> viewTicketDetail(
      @Body() Map<String, dynamic> data);

  ///
  @POST('faq/consumerTicketList')
  Future<ConsumerTicketList> consumerTicketList(
      @Body() Map<String, dynamic> data);

  ///
  @POST('faq/faqEmail')
  Future<ContactUsResponse> createTicket(
      @Body() Map<String, dynamic> data);
}
