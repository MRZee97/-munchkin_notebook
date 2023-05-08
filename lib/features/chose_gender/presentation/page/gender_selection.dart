import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/widgets/image_widget.dart';
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart';

class GenderSelection extends StatefulWidget {
  GenderSelection({
    super.key,
    required this.gender,
  });

  Gender gender;
  static const double height = 60;
  static const double width = 60;
  static const double opacitySelected = 1;
  static const double opacityUnselected = 0.6;

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  late Gender _gender;
  @override
  void initState() {
    super.initState();
    _gender = widget.gender;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _gender = Gender.Man;
            });
          },
          child: Opacity(
            opacity: _gender == Gender.Man
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
              _gender = Gender.Woman;
            });
          },
          child: Opacity(
            opacity: _gender == Gender.Woman
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
