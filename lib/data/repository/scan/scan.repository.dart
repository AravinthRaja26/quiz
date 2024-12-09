import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/scan/scan_coupon_response.model.dart';
import 'package:nikitchem/data/network/endpoint/scan/scan.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class ScanRepository {
  ///
  final ScanEndpoint scanEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  ScanRepository(this.scanEndpoint);

  ///
  Future<ScanCouponResponse?> scanCouponDetail(
      Map<String, dynamic> body) async {
    ScanCouponResponse? response = await scanEndpoint.scanCouponDetail(body);
    return response;
  }
}
