import 'package:nikitchem/data/models/user_profile/city_response.dart';
import 'package:nikitchem/data/models/user_profile/delete_image_response.dart';
import 'package:nikitchem/data/models/user_profile/get_consumer_by_id.dart';
import 'package:nikitchem/data/models/user_profile/state_response.dart';
import 'package:nikitchem/data/models/user_profile/user_profile.dart';
import 'package:nikitchem/data/models/user_profile/version_validate.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
part 'user_profile.g.dart';

///login end point class
@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class UserProfileEndPoint {
  ///
  @factoryMethod
  factory UserProfileEndPoint(DioClient dio) {
    return _UserProfileEndPoint(dio);
  }

  ///
  @POST('consumer/update')
  Future<UserProfileResponse> saveConsumer(@Body() Map<String, dynamic> body);

  ///

  @POST('nikit/updateProfileNew')
  Future<UserProfileResponse> updateProfile(@Header('Content-Type') String header,  @Body() FormData body);

  ///
  @POST('nikit/getConsumerByIdNew')
  Future<ConsumerByIdResponse> getConsumerByIdNew(
      @Body() Map<String, dynamic> body);

  ///
  @POST('umnbv/versionValidate')
  Future<VersionValidateResponse> versionValidation(
      @Body() Map<String, dynamic> body);

  ///
  @POST('consumer/deleteConsumer')
  Future<UserProfileResponse> deleteAccount(@Body() Map<String, dynamic> body);

  ///
  @POST('consumer/reactivateConsumer')
  Future<UserProfileResponse> reactiveConsumer(
      @Body() Map<String, dynamic> body);

  ///
  @POST('company/getStates')
  Future<StateResponse> getState(@Body() Map<String, dynamic> body);

  ///
  @POST('company/getCity')
  Future<CityResponse> getCity(@Body() Map<String, dynamic> body);

  ///
  @POST('nikit/documentDeleteNew')
  Future<DeleteImageResponse> deleteImage(@Body() Map<String, dynamic> body);
}
