import 'package:disney/core/widgets/custom_play_vid_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopVidCard extends StatelessWidget {
  const CustomTopVidCard({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          children: [CustomPlayVidButton(height: 60, width: 60, onTap: onTap)],
        ),
      ),
    );
  }
}
