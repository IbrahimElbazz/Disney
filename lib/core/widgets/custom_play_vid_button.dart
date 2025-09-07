import 'package:disney/core/strings/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlayVidButton extends StatelessWidget {
  const CustomPlayVidButton({
    super.key,
    required this.width,
    required this.height,
    this.onTap,
  });
  final double width;
  final double height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50.r),
      onTap: onTap,
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: Image.asset(AppImages.playVid),
      ),
    );
  }
}
