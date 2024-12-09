import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/consumer/consumer_transaction.model.dart';
import 'package:nikitchem/data/models/transcation/coupon/coupon_detail.model.dart';
import 'package:nikitchem/data/models/transcation/earned/earned_model.dart';
import 'package:nikitchem/data/models/transcation/expired/expired_model.dart';
import 'package:nikitchem/data/models/transcation/transfer/transfer_model.dart';
import 'package:nikitchem/data/models/transcation/verified/verified_model.dart';
import 'package:nikitchem/data/network/endpoint/transaction/transaction.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class TransactionRepository {
  ///
  final TransactionEndpoint transactionEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  TransactionRepository(this.transactionEndpoint);

  ///
  ///
  Future<ConsumerTransactionResponse> getTransactionDetail() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
    };
    ConsumerTransactionResponse response =
        await transactionEndpoint.getConsumerTransaction(data);
    return response;
  }

  ///
  /// Earned
  ///
  Future<EarnedResponse?> earnedDetail(Map<String, dynamic> body) async {
    EarnedResponse? response = await transactionEndpoint.getEarned(body);
    return response;
  }

  ///
  /// Transfer
  ///
  Future<TransferResponse?> transferDetail(Map<String, dynamic> body) async {
    TransferResponse? response = await transactionEndpoint.getTransfer(body);
    return response;
  }

  ///
  /// Verified
  ///
  Future<VerifiedResponse?> verifiedDetail(Map<String, dynamic> body) async {
    VerifiedResponse? response = await transactionEndpoint.getVerified(body);
    return response;
  }

  ///
  /// Expired
  ///
  Future<ExpiredResponse?> expiredDetail(Map<String, dynamic> body) async {
    ExpiredResponse? response = await transactionEndpoint.getExpired(body);
    return response;
  }

  ///
  /// Coupon Detail
  ///
  Future<CouponDetail?> couponDetail(Map<String, dynamic> body) async {
    CouponDetail? response = await transactionEndpoint.getCouponDetail(body);
    return response;
  }
}
