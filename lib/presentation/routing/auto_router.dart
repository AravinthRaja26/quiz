import 'package:auto_route/auto_route.dart';
import 'package:nikitchem/presentation/routing/guard/tutorial_guard.dart';
import 'auto_router.gr.dart';

///
/// AppRouter class
///
@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends RootStackRouter {


  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <CupertinoRoute>[

        CupertinoRoute(
            page: QuizScreen.page,
            path: '/',
            keepHistory: true,
            initial: true),

      ];
}
