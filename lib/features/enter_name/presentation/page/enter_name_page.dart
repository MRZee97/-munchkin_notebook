import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:munchkin/core/ui/widgets/image_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/core/ui/widgets/primary_button.dart';
import 'package:munchkin/core/ui/widgets/secondary_button.dart';
import 'package:munchkin/features/base_page/presentation/base_page.dart';
import 'package:munchkin/navigation/router.gr.dart';

@RoutePage()
class EnterNamePage extends StatefulWidget {
  const EnterNamePage({super.key});

  @override
  State<EnterNamePage> createState() => _EnterNamePageState();
}

class _EnterNamePageState extends State<EnterNamePage> {
  String name = "";
  final _nameEditingController = TextEditingController();

  @override
  void dispose() {
    _nameEditingController.dispose();
    super.dispose();
  }

  static const TextStyle _textRendering = TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: AppColors.titleColor,
      fontFamily: "academy");
  static const _screenMargins = EdgeInsets.symmetric(
    horizontal: 40,
  );

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enterName,
        body: Column(children: [
          const SizedBox(height: 20),
          ImageWidget(
            image: AppLocalizations.of(context)!.manchkinImage,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: _screenMargins,
            child: TextField(
              controller: _nameEditingController,
              textAlign: TextAlign.center,
              onSubmitted: (value) {
                AutoRouter.of(context).push(
                  ChoseGenderRoute(
                      selectedNameUser: _nameEditingController.text),
                );
                name = _nameEditingController.text;
              },
              style: _textRendering,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 4.0),
                ),
              ),
            ),
          ),
        ]),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.resumeButton,
                onPressed: () {
                  if (_nameEditingController.text.isNotEmpty) {
                    context.router.push(ChoseGenderRoute(
                        selectedNameUser: _nameEditingController.text));
                    name = _nameEditingController.text;
                  }
                }),
            const SizedBox(height: 20),
            SecondaryButton(
                text: AppLocalizations.of(context)!.returnStartScreenButton,
                onPressed: () {
                  AutoRouter.of(context).replaceAll(
                    [const CreateGameRoute()],
                  );
                }),
            const SizedBox(height: 38),
          ],
        ));
  }
}
