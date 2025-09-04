import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_leading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomLeading()),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.disneyLogo,
                width: 150.w,
                height: 150.h,
                color: AppColor.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
