// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:munchkin/features/chose_color/presentation/page/chose_color_page.dart'
    as _i8;
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart'
    as _i1;
import 'package:munchkin/features/create_game/presentation/page/create_game_page.dart'
    as _i2;
import 'package:munchkin/features/empty_game/presentation/page/empty_game_page.dart'
    as _i7;
import 'package:munchkin/features/enter_code/presentation/page/enter_code_page.dart'
    as _i3;
import 'package:munchkin/features/enter_name/presentation/page/enter_name_page.dart'
    as _i4;
import 'package:munchkin/features/game/domain/entities/player.dart' as _i15;
import 'package:munchkin/features/game_options/presentation/page/game_options_page.dart'
    as _i10;
import 'package:munchkin/features/join_game/presentation/page/join_game_page.dart'
    as _i5;
import 'package:munchkin/features/max_level/presentation/page/max_level_page.dart'
    as _i9;
import 'package:munchkin/features/multiplayer/presentation/page/multiplayer_page.dart'
    as _i11;
import 'package:munchkin/features/self_counting/presentation/page/self%20_counting_page.dart'
    as _i6;
import 'package:munchkin/features/singleplayer/presentation/page/singleplayer_page.dart'
    as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    ChoseGenderRoute.name: (routeData) {
      final args = routeData.argsAs<ChoseGenderRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ChoseGenderPage(
          key: args.key,
          selectedNameUser: args.selectedNameUser,
        ),
      );
    },
    CreateGameRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EnterCodePage(),
      );
    },
    EnterNameRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EnterNamePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.JoinGamePage(),
      );
    },
    SelfCoutingRoute.name: (routeData) {
      final args = routeData.argsAs<SelfCoutingRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SelfCoutingPage(
          key: args.key,
          maxLevel: args.maxLevel,
        ),
      );
    },
    EmptyGameRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyGamePage(),
      );
    },
    ChoseColorRoute.name: (routeData) {
      final args = routeData.argsAs<ChoseColorRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChoseColorPage(
          key: args.key,
          selectedNameUser: args.selectedNameUser,
          selectedGenderUser: args.selectedGenderUser,
        ),
      );
    },
    MaxLevelRoute.name: (routeData) {
      final args = routeData.argsAs<MaxLevelRouteArgs>(
          orElse: () => const MaxLevelRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MaxLevelPage(key: args.key),
      );
    },
    GameOptionRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.GameOptionPage(),
      );
    },
    MultiplayerRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MultiplayerPage(),
      );
    },
    SinglePlayerRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePlayerRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SinglePlayerPage(
          key: args.key,
          player: args.player,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ChoseGenderPage]
class ChoseGenderRoute extends _i13.PageRouteInfo<ChoseGenderRouteArgs> {
  ChoseGenderRoute({
    _i14.Key? key,
    required String selectedNameUser,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ChoseGenderRoute.name,
          args: ChoseGenderRouteArgs(
            key: key,
            selectedNameUser: selectedNameUser,
          ),
          initialChildren: children,
        );

  static const String name = 'ChoseGenderRoute';

  static const _i13.PageInfo<ChoseGenderRouteArgs> page =
      _i13.PageInfo<ChoseGenderRouteArgs>(name);
}

class ChoseGenderRouteArgs {
  const ChoseGenderRouteArgs({
    this.key,
    required this.selectedNameUser,
  });

  final _i14.Key? key;

  final String selectedNameUser;

  @override
  String toString() {
    return 'ChoseGenderRouteArgs{key: $key, selectedNameUser: $selectedNameUser}';
  }
}

/// generated route for
/// [_i2.CreateGamePage]
class CreateGameRoute extends _i13.PageRouteInfo<void> {
  const CreateGameRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnterCodePage]
class EnterCodeRoute extends _i13.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EnterNamePage]
class EnterNameRoute extends _i13.PageRouteInfo<void> {
  const EnterNameRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EnterNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNameRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.JoinGamePage]
class JoinGameRoute extends _i13.PageRouteInfo<void> {
  const JoinGameRoute({List<_i13.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelfCoutingPage]
class SelfCoutingRoute extends _i13.PageRouteInfo<SelfCoutingRouteArgs> {
  SelfCoutingRoute({
    _i14.Key? key,
    required int maxLevel,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          SelfCoutingRoute.name,
          args: SelfCoutingRouteArgs(
            key: key,
            maxLevel: maxLevel,
          ),
          initialChildren: children,
        );

  static const String name = 'SelfCoutingRoute';

  static const _i13.PageInfo<SelfCoutingRouteArgs> page =
      _i13.PageInfo<SelfCoutingRouteArgs>(name);
}

class SelfCoutingRouteArgs {
  const SelfCoutingRouteArgs({
    this.key,
    required this.maxLevel,
  });

  final _i14.Key? key;

  final int maxLevel;

  @override
  String toString() {
    return 'SelfCoutingRouteArgs{key: $key, maxLevel: $maxLevel}';
  }
}

/// generated route for
/// [_i7.EmptyGamePage]
class EmptyGameRoute extends _i13.PageRouteInfo<void> {
  const EmptyGameRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EmptyGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyGameRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChoseColorPage]
class ChoseColorRoute extends _i13.PageRouteInfo<ChoseColorRouteArgs> {
  ChoseColorRoute({
    _i14.Key? key,
    required String selectedNameUser,
    required _i1.Gender selectedGenderUser,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ChoseColorRoute.name,
          args: ChoseColorRouteArgs(
            key: key,
            selectedNameUser: selectedNameUser,
            selectedGenderUser: selectedGenderUser,
          ),
          initialChildren: children,
        );

  static const String name = 'ChoseColorRoute';

  static const _i13.PageInfo<ChoseColorRouteArgs> page =
      _i13.PageInfo<ChoseColorRouteArgs>(name);
}

class ChoseColorRouteArgs {
  const ChoseColorRouteArgs({
    this.key,
    required this.selectedNameUser,
    required this.selectedGenderUser,
  });

  final _i14.Key? key;

  final String selectedNameUser;

  final _i1.Gender selectedGenderUser;

  @override
  String toString() {
    return 'ChoseColorRouteArgs{key: $key, selectedNameUser: $selectedNameUser, selectedGenderUser: $selectedGenderUser}';
  }
}

/// generated route for
/// [_i9.MaxLevelPage]
class MaxLevelRoute extends _i13.PageRouteInfo<MaxLevelRouteArgs> {
  MaxLevelRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          MaxLevelRoute.name,
          args: MaxLevelRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i13.PageInfo<MaxLevelRouteArgs> page =
      _i13.PageInfo<MaxLevelRouteArgs>(name);
}

class MaxLevelRouteArgs {
  const MaxLevelRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'MaxLevelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.GameOptionPage]
class GameOptionRoute extends _i13.PageRouteInfo<void> {
  const GameOptionRoute({List<_i13.PageRouteInfo>? children})
      : super(
          GameOptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameOptionRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MultiplayerPage]
class MultiplayerRoute extends _i13.PageRouteInfo<void> {
  const MultiplayerRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MultiplayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MultiplayerRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SinglePlayerPage]
class SinglePlayerRoute extends _i13.PageRouteInfo<SinglePlayerRouteArgs> {
  SinglePlayerRoute({
    _i14.Key? key,
    required _i15.Player player,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          SinglePlayerRoute.name,
          args: SinglePlayerRouteArgs(
            key: key,
            player: player,
          ),
          initialChildren: children,
        );

  static const String name = 'SinglePlayerRoute';

  static const _i13.PageInfo<SinglePlayerRouteArgs> page =
      _i13.PageInfo<SinglePlayerRouteArgs>(name);
}

class SinglePlayerRouteArgs {
  const SinglePlayerRouteArgs({
    this.key,
    required this.player,
  });

  final _i14.Key? key;

  final _i15.Player player;

  @override
  String toString() {
    return 'SinglePlayerRouteArgs{key: $key, player: $player}';
  }
}
