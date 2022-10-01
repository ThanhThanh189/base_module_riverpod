import 'package:base_module_riverpod/data/data_sources/api/api_config.dart';

enum AppFlavorType {
  development,
  staging,
  production,
}

class AppFlavor {
  AppFlavor({
    required this.appFlavorType,
    required this.apiConfig,
  });

  final AppFlavorType appFlavorType;

  final ApiConfig apiConfig;
}

class AppFlavorValue {
  static final AppFlavor development = AppFlavor(
    appFlavorType: AppFlavorType.development,
    apiConfig: ApiConfig('https://reqres.in'),
  );

  static final AppFlavor staging = AppFlavor(
    appFlavorType: AppFlavorType.staging,
    apiConfig: ApiConfig('https://reqres.in'),
  );

  static final AppFlavor production = AppFlavor(
    appFlavorType: AppFlavorType.production,
    apiConfig: ApiConfig('https://reqres.in'),
  );
}
