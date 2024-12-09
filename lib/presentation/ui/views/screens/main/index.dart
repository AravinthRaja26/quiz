import 'package:auto_route/auto_route.dart';
import 'package:nikitchem/application/localizations/locale_keys.g.dart';
import 'package:nikitchem/data/abstract/abstract.viewmodel.dart';
import 'package:nikitchem/infrastructure/globle.dart';
import 'package:nikitchem/presentation/routing/auto_router.gr.dart';
import 'package:nikitchem/presentation/styles/custom_colors.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/main_provider.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/main_viewmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

///
///MainScreen screen
///
@RoutePage(name: 'mainScreen')
class MainScreen extends StatelessWidget {
  ///
  final bool? comesToUserProfile;

  /// MainScreen screen constructor
  const MainScreen({super.key, this.comesToUserProfile});

  @override
  Widget build(BuildContext context) {
    return MainViewModelProvider(
      builder: (BuildContext context, Widget? child) {
        return Builder(builder: (BuildContext context) {
          MainViewModel viewModel = BaseViewModel.watch<MainViewModel>(context);
          return AutoTabsRouter(
            routes: <PageRouteInfo>[
              // DashboardScreen(),
              // TransactionScreen(),
              // SettingScreen(),
              // /*if(viewModel.localStorage.retrieveString(StorageKey.countryCode) != '+977') */PassbookScreen(),
              // WhatsappScreen(),
            ],

            builder: (BuildContext context, Widget child) {
              final TabsRouter tabsRouter = AutoTabsRouter.of(context);
              return WillPopScope(
                onWillPop: () {
                  return viewModel.navigateToHomeScreen(context);
                },
                child: Scaffold(
                    key: viewModel.scaffoldKey,
                    body: SafeArea(child: child),
                    bottomNavigationBar: BottomNavigationBar(
                      backgroundColor: CustomColors.lightBlue,

                        unselectedItemColor: CustomColors.black,
                      showUnselectedLabels: true,
                      showSelectedLabels: true,
                      selectedItemColor: CustomColors.midBlue,
                      selectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                      selectedFontSize: 12,
                      currentIndex: tabsRouter.activeIndex,
                      onTap: (int index) {
                        tabsRouter.setActiveIndex(index);
                        viewModel.onItemTap(index);
                      },
                      items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        label: localLanguage?.keyHome ?? LocaleKeys.home.tr(),
                        icon: Image.asset(
                          '',
                          fit: BoxFit.contain,
                          height: 24,
                          width: 24,
                          color: tabsRouter.activeIndex == 0 ? CustomColors.midBlue : CustomColors.black,
                        ),
                      ),
                      BottomNavigationBarItem(
                        label: localLanguage?.keyTransactions ??
                            LocaleKeys.transactions.tr(),

                        icon: Image.asset(
                          '',
                          fit: BoxFit.contain,
                          height: 24,
                          color: tabsRouter.activeIndex == 1 ? CustomColors.midBlue : CustomColors.black,
                          width: 24,
                        ),
                      ),
                      BottomNavigationBarItem(
                        label: localLanguage?.keySettings ??
                            LocaleKeys.settings.tr(),
                        icon: Image.asset(
                          'AssetImagePath.setting',
                          fit: BoxFit.contain,
                          height: 24,
                          width: 24,
                          color: tabsRouter.activeIndex == 2 ? CustomColors.midBlue : CustomColors.black,
                        ),
                      ),
                        /*if(viewModel.localStorage.retrieveString(StorageKey.countryCode) != '+977')*/ BottomNavigationBarItem(
                        label: localLanguage?.keyPassbook ?? 'Passbook',
                        icon: Image.asset(
                          '',
                          fit: BoxFit.fill,
                          height: 22,
                          color: tabsRouter.activeIndex == 3 ? CustomColors.midBlue : CustomColors.black,
                          width: 24,
                        ),
                      ),
                      BottomNavigationBarItem(
                        label: localLanguage?.keyWhatsapp ??
                            LocaleKeys.whatsapp.tr(),
                        icon: Image.asset(
                          'ssetImagePath.whatsapp',
                          fit: BoxFit.contain,
                          height: 24,
                          width: 24,
                          color: tabsRouter.activeIndex == 4 ? CustomColors.midBlue : CustomColors.black,
                        ),
                      ),
                    ],
                    )),
              );
            },
          );
        });
      },
      isComesUserProfile: comesToUserProfile,
    );
  }
}
