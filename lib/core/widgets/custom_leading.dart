import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.w),
      child: CircleAvatar(
        backgroundColor: AppColor.white,
        radius: 20.r,
        child: Center(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColor.blueDark,
            ),
            onPressed: () => context.pop(),
          ),
        ),
      ),
    );
  }
}
