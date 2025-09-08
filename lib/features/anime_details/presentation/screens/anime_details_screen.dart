import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_leading.dart';
import 'package:disney/features/anime_details/presentation/widgets/anime_details_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';

class AnimeDetailsScreen extends StatelessWidget {
  const AnimeDetailsScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          // First Screen - Anime Details
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.fill,
                opacity: 0.4,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
              child: Column(
                children: [
                  Row(children: [CustomLeading()]),
                  SizedBox(height: 350.h),
                  Text(
                    'Anime Name',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Animation | 1h 57m',
                    style: TextStyle(
                      color: AppColor.white50,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  AnimatedRatingStars(
                    initialRating: 3.0,
                    minRating: 0.0,
                    maxRating: 5.0,
                    filledColor: AppColor.amber,
                    emptyColor: AppColor.white50,
                    filledIcon: Icons.star,
                    halfFilledIcon: Icons.star_half_rounded,
                    emptyIcon: Icons.star_outline_rounded,
                    onChanged: (double rating) {},
                    displayRatingValue: true,
                    interactiveTooltips: true,
                    customFilledIcon: Icons.star_rounded,
                    customHalfFilledIcon: Icons.star_half_rounded,
                    customEmptyIcon: Icons.star_outline_rounded,
                    starSize: 20.w,
                    animationDuration: Duration(milliseconds: 300),
                    animationCurve: Curves.easeInOut,
                    readOnly: true,
                  ),
                  SizedBox(height: 50.h),
                  InkWell(
                    onTap: () {
                      context.pushNamed(RoutesConstant.playVidScreen);
                    },
                    borderRadius: BorderRadius.circular(5555.r),
                    child: Image.asset(
                      AppImages.playVid,
                      width: 90.w,
                      height: 90.h,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    AppString.showMore,
                    style: TextStyle(
                      color: AppColor.white50,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    AppImages.arrowDownward,
                    width: 20.w,
                    height: 20.h,
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),

          // Second Screen - Additional Details
          AnimeDetailsSection(),
        ],
      ),
    );
  }
}
