import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

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
        if (state is GameCreated) {
          return BasePage(
              title: AppLocalizations.of(context)!.gameScreen,
              body: state.game.players.length <= 1
                  ? Column(children: [
                      const SizedBox(height: 20),
                      Container(
                        color: AppColors.shapeColor,
                        width: 120,
                        height: 160,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          AppLocalizations.of(context)!.textEmptyGame,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.titleColor,
                              fontFamily: "academy"),
                        ),
                      ),
                    ])
                  : ListView.builder(
                      itemCount: state.game.players.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final bonusPoints = state.game.players[index].bonuses +
                            state.game.players[index].level;
                        return Column(
                          children: [
                            InkWell(
                              onTap: () => context.router.push(PlayerRoute(
                                  player: state.game.players[index])),
                              child: Row(
                                children: [
                                  Text(
                                    state.game.players[index].name,
                                    style: textRendering,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                    AppLocalizations.of(context)!.starImage,
                                    height: 20),
                                Text(
                                  state.game.players[index].level.toString(),
                                  style: textRendering,
                                ),
                                Image.asset(
                                    AppLocalizations.of(context)!.vectorImage,
                                    height: 20),
                                Text(
                                  state.game.players[index].bonuses.toString(),
                                  style: textRendering,
                                ),
                                Image.asset(
                                    AppLocalizations.of(context)!.unionImage,
                                    height: 20),
                                Text(
                                  bonusPoints.toString(),
                                  style: textRendering,
                                ),
                                SizedBox(width: 119),
                                const Icon(
                                  Icons.more_horiz,
                                  color: AppColors.titleColor,
                                ),
                              ],
                            ),
                          ],
                        );
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
                        context.router.push(GameOptionRoute());
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
