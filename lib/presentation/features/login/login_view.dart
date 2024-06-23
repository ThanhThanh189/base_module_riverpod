import 'package:base_module_riverpod/domain/providers/login_use_case_provider.dart';
import 'package:base_module_riverpod/presentation/features/login/login_state.dart';
import 'package:base_module_riverpod/presentation/features/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _provider = StateNotifierProvider.autoDispose<LoginViewModel, LoginState>(
    (ref) => LoginViewModel(loginUseCase: ref.watch(loginUseCaseProvider)));

class LoginView extends ConsumerStatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      await ref.read(_provider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final token = ref.watch(_provider).token;
    return Scaffold(
      body: Center(
        child: Text(token.isEmpty ? 'Base Module' : token),
      ),
    );
  }
}
