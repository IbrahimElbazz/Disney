import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.disneyLogo,
              width: 150.w,
              height: 150.h,
              color: AppColor.white,
            ),
          ],
        ),
        Text(
          AppString.logInWithEmail,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          AppString.logInInfo,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
