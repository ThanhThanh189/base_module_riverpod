import 'package:base_module_riverpod/domain/entities/requests/login_request.dart';
import 'package:base_module_riverpod/domain/entities/responses/login_response.dart';
import 'package:base_module_riverpod/domain/repositories/user_repository.dart';
import 'package:base_module_riverpod/domain/use_cases/use_cases.dart';

class LoginUseCase implements FutureUseCase<LoginRequest, LoginResponse> {
  const LoginUseCase(this.userRepository);

  final UserRepository userRepository;

  @override
  Future<LoginResponse> run(LoginRequest loginRequest) {
    return userRepository.login(loginRequest);
  }
}
