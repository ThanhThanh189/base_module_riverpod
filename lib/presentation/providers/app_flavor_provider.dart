import 'package:base_module_riverpod/data/data_sources/api/api_config.dart';
import 'package:base_module_riverpod/presentation/main/app_flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appFlavorProvider = Provider<AppFlavor>(
  (ref) => AppFlavor(
    apiConfig: ApiConfig(''),
    appFlavorType: AppFlavorType.development,
  ),
);
