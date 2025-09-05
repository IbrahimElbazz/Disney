import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_button.dart';
import 'package:disney/core/widgets/custom_leading.dart';
import 'package:disney/core/widgets/custom_text_form_field.dart';
import 'package:disney/features/auth/login/presentation/widgets/image_and_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(leading: CustomLeading()),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              spacing: 8.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageAndText(),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  hint: AppString.email,
                  prefixIcon: Icon(
                    CupertinoIcons.mail_solid,
                    color: AppColor.white,
                  ),
                ),
                SizedBox(height: 2.h),
                CustomTextFormField(
                  obscureText: !showPass,
                  hint: AppString.password,
                  prefixIcon: Icon(
                    CupertinoIcons.lock_fill,
                    color: AppColor.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                    icon: Icon(
                      showPass
                          ? CupertinoIcons.eye_fill
                          : CupertinoIcons.eye_slash_fill,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                CustomElevatedButton(
                  onPressed: () {
                    context.pushNamed(RoutesConstant.homeScreen);
                  },
                  text: AppString.signIn,
                ),

                Row(
                  children: [
                    Text(
                      AppString.newToDisney,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        context.pop();
                        context.pushNamed(RoutesConstant.registerScreen);
                      },
                      child: Text(AppString.signUp),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20.w,
                  children: [
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(50.r),
                      child: CircleAvatar(
                        radius: 25.r,
                        backgroundColor: AppColor.white20,
                        child: Center(
                          child: Image.asset(
                            AppImages.google,
                            width: 30.w,
                            height: 30.h,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(50.r),
                      child: CircleAvatar(
                        radius: 25.r,
                        backgroundColor: AppColor.white20,
                        child: Center(
                          child: Image.asset(
                            AppImages.apple,
                            width: 30.w,
                            height: 30.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
