import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/features/my_account/presentation/widgets/build_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/app_color.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Center(
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundColor: AppColor.white,
                  backgroundImage: NetworkImage(AppImages.testImage),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Elbaz',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Center(
                child: Text(
                  'ibrahim@test.com',
                  style: TextStyle(fontSize: 16.sp, color: AppColor.grey),
                ),
              ),
              SizedBox(height: 40.h),
              Card(
                color: AppColor.white.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  children: [
                    buildListTile(
                      title: AppString.editProfile,
                      icon: CupertinoIcons.pencil,
                      onTap: () {},
                    ),
                    const Divider(color: AppColor.grey),
                    buildListTile(
                      title: AppString.language,
                      icon: CupertinoIcons.globe,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                color: AppColor.white.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  children: [
                    buildListTile(
                      title: AppString.help,
                      icon: CupertinoIcons.question_circle,
                      onTap: () {},
                    ),
                    const Divider(color: AppColor.grey),
                    buildListTile(
                      title: AppString.settings,
                      icon: CupertinoIcons.settings,
                      onTap: () {},
                    ),
                    const Divider(color: AppColor.grey),
                    buildListTile(
                      title: AppString.logout,
                      icon: CupertinoIcons.square_arrow_right,
                      onTap: () {},
                      color: AppColor.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
