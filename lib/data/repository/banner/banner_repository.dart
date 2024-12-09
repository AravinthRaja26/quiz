import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/banner/banner_response.dart';
import 'package:nikitchem/data/network/endpoint/banner/banner.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class BannerRepository {
  ///
  final BannerEndpoint bannerEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  BannerRepository(this.bannerEndpoint);

  ///
  /// Banner
  ///

  Future<BannerResponse?> bannerData() async {
    BannerResponse? response = await bannerEndpoint.getBanner(<String,dynamic>{'company_id':'${appConfig?.companyId}'});
    return response;
  }
}
