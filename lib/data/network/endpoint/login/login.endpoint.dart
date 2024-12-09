import 'package:nikitchem/data/models/login/otp_response.dart';
import 'package:nikitchem/data/models/login/otp_verification_response.dart';
import 'package:nikitchem/data/models/login/rest_m_pin_response.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

  part 'login.endpoint.g.dart';

  ///login end point class
  @RestApi(parser: Parser.JsonSerializable)
  @injectable
  abstract class AuthEndpoint {
    ///
    @factoryMethod
    factory AuthEndpoint(DioClient dio) {
      return _AuthEndpoint(dio);
    }

    ///
    @POST('umnbv/login')
    Future<OtpResponse> getOtp(@Body() Map<String, dynamic> body);

    ///
    @POST('umnbv/cvocjk3')
    Future<OtpVerificationResponse> verifyOtp(@Body() Map<String, dynamic> body);

    ///
    @POST('nikit/restMPin')
    Future<RestMPinResponse> resetMPin(@Body() Map<String, dynamic> body);


  }
