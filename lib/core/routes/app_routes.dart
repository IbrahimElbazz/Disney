import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/features/anime_details/presentation/screens/anime_details_screen.dart';
import 'package:disney/features/anime_details/presentation/screens/play_vid_screen.dart';
import 'package:disney/features/app_navigation/app_navigation.dart';
import 'package:disney/features/auth/login/presentation/screens/login_screen.dart';
import 'package:disney/features/auth/register/presentation/screens/register_screen.dart';
import 'package:disney/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:disney/features/splash/presentation/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesConstant.splashScreen:
        return CupertinoPageRoute(builder: (context) => const SplashScreen());
      case RoutesConstant.onBoardingScreen:
        return CupertinoPageRoute(
          // fullscreenDialog: true,
          builder: (context) => const OnBoardingScreen(),
        );
      case RoutesConstant.loginScreen:
        return CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => const LoginScreen(),
        );
      case RoutesConstant.registerScreen:
        return CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => const RegisterScreen(),
        );
      case RoutesConstant.homeScreen:
        return CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => const AppNavigation(),
        );
      case RoutesConstant.animeDetailsScreen:
        return CupertinoPageRoute(
          builder: (context) =>
              AnimeDetailsScreen(image: routeSettings.arguments as String),
        );
      case RoutesConstant.playVidScreen:
        return CupertinoPageRoute(builder: (context) => PlayVidScreen());
      default:
        return CupertinoPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text(AppString.notFoundRoute)),
          ),
        );
    }
  }
}
