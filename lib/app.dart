import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healhub/config/routes/app_router.dart';
import 'package:healhub/config/routes/routes.dart';
import 'package:healhub/config/themes/app_theme.dart';

class HealHubApp extends StatelessWidget {
  const HealHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
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
