import 'package:base_module_riverpod/domain/use_cases/login_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/requests/login_request.dart';
import 'login_state.dart';
import 'package:http/http.dart' as http;

class LoginViewModel extends StateNotifier<LoginState> {
  LoginViewModel({required this.loginUseCase}) : super(LoginState.initial());

  LoginUseCase loginUseCase;

  Future<void> init() async {
    const loginRequest =
        LoginRequest(email: 'eve.holt@reqres.in', password: 'pistol');
    print('loginRequest:$loginRequest');
    final loginResponse = await loginUseCase.run(loginRequest);
    print('loginResponse:$loginResponse');
    state = state.copyWith(token: loginResponse.token);
  }
}
