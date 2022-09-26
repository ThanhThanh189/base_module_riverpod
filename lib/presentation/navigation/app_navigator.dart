import 'package:flutter/material.dart';

class AppNavigator {
  static final navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(
      String routeName, {
        arguments,
        bool shouldClearStack = false,
      }) async {
    final currentState = navigatorKey.currentState;
    if (currentState == null) {
      return false;
    }

    if (shouldClearStack) {
      /// Push the route with the given name onto the navigator, and then remove all
      /// the previous routes until the `predicate` returns true.
      ///
      return currentState.pushNamedAndRemoveUntil(
        routeName,
            (route) => false,
        arguments: arguments,
      );
    }

    /// Push a named route onto the navigator.
    ///
    return currentState.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamed(String routeName, {arguments}) async {
    final currentState = navigatorKey.currentState;
    if (currentState == null) {
      return false;
    }

    return currentState.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {arguments}) async {
    final currentState = navigatorKey.currentState;
    if (currentState == null) {
      return false;
    }

    return currentState.pushReplacementNamed(routeName, arguments: arguments);
  }

  void pop({arguments}) {
    final currentState = navigatorKey.currentState;
    if (currentState == null) {
      return;
    }

    return currentState.pop(arguments);
  }

  void popUntil({
    required String routeName,
  }) {
    final currentState = navigatorKey.currentState;
    if (currentState == null) {
      return;
    }

    final isCurrent = _isCurrent(
      routeName,
      currentState,
    );

    if (!isCurrent) {
      currentState.popUntil((route) => route.settings.name == routeName);
    }
  }

  bool _isCurrent(
      String routeName,
      NavigatorState currentState,
      ) {
    var isCurrent = false;

    currentState.popUntil((route) {
      if (route.settings.name == routeName) {
        isCurrent = true;
      }
      return true;
    });

    return isCurrent;
  }
}
