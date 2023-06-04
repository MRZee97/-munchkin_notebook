import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class noplayersScreen extends StatelessWidget {
  const noplayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.gameScrinEmpty,
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
              AppLocalizations.of(context)!.textEmptyGame,
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
            IconButton(
                iconSize: 70,
                icon: const Icon(
                  Icons.more_horiz,
                  color: AppColors.titleColor,
                ),
                onPressed: () {
                  context.router.push(GameOptionRoute());
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}
