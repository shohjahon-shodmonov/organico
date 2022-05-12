import 'package:flutter/material.dart';
import 'package:organico_app/screens/bottom_nav_page.dart';
import 'package:organico_app/screens/registration_pages/forgot_password.dart';
import 'package:organico_app/screens/registration_pages/reset_password.dart';
import 'package:organico_app/screens/registration_pages/signin_page.dart';
import 'package:organico_app/screens/registration_pages/signup_page.dart';
import 'package:organico_app/screens/registration_pages/splash_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case "/sign_in":
        return MaterialPageRoute(
          builder: (context) => SignInPage(),
        );
      case "/sign_up":
        return MaterialPageRoute(
          builder: (context) => SignUpPage(),
        );
      case "/forgot_password":
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case "/reset_password":
        return MaterialPageRoute(
          builder: (context) => ResetPassword(),
        );
      case "/bottom_navbar":
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        );
    }
    return null;
  }
}
