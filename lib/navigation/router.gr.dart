// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:munchkin/features/base_page/presentation/page/chose_color/presentation/page/chose_color_page.dart'
    as _i8;
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart'
    as _i1;
import 'package:munchkin/features/create_game/presentation/page/create_game_page.dart'
    as _i2;
import 'package:munchkin/features/empty_game/presentation/page/empty_game_page.dart'
    as _i9;
import 'package:munchkin/features/enter_code/presentation/page/enter_code_page.dart'
    as _i3;
import 'package:munchkin/features/enter_name/presentation/page/enter_name_page.dart'
    as _i4;
import 'package:munchkin/features/join_game/presentation/page/join_game_page.dart'
    as _i5;
import 'package:munchkin/features/max_level/presentation/page/max_level_page.dart'
    as _i6;
import 'package:munchkin/features/self_counting/presentation/page/self%20_counting_page.dart'
    as _i7;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    ChoseGenderRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChoseGenderPage(),
      );
    },
    CreateGameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EnterCodePage(),
      );
    },
    EnterNameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EnterNamePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.JoinGamePage(),
      );
    },
    MaxLevelRoute.name: (routeData) {
      final args = routeData.argsAs<MaxLevelRouteArgs>(
          orElse: () => const MaxLevelRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.MaxLevelPage(key: args.key),
      );
    },
    SelfCoutingRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SelfCoutingPage(),
      );
    },
    ChoseColorRoute.name: (routeData) {
      final args = routeData.argsAs<ChoseColorRouteArgs>(
          orElse: () => const ChoseColorRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChoseColorPage(key: args.key),
      );
    },
    EmptyGameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.EmptyGamePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChoseGenderPage]
class ChoseGenderRoute extends _i10.PageRouteInfo<void> {
  const ChoseGenderRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ChoseGenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChoseGenderRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateGamePage]
class CreateGameRoute extends _i10.PageRouteInfo<void> {
  const CreateGameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnterCodePage]
class EnterCodeRoute extends _i10.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EnterNamePage]
class EnterNameRoute extends _i10.PageRouteInfo<void> {
  const EnterNameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EnterNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.JoinGamePage]
class JoinGameRoute extends _i10.PageRouteInfo<void> {
  const JoinGameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MaxLevelPage]
class MaxLevelRoute extends _i10.PageRouteInfo<MaxLevelRouteArgs> {
  MaxLevelRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MaxLevelRoute.name,
          args: MaxLevelRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i10.PageInfo<MaxLevelRouteArgs> page =
      _i10.PageInfo<MaxLevelRouteArgs>(name);
}

class MaxLevelRouteArgs {
  const MaxLevelRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'MaxLevelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.SelfCoutingPage]
class SelfCoutingRoute extends _i10.PageRouteInfo<void> {
  const SelfCoutingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SelfCoutingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfCoutingRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChoseColorPage]
class ChoseColorRoute extends _i10.PageRouteInfo<ChoseColorRouteArgs> {
  ChoseColorRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ChoseColorRoute.name,
          args: ChoseColorRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChoseColorRoute';

  static const _i10.PageInfo<ChoseColorRouteArgs> page =
      _i10.PageInfo<ChoseColorRouteArgs>(name);
}

class ChoseColorRouteArgs {
  const ChoseColorRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ChoseColorRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.EmptyGamePage]
class EmptyGameRoute extends _i10.PageRouteInfo<void> {
  const EmptyGameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EmptyGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyGameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
