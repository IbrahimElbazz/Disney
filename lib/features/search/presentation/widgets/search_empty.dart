import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20.h,
      children: [
        SizedBox(height: 60.h),
        Center(child: Lottie.asset(AppLotties.search, width: 200.w)),
        Text(
          AppString.searchAnime,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.white.withValues(alpha: 0.7),
            fontSize: 24.sp,
          ),
        ),
      ],
    );
  }
}
