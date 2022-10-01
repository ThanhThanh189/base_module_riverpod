import 'package:base_module_riverpod/data/mappers/mapper.dart';
import 'package:base_module_riverpod/data/models/api/requests/api_register_request.dart';
import 'package:base_module_riverpod/domain/entities/requests/register_request.dart';

class ApiRegisterRequestMapper
    implements Mapper<RegisterRequest, ApiRegisterRequest> {
  @override
  ApiRegisterRequest map(RegisterRequest registerRequest) {
    return ApiRegisterRequest(
      email: registerRequest.email,
      password: registerRequest.password,
    );
  }
}
