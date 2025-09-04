import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/themes/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final double? width;
  final double? height;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 350.w,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColor.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.s16,
            fontWeight: AppFontWeight.medium,
          ),
        ),
      ),
    );
  }
}
