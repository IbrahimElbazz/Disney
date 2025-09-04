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
      backgroundColor: AppColor.blueDark,
      foregroundColor: AppColor.blueDark,
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
        color: AppColor.white50,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s18,
        fontWeight: AppFontWeight.regular,
      ),
      displayMedium: TextStyle(
        color: AppColor.white50,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s14,
        fontWeight: AppFontWeight.regular,
      ),
      displaySmall: TextStyle(
        color: AppColor.white50,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s12,
        fontWeight: AppFontWeight.regular,
      ),
      headlineLarge: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s20,
        fontWeight: AppFontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s18,
        fontWeight: AppFontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s16,
        fontWeight: AppFontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s14,
        fontWeight: AppFontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s12,
        fontWeight: AppFontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: AppColor.white,
        fontFamily: AppFontConstant.fontFamily,
        fontSize: AppFontSize.s10,
        fontWeight: AppFontWeight.bold,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColor.white),
    ),
  );
}
