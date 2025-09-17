import 'package:disney/core/di/di.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/features/favorit/presentation/screens/favorit_screen.dart';
import 'package:disney/features/home/logic/cubit/home_cubit.dart';
import 'package:disney/features/home/presentation/screens/home_screen.dart';
import 'package:disney/features/search/presentation/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int _selectedTab = 0;
  final List<Widget> _pages = [
    BlocProvider(
      create: (context) => getIt<HomeCubit>()..getTopAmine(),
      child: const HomeScreen(),
    ),
    const FavoritScreen(),
    const FavoritScreen(),
    const SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 3.h),
      extendBody: true,
      body: _pages[_selectedTab],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CrystalNavigationBar(
          currentIndex: _selectedTab,
          unselectedItemColor: AppColor.white50,
          backgroundColor: AppColor.blueDark.withValues(alpha: 0.4),
          borderWidth: 1.w,
          outlineBorderColor: AppColor.white,
          onTap: (value) {
            setState(() {
              _selectedTab = value;
            });
          },
          items: [
            /// Home6
            CrystalNavigationBarItem(
              icon: CupertinoIcons.home,
              unselectedIcon: CupertinoIcons.home,
              selectedColor: AppColor.white,
            ),

            /// Favourite
            CrystalNavigationBarItem(
              icon: CupertinoIcons.heart_fill,
              unselectedIcon: CupertinoIcons.heart,
              selectedColor: AppColor.red,
            ),

            /// Add
            CrystalNavigationBarItem(
              icon: CupertinoIcons.add,
              unselectedIcon: CupertinoIcons.add,
              selectedColor: AppColor.white,
            ),

            /// Search
            CrystalNavigationBarItem(
              icon: CupertinoIcons.search,
              unselectedIcon: CupertinoIcons.search,
              selectedColor: AppColor.white,
            ),
          ],
        ),
      ),
    );
  }
}
