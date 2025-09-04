import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/themes/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        fixedSize: Size(350.w, 50.h),
        elevation: 0,
      ),
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      bodyMedium: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      bodySmall: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      displayLarge: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      displayMedium: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      displaySmall: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      headlineLarge: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      headlineMedium: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      headlineSmall: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      titleLarge: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      titleMedium: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
      titleSmall: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColor.white),
    ),
  );
}
