import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/themes/app_font.dart';
import 'package:disney/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onBoarding),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 300.h,
            right: 53.w,
            child: Container(
              width: 400.w,
              height: 180.h,
              color: AppColor.blueDark,
            ),
          ),
          Positioned(
            top: 250.h,
            right: 100.w,
            child: Image.asset(
              AppImages.disneyLogo,
              color: AppColor.white,
              width: 200.w,
              height: 200.h,
            ),
          ),
          Positioned(
            top: 420.h,
            right: 53.w,
            child: Text(
              AppString.endlessStories,
              style: TextStyle(
                fontSize: AppFontSize.s18,
                fontWeight: AppFontWeight.bold,
              ),
            ),
          ),

          Positioned(
            top: 650.h,
            right: 20.w,
            child: CustomElevatedButton(
              onPressed: () {},
              text: AppString.signUpNow,
            ),
          ),
          Positioned(
            top: 720.h,
            left: 130.w,
            child: Text(
              AppString.welcomeInDisney,
              style: TextStyle(color: AppColor.white80),
            ),
          ),
          Positioned(
            top: 760.h,
            child: Container(
              width: 600.w,
              height: 1.h,
              color: AppColor.white20,
            ),
          ),
          Positioned(
            top: 775.h,
            left: 165.w,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: AppColor.white,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {},
              child: Text(
                AppString.login,
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: AppFontSize.s18,
                  fontWeight: AppFontWeight.medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
