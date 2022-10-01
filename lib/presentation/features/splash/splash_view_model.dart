import 'package:base_module_riverpod/presentation/features/splash/splash_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashViewModel extends StateNotifier {
  SplashViewModel() : super(SplashState());

  Future<void> init({
    required VoidCallback onNextHome,
  }) async {
    onNextHome.call();
  }
}
