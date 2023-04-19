import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {required this.text, required this.onPressed, super.key});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: "academy",
              color: AppColors.titleColor),
        ));
  }
}
