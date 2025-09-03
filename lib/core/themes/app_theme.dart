import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';

// will refactoooooor later
ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.blueDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.white,
      foregroundColor: AppColor.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.white,
        elevation: 0,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColor.white),
    ),
  );
}
