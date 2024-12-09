import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/support/support_model.dart';
import 'package:nikitchem/data/network/endpoint/support/support.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class SupportRepository {
  ///
  final SupportEndpoint supportEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  SupportRepository(this.supportEndpoint);

  ///
  Future<ConsumerDetails?> consumerDetail() async {
    ConsumerDetails? response = await supportEndpoint.consumerDetail();
    return response;
  }

  ///
  Future<ConsumerDetails?> viewMoreConsumerDetail(String id) async {
    ConsumerDetails? response =
        await supportEndpoint.viewMoreConsumerDetail(id);
    return response;
  }
}
