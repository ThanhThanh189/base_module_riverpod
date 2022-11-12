import 'package:base_module_riverpod/data/data_sources/api/api_client.dart';
import 'package:base_module_riverpod/data/mappers/api_login_requestt_mapper.dart';
import 'package:base_module_riverpod/data/mappers/api_login_response_mapper.dart';
import 'package:base_module_riverpod/data/mappers/api_register_request_mapper.dart';
import 'package:base_module_riverpod/data/mappers/api_register_response_mapper.dart';
import 'package:base_module_riverpod/domain/entities/requests/login_request.dart';
import 'package:base_module_riverpod/domain/entities/requests/register_request.dart';
import 'package:base_module_riverpod/domain/entities/responses/login_response.dart';
import 'package:base_module_riverpod/domain/entities/responses/register_response.dart';
import 'package:base_module_riverpod/domain/repositories/user_repository.dart';

class UserRepositoryImplement implements UserRepository {
  UserRepositoryImplement(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {

    print('apiLoginResponse Imp:${ApiLoginRequestMapper().map(loginRequest)}');
    final apiLoginResponse =
        await _apiClient.login(ApiLoginRequestMapper().map(loginRequest));
    print('apiLoginResponse Imp2:$apiLoginResponse');
    return ApiLoginResponseMapper().map(apiLoginResponse);
  }

  @override
  Future<RegisterResponse> register(RegisterRequest registerRequest) async {
    final apiRegisterResponse = await _apiClient.register(ApiRegisterRequestMapper().map(registerRequest));
    return ApiRegisterResponseMapper().map(apiRegisterResponse);
  }
}
