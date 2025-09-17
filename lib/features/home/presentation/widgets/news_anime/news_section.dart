import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:disney/features/home/logic/cubit/home_cubit.dart';
import 'package:disney/features/home/logic/cubit/home_state.dart';
import 'package:disney/features/home/presentation/widgets/anime_card.dart';
import 'package:disney/features/home/presentation/widgets/news_anime/loading_news_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is GetNewsHomeError ||
            current is GetNewsHomeLoading ||
            current is GetNewsHomeSuccess;
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => SizedBox.shrink(),
          getNewsHomeLoading: () => LoadingNewsListView(),
          getNewsHomeSuccess: (GetTopAnimeResponseModel data) => SizedBox(
            height: 310.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: data.data.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(
                        RoutesConstant.animeDetailsScreen,
                        arguments: data.data[index],
                      );
                    },
                    child: AnimeCard(
                      name: data.data[index].title,
                      image: data.data[index].images.jpg.largeImageUrl!,
                      time:
                          data.data[index].duration?.toString().substring(
                            0,
                            6,
                          ) ??
                          '0',
                      rate: data.data[index].score.toString(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          getNewsHomeError: (error) => Center(child: Text(error.message)),
        );
      },
    );
  }
}
