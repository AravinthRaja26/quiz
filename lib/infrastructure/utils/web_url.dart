

import 'package:nikitchem/application/config/application.dart';

///
class WebUrl {
  ///
  static String aboutUsUrl = 'https://api.theverybest.in/page?company_id=${appConfig?.companyId}&key=about_nikitchem&lan=en';
  ///
  static String aboutAppUrl = 'https://api.theverybest.in/page?company_id=${appConfig?.companyId}&key=about_the_app&lan=en';
  ///
  static String privacyPolicy = 'https://api.theverybest.in/page?company_id=${appConfig?.companyId}&key=privacy_nikitchem&lan=en';
  ///
  static String termsConditions = 'https://api.theverybest.in/page?company_id=${appConfig?.companyId}&key=terms_nikitchem&lan=en';
}

