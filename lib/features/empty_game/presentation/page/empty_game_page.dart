import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

import 'package:munchkin/features/empty_game/presentation/widget/multiplayers_screen.dart';
import 'package:munchkin/features/empty_game/presentation/widget/noplayers_screen.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';

@RoutePage()
class EmptyGamePage extends StatelessWidget {
  const EmptyGamePage({super.key});

  static const screenMargins = EdgeInsets.all(8.0);
  static const TextStyle textRendering = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      bloc: gameBloc,
      builder: (context, state) {
        if (state is GameCreated && state.game.players.length == 1) {
          return const noplayersScreen();
        } else {
          return const MyltiPlayersPage();
        }
      },
    );
  }
}
