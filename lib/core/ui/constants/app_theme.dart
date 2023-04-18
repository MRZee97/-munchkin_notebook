import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData(
    fontFamily: "Gilroy",
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    iconTheme: const IconThemeData(
      color: AppColors.accentColor,
    ),
  );
}
