import 'package:nikitchem/application/config/app_config.dart';
import 'package:nikitchem/application/main/main.dart';

main() {
  startApplication(const AppConfiguration(
      flavor: 'prod',
      appName: 'Nikitchem',
      baseUrl: 'https://app.pays.net.in:8444/Pays/',
      // localUrl: 'https://loyaltypup.com/api/v1/',
      // baseUrl: 'https://dev.pays.net.in:8444/Pays/',
     // localUrl: 'https://nikitchem.loyaltypup.com/api/v1/',
      localUrl: 'https://api.theverybest.in/api/v2/',
      forceUpdateUrl: 'https://api.theverybest.in/api/',
      isShowBuildDate: false,
      companyId: '23'));
}
