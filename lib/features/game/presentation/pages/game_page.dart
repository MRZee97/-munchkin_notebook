import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "Game",
      body: Expanded(
        child: BlocBuilder<GameBloc, GameState>(
          bloc: gameBloc,
          builder: (context, state) {
            if (state is GameCreated) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("max level: ${state.game.maxLevel}"),
                  Text("is GM: ${state.game.isAnarchy}"),
                ],
              );
            } else {
              return Text("Game is not");
            }
          },
        ),
      ),
      actions: PrimaryButton(
        onPressed: () {
          context.router.navigate(MaxLevelRoute());
        },
        text: "Chenge max level",
      ),
    );
  }
}
