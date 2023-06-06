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

  static const TextStyle _textRendering = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor,
      fontFamily: "academy");
  static const _screenMargins = EdgeInsets.symmetric(horizontal: 10);
  static const double _containerWidth = 120;
  static const double _containerHeight = 160;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.joinGame,
        body: Column(children: [
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
              AppLocalizations.of(context)!.textJoinGame,
              style: _textRendering,
            ),
          ),
        ]),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.joinGameButton,
                onPressed: () {
                  AutoRouter.of(context).push(EnterCodeRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.gameNotCreatedButton,
                onPressed: () {
                  context.router.replaceAll([const CreateGameRoute()]);
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
