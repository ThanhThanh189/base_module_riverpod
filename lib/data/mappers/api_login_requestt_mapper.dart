import 'package:base_module_riverpod/data/mappers/mapper.dart';
import 'package:base_module_riverpod/data/models/api/requests/api_login_request.dart';

import '../../domain/entities/requests/login_request.dart';

class ApiLoginRequestMapper implements Mapper<LoginRequest, ApiLoginRequest> {
  @override
  ApiLoginRequest map(LoginRequest loginRequest) {
    return ApiLoginRequest(
      email: loginRequest.email,
      password: loginRequest.password,
    );
  }
}
