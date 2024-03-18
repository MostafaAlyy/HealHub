import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/di/dependency_injection.dart';
import '../../features/home/ui/pages/homa_page.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import 'routes.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_strings.dart';
import '../../features/login/ui/pages/login_screen.dart';
import '../../features/onboarding/ui/pages/onboarding_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const Placeholder());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.homePageRoute:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.loginRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => sl<LoginCubit>(),
                  child: const LogInScreen(),
                ));
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
