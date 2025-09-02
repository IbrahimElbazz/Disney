import 'package:disney/core/themes/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle _getTextStyle(double fontSize, FontWeight weight, Color color) {
  return TextStyle(
    fontSize: fontSize.sp,
    fontWeight: weight,
    color: color,
    fontFamily: AppFontConstant.fontFamily,
  );
}

TextStyle getRegularStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.regular, color);
}

TextStyle getMediumStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.medium, color);
}

TextStyle getBoldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.bold, color);
}

TextStyle getLightStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.light, color);
}

TextStyle getSemiBoldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.semiBold, color);
}

TextStyle getExtraBoldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.extraBold, color);
}

TextStyle getExtraLightStyle({required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, AppFontWeight.extraLight, color);
}
