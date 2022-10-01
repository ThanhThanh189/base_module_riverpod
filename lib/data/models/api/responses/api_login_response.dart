import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_login_response.freezed.dart';
part 'api_login_response.g.dart';

@freezed
class ApiLoginResponse with _$ApiLoginResponse {
  const factory ApiLoginResponse({
    required String token,
  }) = _ApiLoginResponse;

  factory ApiLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiLoginResponseFromJson(json);
}