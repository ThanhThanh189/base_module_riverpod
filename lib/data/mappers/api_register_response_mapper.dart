import 'package:base_module_riverpod/data/mappers/mapper.dart';
import 'package:base_module_riverpod/data/models/api/responses/api_register_response.dart';
import 'package:base_module_riverpod/domain/entities/responses/register_response.dart';

class ApiRegisterResponseMapper
    implements Mapper<ApiRegisterResponse, RegisterResponse> {
  @override
  RegisterResponse map(ApiRegisterResponse apiRegisterResponse) {
    return RegisterResponse(
      token: apiRegisterResponse.token,
      id: apiRegisterResponse.id,
    );
  }
}
