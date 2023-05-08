import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

import 'gender_selection.dart';

enum Gender { Man, Woman }

@RoutePage()
class ChoseGenderPage extends StatelessWidget {
  ChoseGenderPage({super.key});

  Gender _gender = Gender.Man;
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.sexChose,
        body: Column(children: [
          const SizedBox(height: 20),
          Container(
            color: AppColors.shapeColor,
            width: 120,
            height: 160,
          ),
          const SizedBox(height: 20),
          GenderSelection(
            gender: _gender,
          ),
        ]),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.resumeButton,
                onPressed: () {
                  AutoRouter.of(context).push(ChoseColorRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.backName,
                onPressed: () {
                  AutoRouter.of(context).pop(const EnterNameRoute());
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}
