import 'dart:io';

import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/auto_update/auto_update_model.dart';
import 'package:nikitchem/data/network/endpoint/auto_update_endpoint/auto_update_endpoint.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class AutoUpdateRepository {
  ///
  AutoUpdateEndpoint autoUpdateEndpoint = injector<AutoUpdateEndpoint>();

  ///
  AutoUpdateRepository();

  ///
  Future<AutoUpdateModel> checkUpdate(int buildNumber) async {
    Map<String, dynamic> data = <String, dynamic>{
      'version_code': buildNumber,
      'device_type': Platform.isAndroid ? 'android' : 'ios',
      'company_id': '${appConfig?.companyId}'
    };
    AutoUpdateModel response = await autoUpdateEndpoint.checkUpdate(data);
    return response;
  }
}
