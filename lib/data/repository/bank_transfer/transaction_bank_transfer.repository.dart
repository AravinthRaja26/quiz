import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/bank_trnasfer/bank_transfer.response.dart';
import 'package:nikitchem/data/models/bank_trnasfer/dealer_validate_reponse.dart';
import 'package:nikitchem/data/network/endpoint/bank_transfer/bank_transfer.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

///
@injectable
class BankTransferRepository {
  ///
  final BankTransferEndpoint bankTransferEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  BankTransferRepository(this.bankTransferEndpoint);

  ///
  /// BankTransfer
  ///

  Future<BankTransferResponse?> bankTransferDetail(
      Map<String, dynamic> body) async {
    BankTransferResponse? response =
        await bankTransferEndpoint.getBankTransferDetail(body);
    return response;
  }

  ///
  /// Bank Transfer Otp
  ///

  Future<HttpResponse<dynamic>?> bankTransferOtpVerification() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
      'countryCode':localStorage.retrieveString(StorageKey.countryCode),
    };
    HttpResponse<dynamic>? response =
        await bankTransferEndpoint.pointTransferOtp(data);
    return response;
  }

  ///
  /// Bank Transfer Otp
  ///

  Future<DealerResponse> dealerValidation(
      {required int? points,required String? dealerMobile}) async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
      'points': points,
      'dealerMobile': dealerMobile,
      'countryCode':localStorage.retrieveString(StorageKey.countryCode),
    };
    DealerResponse? response =
        await bankTransferEndpoint.dealerValidation(data);
    return response;
  }
}
