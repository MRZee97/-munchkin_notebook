// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:munchkin/features/create_game/presentation/page/create_game_page.dart'
    as _i3;
import 'package:munchkin/features/enter_code/presentation/page/enter_code_page.dart'
    as _i7;
import 'package:munchkin/features/join_game/presentation/page/join_game_page.dart'
    as _i6;
import 'package:munchkin/features/main_page/pressentation/pages/main_page.dart'
    as _i1;
import 'package:munchkin/features/max_level/presentation/page/max_level_page.dart'
    as _i4;
import 'package:munchkin/features/second_page/presentation/pages/second_page.dart'
    as _i2;
import 'package:munchkin/features/self_counting/presentation/page/self%20_counting_page.dart'
    as _i5;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SecondPage(),
      );
    },
    CreateGameRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGamePage(),
      );
    },
    MaxLevelRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MaxLevelPage(),
      );
    },
    SelfCoutingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SelfCoutingPage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.JoinGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EnterCodePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i8.PageRouteInfo<void> {
  const SecondRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateGamePage]
class CreateGameRoute extends _i8.PageRouteInfo<void> {
  const CreateGameRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MaxLevelPage]
class MaxLevelRoute extends _i8.PageRouteInfo<void> {
  const MaxLevelRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MaxLevelRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SelfCoutingPage]
class SelfCoutingRoute extends _i8.PageRouteInfo<void> {
  const SelfCoutingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SelfCoutingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfCoutingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.JoinGamePage]
class JoinGameRoute extends _i8.PageRouteInfo<void> {
  const JoinGameRoute({List<_i8.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EnterCodePage]
class EnterCodeRoute extends _i8.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
