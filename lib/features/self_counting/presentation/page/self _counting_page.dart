import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class SelfCoutingPage extends StatelessWidget {
  const SelfCoutingPage({super.key, required this.maxLevel});

  final int maxLevel;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.selfCounting,
        body: Column(children: [
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
              AppLocalizations.of(context)!.textSelfCounting,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.titleColor,
                  fontFamily: "academy"),
            ),
          ),
        ]),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.masterGameButton,
                onPressed: () {
                  gameBloc.add(CreateGame(maxLevel, false, []));
                  AutoRouter.of(context).push(const EnterNameRoute());
                }),
            const SizedBox(height: 20),
            PrimaryButton(
                text: AppLocalizations.of(context)!.countsPointsButton,
                onPressed: () {
                  gameBloc.add(CreateGame(maxLevel, true, []));
                  AutoRouter.of(context).push(const EnterNameRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.backMaximumLevelButton,
                onPressed: () {
                  context.router.pop();
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}
