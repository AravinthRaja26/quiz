import 'package:nikitchem/data/models/account/ifsc_reponse.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'ifsc_endpoint.g.dart';

///Account end point class
@RestApi()
@injectable
abstract class IfscEndpoint {
  ///
  @factoryMethod
  factory IfscEndpoint(DioClient dio) {
    return _IfscEndpoint(dio);
  }

  ///

  @POST('https://ifsc.razorpay.com/{code}')
  Future<IfscResponse> accountDetailSave(
      @Path('code') String ifscCode);

}