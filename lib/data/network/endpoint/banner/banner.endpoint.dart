
import 'package:nikitchem/data/models/banner/banner_response.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'banner.endpoint.g.dart';

///BankTransfer end point class
@RestApi()
@injectable
abstract class BannerEndpoint {
  ///
  @factoryMethod
  factory BannerEndpoint(CompanyDioClient dio) {
    return _BannerEndpoint(dio);
  }

  ///
  /// Todo change url
  ///
  @POST('banner')
  Future<BannerResponse?> getBanner(@Body() Map<String, dynamic> body);
}
