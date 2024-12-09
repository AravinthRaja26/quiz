import 'package:nikitchem/data/models/account/account_details_response.model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'account_details.endpoint.g.dart';

///Account end point class
@RestApi()
@injectable
abstract class AccountEndpoint {
  ///
  @factoryMethod
  factory AccountEndpoint(DioClient dio) {
    return _AccountEndpoint(dio);
  }

  ///
  @POST('accountDetails/save')
  Future<AccountDetailsResponse> accountDetailSave(
      @Body() Map<String, dynamic> data);

  ///
  @POST('accountDetails/delete')
  Future<AccountDetailsResponse> accountDetailDelete(
      @Body() Map<String, dynamic> data);

  ///
  @POST('accountDetails/consumer')
  Future<AccountDetailsResponse?> accountDetailConsumer(
      @Body() Map<String, dynamic> data);
}
