import 'package:nikitchem/data/models/account/ifsc_reponse.dart';
import 'package:nikitchem/data/network/endpoint/account/ifsc_endpoint.dart';
import 'package:nikitchem/infrastructure/utils/app.text.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class IfscRepository {
  ///
  final IfscEndpoint ifscEndpoint;

  ///
  IfscRepository(this.ifscEndpoint);

  ///
  ///accountDetailSave
  ///

  Future<IfscResponse> fetchIfsc(String ifscCode) async {
    final Dio dio = Dio();

    final Response<dynamic> response =
        await dio.get('${AppText.ifscUrl}$ifscCode');

    IfscResponse result = IfscResponse.fromJson(response.data);
    return result;
  }
}
