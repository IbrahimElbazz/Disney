import 'package:disney/core/routes/app_routes.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Disney extends StatelessWidget {
  const Disney({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppString.appName,
          theme: getAppTheme(),
          onGenerateRoute: AppRoutes.getRoute,
          initialRoute: RoutesConstant.splashScreen,
        );
      },
    );
  }
}
