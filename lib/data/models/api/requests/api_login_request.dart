import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_login_request.freezed.dart';
part 'api_login_request.g.dart';

@freezed
class ApiLoginRequest with _$ApiLoginRequest {
  const factory ApiLoginRequest({
    required String email,
    required String password,
  }) = _ApiLoginRequest;

  factory ApiLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiLoginRequestFromJson(json);
}