import 'package:base_module_riverpod/presentation/features/login/login_view.dart';
import 'package:base_module_riverpod/presentation/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SplashView(),
        );
      case AppRoutes.login:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const LoginView(),
        );
    }

    return null;
  }
}
