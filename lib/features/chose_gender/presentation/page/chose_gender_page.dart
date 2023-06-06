import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

import '../widgets/gender_selection.dart';

enum Gender { man, woman }

@RoutePage()
class ChoseGenderPage extends StatefulWidget {
  const ChoseGenderPage({super.key, required this.selectedNameUser});

  final String selectedNameUser;
  static const double _containerWidth = 120;
  static const double _containerHeight = 160;

  @override
  State<ChoseGenderPage> createState() => _ChoseGenderPageState();
}

class _ChoseGenderPageState extends State<ChoseGenderPage> {
  Gender _choseGender = Gender.man;
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.sexChose,
        body: Column(children: [
          const SizedBox(height: 20),
          Container(
            color: AppColors.shapeColor,
            width: ChoseGenderPage._containerWidth,
            height: ChoseGenderPage._containerHeight,
          ),
          const SizedBox(height: 20),
          GenderSelection(
            choseGender: _choseGender,
            onTap: (gender) {
              setState(() {
                _choseGender = gender;
              });
            },
          ),
        ]),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.resumeButton,
                onPressed: () {
                  context.router.push(ChoseColorRoute(
                      selectedNameUser: widget.selectedNameUser,
                      selectedGenderUser: _choseGender));
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.backName,
                onPressed: () {
                  context.router.pop();
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}
