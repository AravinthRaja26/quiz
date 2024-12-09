
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'dashboard.endpoint.g.dart';

///Dashboard end point class
@RestApi()
@injectable
abstract class DashBoardEndpoint{

  ///
  @factoryMethod
  factory DashBoardEndpoint(DioClient dio){
    return _DashBoardEndpoint(dio);
  }

  ///
  @POST('accountDetails')
  Future<void> getConsumerDetail(@Body() Map<String,dynamic> temp);
}