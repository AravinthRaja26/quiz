import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/language_model/language_list_model.dart';
import 'package:nikitchem/data/models/language_model/local_language.dart';
import 'package:nikitchem/data/network/endpoint/language/language_endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class LanguageRepository {
  ///
  LanguageEndpoint languageEndpoint = injector<LanguageEndpoint>();

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  LanguageRepository();

  ///
  Future<LanguageResponse> getLanguage({String? language}) async {
    Map<String, dynamic> requestBody = <String, dynamic>{
      'language_code': language,
      'phone_number':
          localStorage.retrieveString(StorageKey.userPhoneNumber) ?? '',
      'company_id': '${appConfig?.companyId}',
    };
    LanguageResponse response = await languageEndpoint.getLanguage(requestBody);
    if (response.preferredLanguage != null) {
      await localStorage.save(
          StorageKey.selectLanguage, response.preferredLanguage);
    }
    return response;
  }

  ///
  Future<LanguageListResponse> getLanguageList() async {
    LanguageListResponse response = await languageEndpoint.getLanguageList(
        <String, dynamic>{'company_id': '${appConfig?.companyId}'});
    return response;
  }
}
