import 'package:base_module_riverpod/data/providers/user_repository_provider.dart';
import 'package:base_module_riverpod/domain/use_cases/register_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerUseCaseProvider =
    Provider((ref) => RegisterUseCase(ref.watch(userRepositoryProvider)));
