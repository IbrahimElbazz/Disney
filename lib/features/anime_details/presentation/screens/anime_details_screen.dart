import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_leading.dart';
import 'package:disney/features/anime_details/presentation/widgets/anime_details_section.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';

class AnimeDetailsScreen extends StatelessWidget {
  const AnimeDetailsScreen({super.key, required this.animeData});
  final Anime animeData;

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
                image: NetworkImage(animeData.images.jpg.largeImageUrl ?? ""),
                fit: BoxFit.fill,
                opacity: 0.4,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
              child: Column(
                children: [
                  Row(children: [CustomLeading()]),
                  SizedBox(height: 370.h),
                  Text(
                    textAlign: TextAlign.center,
                    animeData.title,
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '${animeData.type} | ${animeData.duration}',
                    style: TextStyle(
                      color: AppColor.white50,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  AnimatedRatingStars(
                    initialRating: animeData.score ?? 0.0,
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
                  SizedBox(height: 60.h),
                  InkWell(
                    onTap: () {
                      context.pushNamed(
                        RoutesConstant.playVidScreen,
                        arguments: animeData.trailer?.embedUrl,
                      );
                    },
                    borderRadius: BorderRadius.circular(5555.r),
                    child: Image.asset(
                      AppImages.playVid,
                      width: 90.w,
                      height: 90.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    AppString.showMore,
                    style: TextStyle(
                      color: AppColor.white50,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Image.asset(
                    AppImages.arrowDownward,
                    width: 20.w,
                    height: 20.h,
                  ),
                  // SizedBox(height: 20.h),
                ],
              ),
            ),
          ),

          // Second Screen - Additional Details
          AnimeDetailsSection(animeData: animeData),
        ],
      ),
    );
  }
}
