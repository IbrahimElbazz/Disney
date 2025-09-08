import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeDetailsSection extends StatelessWidget {
  const AnimeDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Synopsis',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'A young boy with a passion for adventure and a heart of gold, embarks on a journey to become the greatest hero of all time. Along the way, he meets a cast of colorful characters who help him on his quest.',
            style: TextStyle(color: Colors.white70, fontSize: 16.sp),
          ),
          SizedBox(height: 20.h),
          Text(
            'Cast',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          _buildCastMember(context, 'Hero', 'Voice Actor 1'),
          _buildCastMember(context, 'Sidekick', 'Voice Actor 2'),
          _buildCastMember(context, 'Villain', 'Voice Actor 3'),
        ],
      ),
    );
  }

  Widget _buildCastMember(
    BuildContext context,
    String character,
    String actor,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          CircleAvatar(radius: 30.r, backgroundColor: Colors.grey),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                actor,
                style: TextStyle(color: Colors.white70, fontSize: 16.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
