import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/network/endpoint/consumer/consumer.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class ConsumerRepository {
  ///
  final ConsumerEndpoint consumerEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  ConsumerRepository(this.consumerEndpoint);
}
