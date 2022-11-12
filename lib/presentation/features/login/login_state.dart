import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String token,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(token: '');
}
