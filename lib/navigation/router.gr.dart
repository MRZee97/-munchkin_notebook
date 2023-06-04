// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:munchkin/features/chose_color/presentation/page/chose_color_page.dart'
    as _i8;
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart'
    as _i1;
import 'package:munchkin/features/create_game/presentation/page/create_game_page.dart'
    as _i2;
import 'package:munchkin/features/empty_game/presentation/page/empty_game_page.dart'
    as _i7;
import 'package:munchkin/features/empty_game/presentation/widget/multiplayers_screen.dart'
    as _i14;
import 'package:munchkin/features/empty_game/presentation/widget/noplayers_screen.dart'
    as _i13;
import 'package:munchkin/features/enter_code/presentation/page/enter_code_page.dart'
    as _i3;
import 'package:munchkin/features/enter_name/presentation/page/enter_name_page.dart'
    as _i4;
import 'package:munchkin/features/game_options/presentation/page/game_options_page.dart'
    as _i10;
import 'package:munchkin/features/join_game/presentation/page/join_game_page.dart'
    as _i5;
import 'package:munchkin/features/list_players/presentation/page/list_players_page.dart'
    as _i11;
import 'package:munchkin/features/max_level/presentation/page/max_level_page.dart'
    as _i9;
import 'package:munchkin/features/player_page/presentation/page/player_page.dart'
    as _i12;
import 'package:munchkin/features/self_counting/presentation/page/self%20_counting_page.dart'
    as _i6;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    ChoseGenderRoute.name: (routeData) {
      final args = routeData.argsAs<ChoseGenderRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ChoseGenderPage(
          key: args.key,
          selectedNameUser: args.selectedNameUser,
        ),
      );
    },
    CreateGameRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      final args = routeData.argsAs<EnterCodeRouteArgs>(
          orElse: () => const EnterCodeRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EnterCodePage(key: args.key),
      );
    },
    EnterNameRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EnterNamePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.JoinGamePage(),
      );
    },
    SelfCoutingRoute.name: (routeData) {
      final args = routeData.argsAs<SelfCoutingRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SelfCoutingPage(
          key: args.key,
          maxLevel: args.maxLevel,
        ),
      );
    },
    EmptyGameRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyGamePage(),
      );
    },
    ChoseColorRoute.name: (routeData) {
      final args = routeData.argsAs<ChoseColorRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MaxLevelPage(key: args.key),
      );
    },
    GameOptionRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.GameOptionPage(),
      );
    },
    ListPlayersRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ListPlayersPage(),
      );
    },
    PlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.PlayerPage(
          key: args.key,
          name: args.name,
          level: args.level,
          bonuses: args.bonuses,
          force: args.force,
        ),
      );
    },
    NoplayersRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.noplayersScreen(),
      );
    },
    MyltiPlayersRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.MyltiPlayersPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChoseGenderPage]
class ChoseGenderRoute extends _i15.PageRouteInfo<ChoseGenderRouteArgs> {
  ChoseGenderRoute({
    _i16.Key? key,
    required String selectedNameUser,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ChoseGenderRoute.name,
          args: ChoseGenderRouteArgs(
            key: key,
            selectedNameUser: selectedNameUser,
          ),
          initialChildren: children,
        );

  static const String name = 'ChoseGenderRoute';

  static const _i15.PageInfo<ChoseGenderRouteArgs> page =
      _i15.PageInfo<ChoseGenderRouteArgs>(name);
}

class ChoseGenderRouteArgs {
  const ChoseGenderRouteArgs({
    this.key,
    required this.selectedNameUser,
  });

  final _i16.Key? key;

  final String selectedNameUser;

  @override
  String toString() {
    return 'ChoseGenderRouteArgs{key: $key, selectedNameUser: $selectedNameUser}';
  }
}

/// generated route for
/// [_i2.CreateGamePage]
class CreateGameRoute extends _i15.PageRouteInfo<void> {
  const CreateGameRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnterCodePage]
class EnterCodeRoute extends _i15.PageRouteInfo<EnterCodeRouteArgs> {
  EnterCodeRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          EnterCodeRoute.name,
          args: EnterCodeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i15.PageInfo<EnterCodeRouteArgs> page =
      _i15.PageInfo<EnterCodeRouteArgs>(name);
}

class EnterCodeRouteArgs {
  const EnterCodeRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'EnterCodeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.EnterNamePage]
class EnterNameRoute extends _i15.PageRouteInfo<void> {
  const EnterNameRoute({List<_i15.PageRouteInfo>? children})
      : super(
          EnterNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNameRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.JoinGamePage]
class JoinGameRoute extends _i15.PageRouteInfo<void> {
  const JoinGameRoute({List<_i15.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelfCoutingPage]
class SelfCoutingRoute extends _i15.PageRouteInfo<SelfCoutingRouteArgs> {
  SelfCoutingRoute({
    _i16.Key? key,
    required int maxLevel,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SelfCoutingRoute.name,
          args: SelfCoutingRouteArgs(
            key: key,
            maxLevel: maxLevel,
          ),
          initialChildren: children,
        );

  static const String name = 'SelfCoutingRoute';

  static const _i15.PageInfo<SelfCoutingRouteArgs> page =
      _i15.PageInfo<SelfCoutingRouteArgs>(name);
}

class SelfCoutingRouteArgs {
  const SelfCoutingRouteArgs({
    this.key,
    required this.maxLevel,
  });

  final _i16.Key? key;

  final int maxLevel;

  @override
  String toString() {
    return 'SelfCoutingRouteArgs{key: $key, maxLevel: $maxLevel}';
  }
}

/// generated route for
/// [_i7.EmptyGamePage]
class EmptyGameRoute extends _i15.PageRouteInfo<void> {
  const EmptyGameRoute({List<_i15.PageRouteInfo>? children})
      : super(
          EmptyGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyGameRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChoseColorPage]
class ChoseColorRoute extends _i15.PageRouteInfo<ChoseColorRouteArgs> {
  ChoseColorRoute({
    _i16.Key? key,
    required String selectedNameUser,
    required _i1.Gender selectedGenderUser,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<ChoseColorRouteArgs> page =
      _i15.PageInfo<ChoseColorRouteArgs>(name);
}

class ChoseColorRouteArgs {
  const ChoseColorRouteArgs({
    this.key,
    required this.selectedNameUser,
    required this.selectedGenderUser,
  });

  final _i16.Key? key;

  final String selectedNameUser;

  final _i1.Gender selectedGenderUser;

  @override
  String toString() {
    return 'ChoseColorRouteArgs{key: $key, selectedNameUser: $selectedNameUser, selectedGenderUser: $selectedGenderUser}';
  }
}

/// generated route for
/// [_i9.MaxLevelPage]
class MaxLevelRoute extends _i15.PageRouteInfo<MaxLevelRouteArgs> {
  MaxLevelRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MaxLevelRoute.name,
          args: MaxLevelRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i15.PageInfo<MaxLevelRouteArgs> page =
      _i15.PageInfo<MaxLevelRouteArgs>(name);
}

class MaxLevelRouteArgs {
  const MaxLevelRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'MaxLevelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.GameOptionPage]
class GameOptionRoute extends _i15.PageRouteInfo<void> {
  const GameOptionRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GameOptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameOptionRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ListPlayersPage]
class ListPlayersRoute extends _i15.PageRouteInfo<void> {
  const ListPlayersRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ListPlayersRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListPlayersRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PlayerPage]
class PlayerRoute extends _i15.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    _i16.Key? key,
    required String name,
    required int level,
    required int bonuses,
    required int force,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            key: key,
            name: name,
            level: level,
            bonuses: bonuses,
            force: force,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const _i15.PageInfo<PlayerRouteArgs> page =
      _i15.PageInfo<PlayerRouteArgs>(name);
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.name,
    required this.level,
    required this.bonuses,
    required this.force,
  });

  final _i16.Key? key;

  final String name;

  final int level;

  final int bonuses;

  final int force;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, name: $name, level: $level, bonuses: $bonuses, force: $force}';
  }
}

/// generated route for
/// [_i13.noplayersScreen]
class NoplayersRoute extends _i15.PageRouteInfo<void> {
  const NoplayersRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NoplayersRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoplayersRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MyltiPlayersPage]
class MyltiPlayersRoute extends _i15.PageRouteInfo<void> {
  const MyltiPlayersRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MyltiPlayersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyltiPlayersRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
