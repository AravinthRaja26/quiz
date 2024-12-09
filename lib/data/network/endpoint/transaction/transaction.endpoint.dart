import 'package:nikitchem/data/models/consumer/consumer_transaction.model.dart';
import 'package:nikitchem/data/models/transcation/coupon/coupon_detail.model.dart';
import 'package:nikitchem/data/models/transcation/earned/earned_model.dart';
import 'package:nikitchem/data/models/transcation/expired/expired_model.dart';
import 'package:nikitchem/data/models/transcation/transfer/transfer_model.dart';
import 'package:nikitchem/data/models/transcation/verified/verified_model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'transaction.endpoint.g.dart';

///transaction end point class
@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class TransactionEndpoint {
  ///
  @factoryMethod
  factory TransactionEndpoint(DioClient dio) {
    return _TransactionEndpoint(dio);
  }

  ///
  @POST('journal/consumerTransactions')
  Future<ConsumerTransactionResponse> getConsumerTransaction(@Body() Map<String, dynamic> body);
  ///
  @POST('nikit/earned')
  Future<EarnedResponse> getEarned(@Body() Map<String, dynamic> body);
  ///
  @POST('nikit/transfer')
  Future<TransferResponse> getTransfer(@Body() Map<String, dynamic> body);
  ///
  @POST('nikit/verified')
  Future<VerifiedResponse> getVerified(@Body() Map<String, dynamic> body);
  ///
  @POST('nikit/expiredList')
  Future<ExpiredResponse> getExpired(@Body() Map<String, dynamic> body);
  ///
  @POST('couponorder/getCouponInformation')
  Future<CouponDetail> getCouponDetail (@Body() Map<String, dynamic> body);
}
