import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class MultiplayerPage extends StatelessWidget {
  const MultiplayerPage({super.key});

  static const TextStyle textRendering = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");

  static const screenMargins = EdgeInsets.all(8.0);
  static const double magnitudeSize = 25;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.listPlayers,
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
                      return InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.game.players[index].name,
                              style: textRendering,
                            ),
                            const Icon(
                              Icons.more_horiz,
                              color: AppColors.titleColor,
                            ),
                          ],
                        ),
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
            PrimaryButton(
                text: AppLocalizations.of(context)!.addPlayer,
                onPressed: () {
                  AutoRouter.of(context).push(const EnterNameRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnParameters,
                onPressed: () {
                  context.router.pop();
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}
