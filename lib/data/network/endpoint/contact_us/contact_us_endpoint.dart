import 'package:nikitchem/data/models/contact_us/contact_us_response.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'contact_us_endpoint.g.dart';

///login end point class
@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class ContactUsEndPoint {
  ///
  @factoryMethod
  factory ContactUsEndPoint(DioClient dio) {
    return _ContactUsEndPoint(dio);
  }

  ///
  @POST('common/contactUs')
  Future<ContactUsResponse> sendContactUsEmail(@Body() Map<String, dynamic> body);

}
