import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    super.key,
    required this.name,
    required this.image,
    required this.time,
    required this.rate,
    this.onTapPlay,
  });
  final String name;
  final String image;
  final String time;
  final String rate;
  final void Function()? onTapPlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: ShapeDecoration(
        color: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.h),
          Container(
            width: 223.w,
            height: 155.h,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                name,
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: AppColor.black),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall?.copyWith(color: AppColor.grey),
              ),
              InkWell(
                onTap: onTapPlay,
                borderRadius: BorderRadius.circular(100.r),
                child: Image.asset(
                  AppImages.playVidColor,
                  width: 50.w,
                  color: AppColor.blueDark,
                ),
              ),
              Row(
                spacing: 5.w,
                children: [
                  Text(
                    rate,
                    style: Theme.of(
                      context,
                    ).textTheme.headlineSmall?.copyWith(color: AppColor.grey),
                  ),
                  Image.asset(AppImages.star, width: 20.w),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
