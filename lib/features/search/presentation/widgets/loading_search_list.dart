import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingSearchList extends StatelessWidget {
  const LoadingSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      effect: ShimmerEffect(highlightColor: AppColor.primary),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: AppColor.white10,
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(AppImages.testImage),
              ),
              title: Text(
                'Movieindex',
                style: const TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '{data.data[index].type}',
                style: TextStyle(color: AppColor.white.withValues(alpha: 0.7)),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
