import 'package:base_module_riverpod/presentation/main/app_flavor.dart';
import 'package:base_module_riverpod/presentation/navigation/app_navigator.dart';
import 'package:base_module_riverpod/presentation/navigation/app_router.dart';
import 'package:base_module_riverpod/presentation/navigation/app_routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    required this.appFlavor,
    required this.appNavigator,
    Key? key,
  }) : super(key: key);

  final AppFlavor appFlavor;
  final AppNavigator appNavigator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      navigatorKey: AppNavigator.navigatorKey,
      onGenerateRoute: AppRouter.onGenerateRoute,
      routes: const {},
    );
  }
}
