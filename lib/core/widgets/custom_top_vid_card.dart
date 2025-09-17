import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/widgets/custom_play_vid_button.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopVidCard extends StatelessWidget {
  const CustomTopVidCard({super.key, required this.image, this.animeData});
  final String image;
  final Anime? animeData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          RoutesConstant.animeDetailsScreen,
          arguments: animeData,
        );
      },
      child: Container(
        width: 320.w,
        height: 165.h,
        decoration: ShapeDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPlayVidButton(
                height: 60,
                width: 60,
                onTap: () {
                  context.pushNamed(
                    RoutesConstant.animeDetailsScreen,
                    arguments: animeData,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
