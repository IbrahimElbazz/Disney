import 'package:disney/core/widgets/custom_top_vid_card.dart';
import 'package:disney/features/home/logic/cubit/home_cubit.dart';
import 'package:disney/features/home/logic/cubit/home_state.dart';
import 'package:disney/features/home/presentation/widgets/top_anime/top_anime_section_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TopAnimeSection extends StatefulWidget {
  const TopAnimeSection({super.key});

  @override
  State<TopAnimeSection> createState() => _TopAnimeSectionState();
}

class _TopAnimeSectionState extends State<TopAnimeSection> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) {
            return current is GetTopAnimeError ||
                current is GetTopAnimeLoading ||
                current is GetTopAnimeSuccess;
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => SizedBox.shrink(),
              getTopAnimeLoading: () => LoadingTopAnimeCards(page: page),

              getTopAnimeError: (error) => Center(child: Text(error.message)),
              getTopAnimeSuccess: (getTopAnimeResponseModel) {
                List<Widget> topAnimeList = [
                  CustomTopVidCard(
                    animeData: getTopAnimeResponseModel.data[0],
                    image:
                        getTopAnimeResponseModel
                            .data[0]
                            .images
                            .jpg
                            .largeImageUrl ??
                        "",
                  ),
                  CustomTopVidCard(
                    animeData: getTopAnimeResponseModel.data[1],
                    image:
                        getTopAnimeResponseModel
                            .data[1]
                            .images
                            .jpg
                            .largeImageUrl ??
                        "",
                  ),
                  CustomTopVidCard(
                    animeData: getTopAnimeResponseModel.data[2],
                    image:
                        getTopAnimeResponseModel
                            .data[2]
                            .images
                            .jpg
                            .largeImageUrl ??
                        "",
                  ),
                  CustomTopVidCard(
                    animeData: getTopAnimeResponseModel.data[3],
                    image:
                        getTopAnimeResponseModel
                            .data[3]
                            .images
                            .jpg
                            .largeImageUrl ??
                        "",
                  ),
                  CustomTopVidCard(
                    animeData: getTopAnimeResponseModel.data[4],
                    image:
                        getTopAnimeResponseModel
                            .data[4]
                            .images
                            .jpg
                            .largeImageUrl ??
                        "",
                  ),
                ];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 165.h,
                      child: CarouselSlider(
                        items: topAnimeList,
                        options: CarouselOptions(
                          height: 165.h,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: page,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(
                            milliseconds: 800,
                          ),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          onPageChanged: (index, reason) {
                            setState(() {
                              page = index;
                            });
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DotsIndicator(
                          dotsCount: topAnimeList.length,
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
                );
              },
            );
          },
        )
        .animate()
        .fadeIn(curve: Curves.easeInOut, delay: 100.ms)
        .slide(
          curve: Curves.easeInOut,
          delay: 100.ms,
          begin: const Offset(-0.5, 0.0),
          end: const Offset(0.0, 0.0),
        );
  }
}
