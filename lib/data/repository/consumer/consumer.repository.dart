import 'package:nikitchem/data/network/endpoint/dashboard/dashboard.endpoint.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class ConsumerRepository {
  ///
  final DashBoardEndpoint dashBoardEndpoint;

  ///
  ConsumerRepository(this.dashBoardEndpoint);

  ///
  void getConsumerDetail() {
    dashBoardEndpoint.getConsumerDetail(<String, dynamic>{'': ''});
  }
}
