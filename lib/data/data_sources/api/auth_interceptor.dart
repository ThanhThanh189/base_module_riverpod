import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthInterceptor implements InterceptorsWrapper {
  AuthInterceptor() : super();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(err.toString());
    }
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
