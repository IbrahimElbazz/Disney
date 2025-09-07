import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/features/home/presentation/widgets/card_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChannelsSection extends StatelessWidget {
  ChannelsSection({super.key});

  final List<String> _channels = [
    AppImages.disneyChannel,
    AppImages.pixarChannel,
    AppImages.marvelChannel,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.channels,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 70.h,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: _channels.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: CardImage(image: _channels[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
