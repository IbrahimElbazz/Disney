import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/app_color.dart';

Widget buildListTile({
  required String title,
  required IconData icon,
  required VoidCallback onTap,
  Color? color,
}) {
  return ListTile(
    leading: Icon(icon, color: color ?? AppColor.white),
    title: Text(title, style: TextStyle(color: color ?? AppColor.white)),
    trailing: Icon(
      CupertinoIcons.right_chevron,
      color: color ?? AppColor.white,
      size: 18.sp,
    ),
    onTap: onTap,
  );
}
