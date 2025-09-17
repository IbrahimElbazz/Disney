import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_top_vid_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingTopAnimeCards extends StatelessWidget {
  const LoadingTopAnimeCards({super.key, required this.page});

  final int page;

  @override
  Widget build(BuildContext context) {
    List<Widget> topCardsList = [
      CustomTopVidCard(image: AppImages.testImage),
      CustomTopVidCard(image: AppImages.testImage),
      CustomTopVidCard(image: AppImages.testImage),
      CustomTopVidCard(image: AppImages.testImage),
      CustomTopVidCard(image: AppImages.testImage),
    ];
    return Skeletonizer(
      effect: ShimmerEffect(highlightColor: AppColor.primary),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 165.h,
            child: CarouselSlider(
              items: topCardsList,
              options: CarouselOptions(
                height: 165.h,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: page,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotsIndicator(
                dotsCount: topCardsList.length,
                position: page.toDouble(),
                animate: true,
                axis: Axis.horizontal,
                animationDuration: Duration(milliseconds: 300),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
