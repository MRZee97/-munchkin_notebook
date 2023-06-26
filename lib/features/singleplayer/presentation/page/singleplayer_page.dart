import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/features/game/domain/entities/player.dart';

@RoutePage()
class SinglePlayerPage extends StatefulWidget {
  const SinglePlayerPage({
    super.key,
    required this.player,
  });

  final Player player;

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
  State<SinglePlayerPage> createState() => _SinglePlayerPageState();
}

class _SinglePlayerPageState extends State<SinglePlayerPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: widget.player.name,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(AppLocalizations.of(context)!.indicatorLevel,
                style: SinglePlayerPage.textParameters),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppLocalizations.of(context)!.leftImage, width: 25),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.starImage,
                    height: 35),
                const SizedBox(width: 10),
                Text(widget.player.level.toString(),
                    style: SinglePlayerPage.textRendering),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.rightImage,
                    width: 25),
              ],
            ),
            const SizedBox(height: 40),
            Text(AppLocalizations.of(context)!.indicatorBonuses,
                style: SinglePlayerPage.textParameters),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppLocalizations.of(context)!.leftImage, width: 25),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.vectorImage,
                    height: 35),
                const SizedBox(width: 10),
                Text(widget.player.bonuses.toString(),
                    style: SinglePlayerPage.textRendering),
                const SizedBox(width: 20),
                Image.asset(AppLocalizations.of(context)!.rightImage,
                    width: 25),
              ],
            ),
            const SizedBox(height: 30),
            Text(AppLocalizations.of(context)!.indicatorStrength,
                style: SinglePlayerPage.textParameters),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppLocalizations.of(context)!.unionImage,
                    height: 35),
                const SizedBox(width: 10),
                Text((widget.player.level + widget.player.bonuses).toString(),
                    style: SinglePlayerPage.textRendering),
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
