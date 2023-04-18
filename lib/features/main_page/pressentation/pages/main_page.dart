import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              AutoRouter.of(context).navigate(const SecondRoute());
            },
            child: Image.asset(
              AppLocalizations.of(context)!.logoImage,
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(AppLocalizations.of(context)!.helloWorld),
        ],
      ),
    );
  }
}
