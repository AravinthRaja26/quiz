import 'package:auto_route/auto_route.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/routing/auto_router.gr.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';

///
class TutorialGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    LocalStorage localStorage = injector<LocalStorage>();

    localStorage.save(
        StorageKey.keykjm, localStorage.retrieveString(StorageKey.keykjm));
    bool? isFinishedTutorial =
        localStorage.retrieveBool(StorageKey.isFinishedTutorial);

    bool? isProfileUpdate =
        localStorage.retrieveBool(StorageKey.isProfileUpdate);

    bool? isLogin = localStorage.retrieveBool(StorageKey.isLogin);

    bool? isForceUpdate = localStorage.retrieveBool(StorageKey.isForceUpdate);

    String? appUpdateTitle =
        localStorage.retrieveString(StorageKey.messageVersion);
    String? appUpdateSubtitle =
        localStorage.retrieveString(StorageKey.messageDownload);
    String? appUpdateSubtitle2 =
        localStorage.retrieveString(StorageKey.messageInstall);
    if (isForceUpdate != null && isForceUpdate) {
      // router.push(ForceUpdateScreen(
      //     title: appUpdateTitle ?? '', subTitle: '${ appUpdateTitle ?? ' '}\n\n${appUpdateSubtitle ?? ' '}\n\n${appUpdateSubtitle2 ?? ' '}'));
    } else if (isFinishedTutorial != null && isFinishedTutorial) {
      // router.push(const LoginScreen());
    } else if (isLogin != null && isLogin) {
      // router.push(const UserProfileScreen());
    } else if (isProfileUpdate != null && isProfileUpdate) {
      router.push(MainScreen());
    } else {
      resolver.next();
    }
  }
}
