import 'dart:async';
import 'package:disney/core/strings/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _showWelcomeDialog();
  }

  // when success login
  void _showWelcomeDialog() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Column(
              children: [
                Lottie.asset(AppLotties.fireworks2, width: 300.w),
                Lottie.asset(AppLotties.welcome, width: 500.w),
              ],
            ),
          );
        },
      );
      Future.delayed(const Duration(seconds: 8), () {
        if (mounted) {
          Navigator.of(context).pop();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('home')));
  }
}
