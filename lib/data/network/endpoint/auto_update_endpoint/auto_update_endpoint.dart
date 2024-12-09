

import 'package:nikitchem/data/models/auto_update/auto_update_model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auto_update_endpoint.g.dart';

///AutoUpdate end point class
@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class AutoUpdateEndpoint {
  ///
  @factoryMethod
  factory AutoUpdateEndpoint(ForceUpdateDioClient dio) {
    return _AutoUpdateEndpoint(dio);
  }

  ///
  @POST('app-force-update')
  Future<AutoUpdateModel> checkUpdate(@Body() Map<String, dynamic> body);

}