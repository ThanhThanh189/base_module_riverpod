import 'package:base_module_riverpod/data/data_sources/api/api_client.dart';
import 'package:base_module_riverpod/data/data_sources/api/auth_interceptor.dart';
import 'package:base_module_riverpod/presentation/providers/app_flavor_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  final appFlavor = ref.watch(appFlavorProvider);
  final dio = Dio();
  dio.interceptors.add(AuthInterceptor());

  if (kDebugMode) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 99,
      ),
    );
  }

  return ApiClient(
    dio,
    baseUrl: appFlavor.apiConfig.baseUrl,
  );
});
