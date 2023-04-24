import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData(
    fontFamily: "munchkin",
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.background,
    iconTheme: const IconThemeData(
      color: AppColors.accentColor,
    ),
  );
}
