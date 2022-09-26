import 'dart:async';

import 'package:base_module_riverpod/presentation/main/app_flavor.dart';
import 'package:base_module_riverpod/presentation/providers/app_flavor_provider.dart';
import 'package:base_module_riverpod/presentation/providers/app_navigator_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app.dart';

void mainCommon(AppFlavor appFlavor) {
  WidgetsFlutterBinding.ensureInitialized();
  Future<void> startApp() async {
    final container = ProviderContainer(
      overrides: [
        appFlavorProvider.overrideWithValue(appFlavor),
      ],
    );
    runApp(
      UncontrolledProviderScope(
        container: container,
        child: App(
          appFlavor: appFlavor,
          appNavigator: container.read(appNavigatorProvider),
        ),
      ),
    );
  }

  runZonedGuarded(
    () {
      startApp();
    },
    (error, stackTrace) {},
  );
}
