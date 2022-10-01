import 'package:base_module_riverpod/data/models/api/requests/api_login_request.dart';
import 'package:base_module_riverpod/data/models/api/requests/api_register_request.dart';
import 'package:base_module_riverpod/data/models/api/responses/api_login_response.dart';
import 'package:base_module_riverpod/data/models/api/responses/api_register_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'api_paths.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String baseUrl,
  }) = _ApiClient;

  @POST(ApiPaths.login)
  Future<ApiLoginResponse> login(
    @Body() ApiLoginRequest apiLoginRequest,
  );

  @POST(ApiPaths.register)
  Future<ApiRegisterResponse> register(
    @Body() ApiRegisterRequest apiRegisterRequest,
  );
}
