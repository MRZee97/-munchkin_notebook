import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

import '../widgets/player_characteristics.dart';

@RoutePage()
class EmptyGamePage extends StatelessWidget {
  const EmptyGamePage({super.key});

  static const _screenMargins = EdgeInsets.all(10.0);
  static const double _containerWidth = 120;
  static const double _containerHeight = 160;
  static const TextStyle _textRenderingMultiplePlayers = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");
  static const TextStyle _textRenderingEmptyGame = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor,
      fontFamily: "academy");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      bloc: gameBloc,
      builder: (context, state) {
        if (state is GameCreated) {
          return BasePage(
              title: AppLocalizations.of(context)!.gameScreen,
              body: state.game.players.length <= 1
                  ? Column(children: [
                      const SizedBox(height: 20),
                      Container(
                        color: AppColors.shapeColor,
                        width: _containerWidth,
                        height: _containerHeight,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: _screenMargins,
                        child: Text(
                          AppLocalizations.of(context)!.textEmptyGame,
                          style: _textRenderingEmptyGame,
                        ),
                      ),
                    ])
                  : ListView.builder(
                      itemCount: state.game.players.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final bonusPoints = state.game.players[index].bonuses +
                            state.game.players[index].level;
                        return PlayerCharacteristics(
                            textRenderingMultiplePlayers:
                                _textRenderingMultiplePlayers,
                            bonusPoints: bonusPoints,
                            player: state.game.players[index]);
                      }),
              actions: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      iconSize: 70,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {
                        context.router.push(const GameOptionRoute());
                      }),
                  const SizedBox(height: 20),
                ],
              ));
        } else {
          return Container();
        }
      },
    );
  }
}
