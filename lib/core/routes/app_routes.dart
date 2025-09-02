import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/features/splash/presentation/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesConstant.splashScreen:
        return CupertinoPageRoute(builder: (context) => const SplashScreen());
      default:
        return null;
    }
  }
}
