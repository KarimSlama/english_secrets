import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/english_secrets/on_boarding/on_boarding_screen.dart';
import 'package:english_secrets/english_secrets/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        );
      default:
        return null;
    }
  }
}
