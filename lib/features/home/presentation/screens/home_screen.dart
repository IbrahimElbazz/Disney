import 'dart:async';
import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/features/home/logic/cubit/home_cubit.dart';
import 'package:disney/features/home/presentation/widgets/anime_card.dart';
import 'package:disney/features/home/presentation/widgets/channels_section.dart';
import 'package:disney/features/home/presentation/widgets/top_anime/top_anime_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // _showWelcomeDialog();
  }

  // when success login
  void _showWelcomeDialog() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Column(
              children: [
                Lottie.asset(AppLotties.fireworks2, width: 300.w),
                Lottie.asset(AppLotties.welcome, width: 500.w),
              ],
            ),
          );
        },
      );
      Future.delayed(const Duration(seconds: 8), () {
        if (mounted) {
          Navigator.of(context).pop();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: RefreshIndicator(
        backgroundColor: AppColor.white,
        color: AppColor.blueDark,
        onRefresh: () => context.read<HomeCubit>().getTopAmine(),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                AppImages.disneyLogo,
                color: AppColor.white,
                width: 100.w,
              ),
              TopAnimeSection(),

              SizedBox(height: 18.h),
              ChannelsSection(),
              SizedBox(height: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.news,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppString.showAll,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColor.white50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                    height: 310.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: AnimeCard(
                            name: 'Anime name',
                            image: AppImages.testImage,
                            time: '1.2 hr',
                            rate: '8',
                          ),
                        ),
                      ),
                    ),
                  )
                  .animate()
                  .fadeIn(curve: Curves.easeInOut, delay: 100.ms)
                  .slide(
                    curve: Curves.easeInOut,
                    delay: 100.ms,
                    begin: const Offset(-0.5, 0.0),
                    end: const Offset(0.0, 0.0),
                  ),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}
