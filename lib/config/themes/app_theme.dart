import 'package:flutter/material.dart';
import 'package:healhub/config/themes/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  );
}
