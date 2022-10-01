import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_register_response.freezed.dart';
part 'api_register_response.g.dart';

@freezed
class ApiRegisterResponse with _$ApiRegisterResponse {
  const factory ApiRegisterResponse({
    required String id,
    required String token,
  }) = _ApiRegisterResponse;

  factory ApiRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiRegisterResponseFromJson(json);
}