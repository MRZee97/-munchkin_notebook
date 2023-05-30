import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:munchkin/core/ui/widgets/image_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.createGame,
        body: Column(children: [
          const SizedBox(height: 20),
          ImageWidget(
            image: AppLocalizations.of(context)!.logoImage,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              AppLocalizations.of(context)!.textCreateGame,
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
                text: AppLocalizations.of(context)!.createGame,
                onPressed: () {
                  context.router.push(MaxLevelRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.gameButtonCreated,
                onPressed: () {
                  context.router.push(const JoinGameRoute());
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
