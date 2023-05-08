import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

@RoutePage()
class EnterCodePage extends StatelessWidget {
  EnterCodePage({super.key});

  TextEditingController _textEditingControllerFirst = TextEditingController();
  TextEditingController _textEditingControllerSecond = TextEditingController();
  TextEditingController _textEditingControllerThird = TextEditingController();
  TextEditingController _textEditingControllerFourth = TextEditingController();
  String _pincode = "";
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enterCode,
        body: Column(children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Otp(controller: _textEditingControllerFirst),
              Otp(controller: _textEditingControllerSecond),
              Otp(controller: _textEditingControllerThird),
              Otp(controller: _textEditingControllerFourth),
            ],
          ),
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
                  _pincode = _textEditingControllerFirst.text +
                      _textEditingControllerSecond.text +
                      _textEditingControllerThird.text +
                      _textEditingControllerFourth.text;
                  print(_pincode);
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnStartScreenButton,
                onPressed: () {
                  AutoRouter.of(context).replaceAll([const CreateGameRoute()]);
                }),
            const SizedBox(height: 20),
          ],
        ));
  }
}

class Otp extends StatelessWidget {
  Otp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 4,
              color: Colors.black,
            ),
          ),
        ),
        keyboardType: TextInputType.number,
        style: const TextStyle(
            color: Colors.black, fontSize: 48, fontFamily: "academy"),
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }
}
