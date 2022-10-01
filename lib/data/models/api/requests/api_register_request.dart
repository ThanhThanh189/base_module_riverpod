import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_register_request.freezed.dart';
part 'api_register_request.g.dart';

@freezed
class ApiRegisterRequest with _$ApiRegisterRequest {
  const factory ApiRegisterRequest({
    required String email,
    required String password,
  }) = _ApiRegisterRequest;

  factory ApiRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiRegisterRequestFromJson(json);
}