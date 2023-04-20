// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:munchkin/features/create_game/presentation/page/create_game_page.dart'
    as _i1;
import 'package:munchkin/features/enter_code/presentation/page/enter_code_page.dart'
    as _i2;
import 'package:munchkin/features/join_game/presentation/page/join_game_page.dart'
    as _i3;
import 'package:munchkin/features/max_level/presentation/page/max_level_page.dart'
    as _i4;
import 'package:munchkin/features/self_counting/presentation/page/self%20_counting_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CreateGameRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnterCodePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.JoinGamePage(),
      );
    },
    MaxLevelRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MaxLevelPage(),
      );
    },
    SelfCoutingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SelfCoutingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateGamePage]
class CreateGameRoute extends _i6.PageRouteInfo<void> {
  const CreateGameRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnterCodePage]
class EnterCodeRoute extends _i6.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.JoinGamePage]
class JoinGameRoute extends _i6.PageRouteInfo<void> {
  const JoinGameRoute({List<_i6.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MaxLevelPage]
class MaxLevelRoute extends _i6.PageRouteInfo<void> {
  const MaxLevelRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MaxLevelRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SelfCoutingPage]
class SelfCoutingRoute extends _i6.PageRouteInfo<void> {
  const SelfCoutingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SelfCoutingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfCoutingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
