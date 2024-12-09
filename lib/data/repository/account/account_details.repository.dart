import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/account/account_details_response.model.dart';
import 'package:nikitchem/data/network/endpoint/account/account_details.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class AccountDetailsRepository {
  ///
  final AccountEndpoint accountEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  AccountDetailsRepository(this.accountEndpoint);

  ///
  ///accountDetailSave
  ///

  Future<AccountDetailsResponse> accountDetailSave(
      Map<String, dynamic> body) async {
    AccountDetailsResponse response =
        await accountEndpoint.accountDetailSave(body);
    return response;
  }

  ///
  ///accountDetailDelete
  ///
  Future<AccountDetailsResponse?> accountDetailDelete(int accId) async {
    int temp = accId;
    String accountId = temp.toString();
    Map<String, dynamic> data = <String, dynamic>{'accId': accountId};
    AccountDetailsResponse? response =
        await accountEndpoint.accountDetailDelete(data);
    return response;
  }

  ///
  ///accountDetailConsumer
  ///

  Future<AccountDetailsResponse?> accountDetailConsumer() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm':
          localStorage.retrieveString(StorageKey.keykjm),
    };
    AccountDetailsResponse? response =
        await accountEndpoint.accountDetailConsumer(data);
    return response;
  }
}
