import 'package:disney/core/strings/app_images.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/themes/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child:
            GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    bottom: 100.h,
                  ),
                  itemBuilder: (context, index) {
                    return FavoritItem(
                      image: AppImages.testImage,
                      title: 'Mulan',
                    );
                  },
                  itemCount: 10,
                )
                .animate()
                .fadeIn(curve: Curves.easeInOut, duration: 200.ms)
                .slide(
                  curve: Curves.easeInOut,
                  delay: 100.ms,
                  begin: const Offset(-0.5, 0.0),
                  end: const Offset(0.0, 0.0),
                ),
      ),
    );
  }
}

class FavoritItem extends StatelessWidget {
  const FavoritItem({Key? key, required this.image, required this.title})
    : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.black.withOpacity(0.8), Colors.transparent],
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 16.sp,
                  fontWeight: AppFontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            right: 10.w,
            child: Icon(Icons.favorite, color: AppColor.red, size: 30.r),
          ),
        ],
      ),
    );
  }
}
