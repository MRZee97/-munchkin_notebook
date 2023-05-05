import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class JoinGamePage extends StatelessWidget {
  const JoinGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.joinGame,
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
              AppLocalizations.of(context)!.textJoinGame,
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
                text: AppLocalizations.of(context)!.joinGameButton,
                onPressed: () {
                  AutoRouter.of(context).push(const EnterCodeRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.gameNotCreatedButton,
                onPressed: () {}),
            const SizedBox(height: 38),
          ],
        ));
  }
}
