import 'package:base_module_riverpod/presentation/features/splash/splash_view_model.dart';
import 'package:base_module_riverpod/presentation/navigation/app_routes.dart';
import 'package:base_module_riverpod/presentation/providers/app_navigator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _provider = StateNotifierProvider.autoDispose((ref) => SplashViewModel());

class SplashView extends ConsumerStatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Hello development splash'),
          ),
          TextButton(
              onPressed: () {
                print('click');
                ref.watch(appNavigatorProvider).navigateTo(AppRoutes.login);
              },
              child: const Text('Click')),
        ],
      ),
    );
  }
}
