import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/features/enter_code/presentation/widgets/rendering_pin.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class EnterCodePage extends StatefulWidget {
  EnterCodePage({super.key});

  @override
  State<EnterCodePage> createState() => _EnterCodePageState();
}

class _EnterCodePageState extends State<EnterCodePage> {
  List generatePin() {
    final List pincodes = [];

    for (int k = 0; k < numberCells; k++) {
      pincodes.add(TextEditingController());
    }
    return pincodes;
  }

  @override
  void initState() {
    super.initState();
    pincodes = generatePin();
  }

  List pincodes = [];
  int numberCells = 4;
  String _pincode = "";

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enterCode,
        body: Column(children: [
          const SizedBox(height: 20),
          RenderingPin(numberCells: numberCells, pincodes: pincodes),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              AppLocalizations.of(context)!.textEnterCode,
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
                  for (TextEditingController pincode in pincodes) {
                    _pincode += pincode.text;
                  }
                  print(_pincode);
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnStartScreenButton,
                onPressed: () {
                  context.router.replaceAll([const CreateGameRoute()]);
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}
