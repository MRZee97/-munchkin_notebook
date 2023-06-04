import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class PlayerPage extends StatefulWidget {
  const PlayerPage(
      {super.key,
      required this.name,
      required this.level,
      required this.bonuses,
      required this.force});

  final String name;
  final int level;
  final int bonuses;
  final int force;

  static const TextStyle textRendering = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  static const TextStyle textRendering = TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");

  static const TextStyle textParameters = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: widget.name,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(AppLocalizations.of(context)!.indicatorLevel,
                style: textParameters),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppLocalizations.of(context)!.leftImage, width: 25),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.starImage,
                    height: 35),
                const SizedBox(width: 10),
                Text(widget.level.toString(), style: textRendering),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.rightImage,
                    width: 25),
              ],
            ),
            const SizedBox(height: 40),
            Text(AppLocalizations.of(context)!.indicatorBonuses,
                style: textParameters),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppLocalizations.of(context)!.leftImage, width: 25),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.starImage,
                    height: 35),
                const SizedBox(width: 10),
                Text(widget.bonuses.toString(), style: textRendering),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.rightImage,
                    width: 25),
              ],
            ),
            const SizedBox(height: 30),
            Text(AppLocalizations.of(context)!.indicatorStrength,
                style: textParameters),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/union.png", height: 40),
                const SizedBox(width: 10),
                Text(widget.force.toString(), style: textRendering),
              ],
            ),
          ],
        ),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SecondaryButton(
                text: AppLocalizations.of(context)!.buttonReturnGame,
                onPressed: () {
                  context.router.pop();
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
