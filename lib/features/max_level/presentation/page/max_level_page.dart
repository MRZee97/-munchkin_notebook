import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

import '../controllers/level_selection.dart';

@RoutePage()
class MaxLevelPage extends StatelessWidget {
  MaxLevelPage({super.key});

  final MaxLevelController _maxLevelController =
      MaxLevelController(initialvalue: 7);
  static const TextStyle _textRendering = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor,
      fontFamily: "academy");
  static const _screenMargins = EdgeInsets.symmetric(horizontal: 10);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BasePage(
          title: AppLocalizations.of(context)!.maxLevel,
          body: Column(children: [
            const SizedBox(height: 20),
            LvlSelectionGroup(
              controller: _maxLevelController,
            ),
            Padding(
              padding: _screenMargins,
              child: Text(
                AppLocalizations.of(context)!.textMaxLevel,
                style: _textRendering,
              ),
            ),
          ]),
          actions: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PrimaryButton(
                  text: AppLocalizations.of(context)!.resumeButton,
                  onPressed: () {
                    AutoRouter.of(context).push(SelfCoutingRoute(
                        maxLevel: _maxLevelController.getCurrentLevel));
                  }),
              const SizedBox(height: 20),
              SecondaryButton(
                  text: AppLocalizations.of(context)!.willButtonReturn,
                  onPressed: () {
                    context.router.pop();
                  }),
              const SizedBox(height: 38),
            ],
          )),
    );
  }
}
