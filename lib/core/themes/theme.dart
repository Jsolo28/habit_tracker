import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    fontFamily: "GoogleSans",
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,
  );
}
