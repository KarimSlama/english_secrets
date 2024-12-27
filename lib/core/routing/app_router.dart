import 'package:english_secrets/core/di/get_it.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/english_secrets/course/course_screen.dart';
import 'package:english_secrets/english_secrets/dashboard/controller/dashboard_cubit.dart';
import 'package:english_secrets/english_secrets/dashboard/dashboard_screen.dart';
import 'package:english_secrets/english_secrets/forgot_password/forgot_password_screen.dart';
import 'package:english_secrets/english_secrets/login/login_screen.dart';
import 'package:english_secrets/english_secrets/on_boarding/on_boarding_screen.dart';
import 'package:english_secrets/english_secrets/register/register_screen.dart';
import 'package:english_secrets/english_secrets/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        );

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => ForgotPasswordScreen(),
        );

      case Routes.dashboardScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<DashboardCubit>(),
            child: DashboardScreen(),
          ),
        );

      case Routes.courseScreen:
        return MaterialPageRoute(
          builder: (context) => CourseScreen(),
        );
      default:
        return null;
    }
  }
}
