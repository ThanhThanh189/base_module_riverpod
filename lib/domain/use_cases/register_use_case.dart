import 'package:base_module_riverpod/domain/entities/requests/register_request.dart';
import 'package:base_module_riverpod/domain/entities/responses/register_response.dart';
import 'package:base_module_riverpod/domain/repositories/user_repository.dart';
import 'package:base_module_riverpod/domain/use_cases/use_cases.dart';

class RegisterUseCase
    implements FutureUseCase<RegisterRequest, RegisterResponse> {
  const RegisterUseCase(this.userRepository);

  final UserRepository userRepository;

  @override
  Future<RegisterResponse> run(RegisterRequest registerRequest) {
    return userRepository.register(registerRequest);
  }
}
