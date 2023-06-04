import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class MyltiPlayersPage extends StatefulWidget {
  const MyltiPlayersPage({super.key});

  @override
  State<MyltiPlayersPage> createState() => _MyltiPlayersPageState();
}

class _MyltiPlayersPageState extends State<MyltiPlayersPage> {
  static const TextStyle textRendering = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");
  static const screenMargins = EdgeInsets.all(8.0);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.gameScrinEmpty,
        body: Padding(
          padding: screenMargins,
          child: BlocBuilder<GameBloc, GameState>(
            bloc: gameBloc,
            builder: (context, state) {
              if (state is GameCreated) {
                return ListView.builder(
                    itemCount: state.game.players.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final bonusPoints = state.game.players[index].bonuses +
                          state.game.players[index].level;
                      return Column(
                        children: [
                          InkWell(
                            onTap: () => context.router.push(PlayerRoute(
                                name: state.game.players[index].name,
                                level: state.game.players[index].level,
                                bonuses: state.game.players[index].bonuses,
                                force: bonusPoints)),
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
                              Image.asset("assets/images/star.png", height: 20),
                              Text(
                                state.game.players[index].level.toString(),
                                style: textRendering,
                              ),
                              Image.asset("assets/images/vector.png",
                                  height: 20),
                              Text(
                                state.game.players[index].bonuses.toString(),
                                style: textRendering,
                              ),
                              Image.asset("assets/images/union.png",
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
                    });
              } else {
                return Container();
              }
            },
          ),
        ),
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
  }
}
