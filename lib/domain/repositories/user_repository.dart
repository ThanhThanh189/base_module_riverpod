import 'package:base_module_riverpod/domain/entities/requests/login_request.dart';
import 'package:base_module_riverpod/domain/entities/requests/register_request.dart';

import '../entities/responses/login_response.dart';
import '../entities/responses/register_response.dart';

abstract class UserRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);

  Future<RegisterResponse> register(RegisterRequest registerRequest);
}
