import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthInterceptor implements InterceptorsWrapper {
  AuthInterceptor({required this.reader}) : super();

  final Reader reader;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('err: $handler');
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('''\n
    baseUrl: ${options.baseUrl}
    headers: ${options.headers}
    ''');
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('err: $response');
  }
}
