import 'config/routes/routes.dart';
import 'config/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'config/routes/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealHubApp extends StatelessWidget {
  const HealHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'HealHub',
        theme: appTheme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: Routes.onBoardingRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
