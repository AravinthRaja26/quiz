import 'package:nikitchem/data/models/notification/notification_model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'consumer.endpoint.g.dart';

///Consumer end point class
@RestApi()
@injectable
abstract class ConsumerEndpoint {
  ///
  @factoryMethod
  factory ConsumerEndpoint(DioClient dio) {
    return _ConsumerEndpoint(dio);
  }

  ///
  @POST('journal/consumerTransactions')
  Future<NotificationResponse> consumerTransactionDetail(
      @Body() Map<String, dynamic> data);
}
