import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/bloc/bloc/counter_bloc_bloc.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/page/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class MaxLevelPage extends StatefulWidget {
  const MaxLevelPage({super.key});

  @override
  State<MaxLevelPage> createState() => _MaxLevelPageState();
}

class _MaxLevelPageState extends State<MaxLevelPage> {
  CounterBloc bloc = CounterBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

//  checkText() {
//     if (counter == 5) {
//       return AppLocalizations.of(context)!.textCreateGame;
//     } else {
//       return AppLocalizations.of(context)!.textMaxLevel;
//     }
//   } пока не знаю как реализвоать

  @override
  Widget build(BuildContext context) {
    return Material(
        child: StreamBuilder(
      stream: bloc.outputStateStream,
      initialData: 0,
      builder: (context, snaphot) {
        return BasePage(
            title: AppLocalizations.of(context)!.maxLevel,
            body: Column(children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: IconButton(
                      iconSize: 70,
                      icon: Icon(
                        Icons.arrow_left_outlined,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {
                        bloc.inputEventSink.add(CounterEvent.eventIncrement);
                      },
                    ),
                  ),
                  Text("${snaphot.data}",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: AppColors.titleColor,
                          fontFamily: "academy")),
                  IconButton(
                      iconSize: 70,
                      icon: Icon(
                        Icons.arrow_right_outlined,
                        color: AppColors.titleColor,
                      ),
                      onPressed: () {
                        bloc.inputEventSink.add(CounterEvent.eventDecrement);
                      })
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
            ));
      },
    ));
  }
}
