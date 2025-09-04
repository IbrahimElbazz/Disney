import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_button.dart';
import 'package:disney/core/widgets/custom_leading.dart';
import 'package:disney/core/widgets/custom_text_form_field.dart';
import 'package:disney/features/auth/register/presentation/widgets/text_sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showPass = false;
  bool showConfirmPass = false;
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(leading: CustomLeading()),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.h,
              children: [
                SizedBox(height: 10),
                TextSignUp(),
                SizedBox(height: 20.h),
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
                SizedBox(height: 2.h),
                CustomTextFormField(
                  obscureText: !showConfirmPass,
                  hint: AppString.confirmPassword,
                  prefixIcon: Icon(
                    CupertinoIcons.lock_fill,
                    color: AppColor.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showConfirmPass = !showConfirmPass;
                      });
                    },
                    icon: Icon(
                      showConfirmPass
                          ? CupertinoIcons.eye_fill
                          : CupertinoIcons.eye_slash_fill,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Checkbox(
                      checkColor: AppColor.white,
                      activeColor: AppColor.primary,
                      value: isAgree,
                      onChanged: (value) {
                        setState(() {
                          isAgree = value!;
                        });
                      },
                    ),
                    Text(
                      AppString.iAgreeToAllTermsAndConditions,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  text: AppString.agreeAndContinue,
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
