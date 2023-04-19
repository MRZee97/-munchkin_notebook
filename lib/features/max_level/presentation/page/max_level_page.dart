import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:munchkin/core/ui/widgets/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class MaxLevelPage extends StatelessWidget {
  const MaxLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BasePage(
          title: AppLocalizations.of(context)!.maxLevel,
          body: Column(children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                    iconSize: 70,
                    icon: const Icon(
                      Icons.arrow_left_outlined,
                      color: AppColors.titleColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                const Text("10",
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: AppColors.titleColor,
                        fontFamily: "academy")),
                IconButton(
                  iconSize: 70,
                  icon: const Icon(
                    Icons.arrow_right_outlined,
                    color: AppColors.titleColor,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                AppLocalizations.of(context)!.textMaxLevel,
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
                  text: AppLocalizations.of(context)!.resumeButton,
                  onPressed: () {
                    AutoRouter.of(context).push(const SelfCoutingRoute());
                  }),
              const SizedBox(height: 20),
              SecondaryButton(
                  text: AppLocalizations.of(context)!.willButtonReturn,
                  onPressed: () {
                    AutoRouter.of(context).pop(const CreateGameRoute());
                  }),
              const SizedBox(height: 38),
            ],
          )),
    );
  }
}
