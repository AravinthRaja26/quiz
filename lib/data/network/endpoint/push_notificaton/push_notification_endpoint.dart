import 'package:nikitchem/data/models/notification/push_notification.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
  import 'package:dio/dio.dart';
part 'push_notification_endpoint.g.dart';
///PushNotification end point class
@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class PushNotificationEndPoint {
  ///
  @factoryMethod
  factory PushNotificationEndPoint(CompanyDioClient dio) {
    return _PushNotificationEndPoint(dio);
  }

  ///
  @POST('customer')
  Future<PushNotificationResponse> pushNotification(@Body() Map<String, dynamic> body);

}