import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/widgets/image_widget.dart';
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart';

class GenderSelection extends StatefulWidget {
  GenderSelection({
    super.key,
    required this.controller,
  });

  GenderController controller;

  static const double height = 60;
  static const double width = 60;
  static const double opacitySelected = 1;
  static const double opacityUnselected = 0.6;

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.setGender(Gender.man);
            });
          },
          child: Opacity(
            opacity: widget.controller.gender == Gender.man
                ? GenderSelection.opacitySelected
                : GenderSelection.opacityUnselected,
            child: SizedBox(
                height: GenderSelection.height,
                width: GenderSelection.width,
                child: ImageWidget(
                  image: AppLocalizations.of(context)!.manImage,
                )),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(
          horizontal: 64,
        )),
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.setGender(Gender.woman);
            });
          },
          child: Opacity(
            opacity: widget.controller.gender == Gender.woman
                ? GenderSelection.opacitySelected
                : GenderSelection.opacityUnselected,
            child: SizedBox(
              height: GenderSelection.height,
              width: GenderSelection.width,
              child: ImageWidget(
                image: AppLocalizations.of(context)!.womanImage,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GenderController {
  GenderController({required Gender initialvalue}) : gender = initialvalue;

  Gender gender;

  void setGender(Gender value) {
    gender = value;
  }
}
