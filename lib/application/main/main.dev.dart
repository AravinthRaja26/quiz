import 'package:flutter/cupertino.dart';
import 'package:nikitchem/application/config/app_config.dart';
import 'package:nikitchem/application/main/main.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  startApplication(const AppConfiguration(
      flavor: 'dev',
      baseUrl: 'https://dev.pays.net.in:8444/Pays/',
      localUrl: 'https://api.theverybest.in/api/v2/',
      appName: 'Nikitchem dev',
      forceUpdateUrl: 'https://api.theverybest.in/api/',
      isShowBuildDate: true,
      companyId: '23'));
}
