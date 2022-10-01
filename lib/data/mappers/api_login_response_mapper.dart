import 'package:base_module_riverpod/data/mappers/mapper.dart';
import 'package:base_module_riverpod/data/models/api/responses/api_login_response.dart';
import 'package:base_module_riverpod/domain/entities/responses/login_response.dart';

class ApiLoginResponseMapper
    implements Mapper<ApiLoginResponse, LoginResponse> {
  @override
  LoginResponse map(ApiLoginResponse apiLoginResponse) {
    return LoginResponse(token: apiLoginResponse.token);
  }
}
