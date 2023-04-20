import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.text, required this.onPressed, super.key});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: "academy",
              color: AppColors.titleColor),
        ));
  }
}
