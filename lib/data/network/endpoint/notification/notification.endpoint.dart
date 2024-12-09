import 'package:nikitchem/data/models/notification/notification_model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'notification.endpoint.g.dart';

///Dashboard end point class
@RestApi()
@injectable
abstract class NotificationEndpoint {
  ///
  @factoryMethod
  factory NotificationEndpoint(DioClient dio) {
    return _NotificationEndpoint(dio);
  }

  ///
  @POST('consumer/notification')
  Future<NotificationResponse> getNotificationDetail(
      @Body() Map<String, dynamic> data);
}
