import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CreateGameRoute.page,
        ),
        AutoRoute(
          page: MaxLevelRoute.page,
        ),
        AutoRoute(
          page: SelfCoutingRoute.page,
        ),
        AutoRoute(
          page: JoinGameRoute.page,
        ),
        AutoRoute(
          page: EnterCodeRoute.page,
        ),
      ];
}
