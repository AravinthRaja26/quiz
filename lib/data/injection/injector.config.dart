// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:event_bus_plus/event_bus_plus.dart' as _i477;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nikitchem/data/injection/module.dart' as _i660;
import 'package:nikitchem/data/network/dio_client.dart' as _i966;
import 'package:nikitchem/data/network/endpoint/account/account_details.endpoint.dart'
    as _i464;
import 'package:nikitchem/data/network/endpoint/account/ifsc_endpoint.dart'
    as _i930;
import 'package:nikitchem/data/network/endpoint/auto_update_endpoint/auto_update_endpoint.dart'
    as _i787;
import 'package:nikitchem/data/network/endpoint/bank_transfer/bank_transfer.endpoint.dart'
    as _i341;
import 'package:nikitchem/data/network/endpoint/banner/banner.endpoint.dart'
    as _i947;
import 'package:nikitchem/data/network/endpoint/consumer/consumer.endpoint.dart'
    as _i602;
import 'package:nikitchem/data/network/endpoint/contact_us/contact_us_endpoint.dart'
    as _i740;
import 'package:nikitchem/data/network/endpoint/dashboard/dashboard.endpoint.dart'
    as _i408;
import 'package:nikitchem/data/network/endpoint/language/language_endpoint.dart'
    as _i185;
import 'package:nikitchem/data/network/endpoint/login/login.endpoint.dart'
    as _i909;
import 'package:nikitchem/data/network/endpoint/notification/notification.endpoint.dart'
    as _i673;
import 'package:nikitchem/data/network/endpoint/passbook/passbook_endpoint.dart'
    as _i339;
import 'package:nikitchem/data/network/endpoint/push_notificaton/push_notification_endpoint.dart'
    as _i849;
import 'package:nikitchem/data/network/endpoint/scan/scan.endpoint.dart'
    as _i92;
import 'package:nikitchem/data/network/endpoint/support/support.endpoint.dart'
    as _i860;
import 'package:nikitchem/data/network/endpoint/ticket/ticket_details.endpoint.dart'
    as _i118;
import 'package:nikitchem/data/network/endpoint/transaction/transaction.endpoint.dart'
    as _i553;
import 'package:nikitchem/data/network/endpoint/user_profile/user_profile.dart'
    as _i990;
import 'package:nikitchem/data/network/interceptor/api.acticity.interceptor.dart'
    as _i874;
import 'package:nikitchem/data/repository/account/account_details.repository.dart'
    as _i544;
import 'package:nikitchem/data/repository/account/ifsc_repository.dart'
    as _i1047;
import 'package:nikitchem/data/repository/auto_update/auto_update_repository.dart'
    as _i423;
import 'package:nikitchem/data/repository/bank_transfer/transaction_bank_transfer.repository.dart'
    as _i248;
import 'package:nikitchem/data/repository/banner/banner_repository.dart'
    as _i532;
import 'package:nikitchem/data/repository/consumer/consumer.repository.dart'
    as _i369;
import 'package:nikitchem/data/repository/consumer/consumer_transaction.repository.dart'
    as _i278;
import 'package:nikitchem/data/repository/contact_us/contact_us_repository.dart'
    as _i134;
import 'package:nikitchem/data/repository/language/language_repository.dart'
    as _i142;
import 'package:nikitchem/data/repository/login/login_repository.dart'
    as _i1009;
import 'package:nikitchem/data/repository/notification/notification.repository.dart'
    as _i642;
import 'package:nikitchem/data/repository/passbook/passbook_detail_repository.dart'
    as _i527;
import 'package:nikitchem/data/repository/push_notification/push_notification_repository.dart'
    as _i580;
import 'package:nikitchem/data/repository/scan/scan.repository.dart' as _i55;
import 'package:nikitchem/data/repository/support/support.repository.dart'
    as _i771;
import 'package:nikitchem/data/repository/ticket/ticket.reository.dart'
    as _i991;
import 'package:nikitchem/data/repository/transaction/transaction.repository.dart'
    as _i959;
import 'package:nikitchem/data/repository/user_profile/user_profile_repository.dart'
    as _i998;
import 'package:nikitchem/data/services/dialog.service.dart' as _i735;
import 'package:nikitchem/data/services/notification_service.dart' as _i657;
import 'package:nikitchem/data/storage/local_storage/local.storage.dart'
    as _i26;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i423.AutoUpdateRepository>(() => _i423.AutoUpdateRepository());
    gh.factory<_i142.LanguageRepository>(() => _i142.LanguageRepository());
    gh.factory<_i580.PushNotificationRepository>(
        () => _i580.PushNotificationRepository());
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i477.EventBus>(() => appModule.eventBus);
    gh.singleton<_i735.DialogService>(() => _i735.DialogService());
    gh.singleton<_i657.NotificationService>(() => _i657.NotificationService());
    gh.singleton<_i26.LocalStorage>(
        () => _i26.LocalStorage(gh<_i460.SharedPreferences>()));
    gh.factory<String>(
      () => appModule.companyBaseUrl,
      instanceName: 'companyBaseUrl',
    );
    gh.factory<String>(
      () => appModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<String>(
      () => appModule.forceUpdateBaseUrl,
      instanceName: 'forceUpdateBaseUrl',
    );
    gh.lazySingleton<_i966.DioClient>(
        () => appModule.dio(gh<String>(instanceName: 'baseUrl')));
    gh.lazySingleton<_i966.ForceUpdateDioClient>(() => appModule
        .forceUpdateDio(gh<String>(instanceName: 'forceUpdateBaseUrl')));
    gh.factory<_i464.AccountEndpoint>(
        () => _i464.AccountEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i930.IfscEndpoint>(
        () => _i930.IfscEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i341.BankTransferEndpoint>(
        () => _i341.BankTransferEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i602.ConsumerEndpoint>(
        () => _i602.ConsumerEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i740.ContactUsEndPoint>(
        () => _i740.ContactUsEndPoint(gh<_i966.DioClient>()));
    gh.factory<_i408.DashBoardEndpoint>(
        () => _i408.DashBoardEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i909.AuthEndpoint>(
        () => _i909.AuthEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i673.NotificationEndpoint>(
        () => _i673.NotificationEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i339.PassbookEndpoint>(
        () => _i339.PassbookEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i92.ScanEndpoint>(
        () => _i92.ScanEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i860.SupportEndpoint>(
        () => _i860.SupportEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i118.TicketEndpoint>(
        () => _i118.TicketEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i553.TransactionEndpoint>(
        () => _i553.TransactionEndpoint(gh<_i966.DioClient>()));
    gh.factory<_i990.UserProfileEndPoint>(
        () => _i990.UserProfileEndPoint(gh<_i966.DioClient>()));
    gh.factory<_i787.AutoUpdateEndpoint>(
        () => _i787.AutoUpdateEndpoint(gh<_i966.ForceUpdateDioClient>()));
    gh.lazySingleton<_i966.CompanyDioClient>(
        () => appModule.companyDio(gh<String>(instanceName: 'companyBaseUrl')));
    gh.factory<_i998.UserProfileRepository>(
        () => _i998.UserProfileRepository(gh<_i990.UserProfileEndPoint>()));
    gh.factory<_i771.SupportRepository>(
        () => _i771.SupportRepository(gh<_i860.SupportEndpoint>()));
    gh.factory<_i959.TransactionRepository>(
        () => _i959.TransactionRepository(gh<_i553.TransactionEndpoint>()));
    gh.factory<_i1047.IfscRepository>(
        () => _i1047.IfscRepository(gh<_i930.IfscEndpoint>()));
    gh.factory<_i278.ConsumerRepository>(
        () => _i278.ConsumerRepository(gh<_i602.ConsumerEndpoint>()));
    gh.factory<_i369.ConsumerRepository>(
        () => _i369.ConsumerRepository(gh<_i408.DashBoardEndpoint>()));
    gh.factory<_i947.BannerEndpoint>(
        () => _i947.BannerEndpoint(gh<_i966.CompanyDioClient>()));
    gh.factory<_i185.LanguageEndpoint>(
        () => _i185.LanguageEndpoint(gh<_i966.CompanyDioClient>()));
    gh.factory<_i849.PushNotificationEndPoint>(
        () => _i849.PushNotificationEndPoint(gh<_i966.CompanyDioClient>()));
    gh.factory<_i991.TicketRepository>(
        () => _i991.TicketRepository(gh<_i118.TicketEndpoint>()));
    gh.factory<_i248.BankTransferRepository>(
        () => _i248.BankTransferRepository(gh<_i341.BankTransferEndpoint>()));
    gh.singleton<_i874.AppActivityInterceptor>(
        () => _i874.AppActivityInterceptor(
              gh<_i966.DioClient>(),
              gh<_i966.CompanyDioClient>(),
              gh<_i966.ForceUpdateDioClient>(),
            ));
    gh.factory<_i1009.LoginRepository>(
        () => _i1009.LoginRepository(gh<_i909.AuthEndpoint>()));
    gh.factory<_i55.ScanRepository>(
        () => _i55.ScanRepository(gh<_i92.ScanEndpoint>()));
    gh.factory<_i134.ContactUsRepository>(
        () => _i134.ContactUsRepository(gh<_i740.ContactUsEndPoint>()));
    gh.factory<_i532.BannerRepository>(
        () => _i532.BannerRepository(gh<_i947.BannerEndpoint>()));
    gh.factory<_i527.PassbookRepository>(
        () => _i527.PassbookRepository(gh<_i339.PassbookEndpoint>()));
    gh.factory<_i544.AccountDetailsRepository>(
        () => _i544.AccountDetailsRepository(gh<_i464.AccountEndpoint>()));
    gh.factory<_i642.NotificationRepository>(
        () => _i642.NotificationRepository(gh<_i673.NotificationEndpoint>()));
    return this;
  }
}

class _$AppModule extends _i660.AppModule {}
