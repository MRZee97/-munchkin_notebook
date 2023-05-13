import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';

import 'package:munchkin/features/chose_color/presentation/widgets/color_selection.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class ChoseColorPage extends StatefulWidget {
  ChoseColorPage({super.key});
  static const itemCount = 35;
  @override
  State<ChoseColorPage> createState() => _ChoseColorPageState();
}

class _ChoseColorPageState extends State<ChoseColorPage> {
  late ColorController _controller;
  List generateColors() {
    final List colors = [];
    for (int k = 0; k <= ChoseColorPage.itemCount; k++) {
      colors.add(Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0));
    }
    return colors;
  }

  @override
  void initState() {
    super.initState();
    _colors = generateColors();
    _controller = ColorController(initialvalue: _colors[0]);
  }

  List _colors = [];

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.colorChose,
        body: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ColorSelection(
                    itemCount: ChoseColorPage.itemCount,
                    colors: _colors,
                    controller: _controller),
              ),
            ],
          ),
        ),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.resumeButton,
                onPressed: () {
                  AutoRouter.of(context).push(const EmptyGameRoute());
                  print(_controller.indexColor);
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnSexButton,
                onPressed: () {
                  AutoRouter.of(context).pop(ChoseGenderRoute());
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
