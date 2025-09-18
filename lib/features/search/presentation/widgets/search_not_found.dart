import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 130.h),
          Image.asset(
            AppImages.notFoundSearch,
            width: 200.w,

            color: AppColor.white,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 30.h),
          Text(
            '${AppString.noResultsFound}"${_searchController.text}"',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.white.withValues(alpha: 0.7),
              fontSize: 18.sp,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            AppString.trySearchingForSomethingElse,
            style: TextStyle(
              color: AppColor.white.withValues(alpha: 0.5),
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
