import 'package:nikitchem/data/models/scan/scan_coupon_response.model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'scan.endpoint.g.dart';

///Dashboard end point class
@RestApi()
@injectable
abstract class ScanEndpoint {
  ///
  @factoryMethod
  factory ScanEndpoint(DioClient dio) {
    return _ScanEndpoint(dio);
  }

  ///
  @POST('consumer/scanCoupon')
  Future<ScanCouponResponse> scanCouponDetail(
      @Body() Map<String, dynamic> data);
}
