import 'routes.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_strings.dart';
import '../../features/login/presentation/pages/login_screen.dart';
import '../../features/onboarding/presentation/pages/onboardind_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const Placeholder());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => const LogInScreen());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
