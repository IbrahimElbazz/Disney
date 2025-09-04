import 'package:disney/core/strings/app_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextSignUp extends StatelessWidget {
  const TextSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(AppString.signUp),
        Text(
          AppString.createNewAccount,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          AppString.logInInfo,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
