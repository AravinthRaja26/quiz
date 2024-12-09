import 'package:nikitchem/data/models/passbook/passbook_model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'passbook_endpoint.g.dart';

/// Passbook end point class
@RestApi()
@injectable
abstract class PassbookEndpoint {
  ///
  @factoryMethod
  factory PassbookEndpoint(DioClient dio) {
    return _PassbookEndpoint(dio);
  }

  ///
  @POST('nikit/consumerJournal')
  Future<PassbookResponse> getPassbookDetail(
      @Body() Map<String, dynamic> data);
}
