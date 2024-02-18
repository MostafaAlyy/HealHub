import 'package:flutter/material.dart';
import 'package:healhub/core/utils/app_strings.dart';

class Routes {
  static const String initialRoute = '/';
  static const String homePageRoute = '/homePage';
  static const String quotesByCategory = '/quotesByCategory';
}

class AppRoutes {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const Placeholder());

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
