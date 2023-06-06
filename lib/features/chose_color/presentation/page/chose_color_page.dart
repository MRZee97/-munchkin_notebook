import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';

import 'package:munchkin/features/chose_color/presentation/widgets/color_selection.dart';
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart';
import 'package:munchkin/features/game/domain/entities/player.dart';
import 'package:munchkin/features/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:munchkin/main.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class ChoseColorPage extends StatefulWidget {
  const ChoseColorPage(
      {super.key,
      required this.selectedNameUser,
      required this.selectedGenderUser});
  static const itemCount = 35;
  final String selectedNameUser;
  final Gender selectedGenderUser;

  @override
  State<ChoseColorPage> createState() => _ChoseColorPageState();
}

class _ChoseColorPageState extends State<ChoseColorPage> {
  late Color _choseColor;
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
    _choseColor = _colors[0];
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
                    choseColor: _choseColor,
                    onTap: (color) {
                      setState(() {
                        _choseColor = color;
                      });
                    }),
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
                  gameBloc.add(AddPlayer(Player(
                      name: widget.selectedNameUser,
                      gender: widget.selectedGenderUser,
                      color: _choseColor,
                      level: 1,
                      bonuses: 0)));
                  context.router.push(const EmptyGameRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnSexButton,
                onPressed: () {
                  context.router.pop();
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
