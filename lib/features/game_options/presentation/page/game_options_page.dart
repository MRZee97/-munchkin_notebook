import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class GameOptionPage extends StatelessWidget {
  const GameOptionPage({super.key});

  static const TextStyle textRendering = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.gameParameters,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.gameCode,
                    style: textRendering,
                  ),
                  IconButton(
                      iconSize: 25,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.numberPlayers,
                    style: textRendering,
                  ),
                  IconButton(
                      iconSize: 25,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.level,
                    style: textRendering,
                  ),
                  IconButton(
                      iconSize: 25,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.scorePoints,
                    style: textRendering,
                  ),
                  IconButton(
                      iconSize: 25,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {}),
                ],
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.buttonReturnGame,
                onPressed: () {}),
            const SizedBox(height: 38),
          ],
        ));
  }
}
