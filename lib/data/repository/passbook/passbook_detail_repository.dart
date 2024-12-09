import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/passbook/passbook_model.dart';
import 'package:nikitchem/data/network/endpoint/passbook/passbook_endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class PassbookRepository {
  ///
  final PassbookEndpoint passbookEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  PassbookRepository(this.passbookEndpoint);

  ///
  Future<PassbookResponse?> passbookDetail(Map<String, dynamic> body) async {
    PassbookResponse? response = await passbookEndpoint.getPassbookDetail(body);
    return response;
  }
}
