import 'package:nikitchem/data/models/bank_trnasfer/bank_transfer.response.dart';
import 'package:nikitchem/data/models/bank_trnasfer/dealer_validate_reponse.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'bank_transfer.endpoint.g.dart';

///BankTransfer end point class
@RestApi()
@injectable
abstract class BankTransferEndpoint {
  ///
  @factoryMethod
  factory BankTransferEndpoint(DioClient dio) {
    return _BankTransferEndpoint(dio);
  }

  ///
  @POST('nikit/ptToDealer')
  Future<BankTransferResponse?> getBankTransferDetail(
      @Body() Map<String, dynamic> data);

  ///
  @POST('umnbv/redemptionOtp')
  Future<HttpResponse<dynamic>?> pointTransferOtp(
      @Body() Map<String, dynamic> data);

  ///
  @POST('nikit/ptDealerValidation')
  Future<DealerResponse> dealerValidation(
      @Body() Map<String, dynamic> data);
}
