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
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {
      await ref.read(_provider.notifier).init(onNextHome: () {
        ref
            .read(appNavigatorProvider)
            .navigateTo(AppRoutes.login, shouldClearStack: true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'SPLASH',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
