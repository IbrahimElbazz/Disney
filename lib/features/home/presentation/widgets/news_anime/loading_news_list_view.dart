import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingNewsListView extends StatelessWidget {
  const LoadingNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: Skeletonizer(
        enabled: true,
        effect: ShimmerEffect(highlightColor: AppColor.primary),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Container(
                width: 240.w,
                height: 310.h,

                decoration: ShapeDecoration(
                  color: AppColor.white,
                  image: DecorationImage(
                    image: AssetImage(AppImages.disneyLogo),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
