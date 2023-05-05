import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class ChoseColorPage extends StatefulWidget {
  ChoseColorPage({super.key});

  @override
  State<ChoseColorPage> createState() => _ChoseColorPageState();
}

bool isSelected = false;

class _ChoseColorPageState extends State<ChoseColorPage> {
  List colors = [];
  int selectedIndex = 0;

  List generateColors() {
    List colors = [];
    for (int k = 0; k <= 35; k++) {
      colors.add(Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0));
    }
    return colors;
  }

  @override
  void initState() {
    super.initState();
    colors = generateColors();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.colorChose,
        body: Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisExtent: 40,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 35,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          child: selectedIndex == index
                              ? Icon(
                                  Icons.check,
                                  color: Colors.black,
                                )
                              : null,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: colors[index],
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
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
                  AutoRouter.of(context).push(const EmptyGameRoute());
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnSexButton,
                onPressed: () {
                  AutoRouter.of(context).pop(const ChoseGenderRoute());
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
