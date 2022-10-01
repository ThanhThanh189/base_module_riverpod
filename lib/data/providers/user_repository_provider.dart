import 'package:base_module_riverpod/data/repositories/user_repository_implement.dart';
import 'package:base_module_riverpod/domain/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_client_provider.dart';

final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepositoryImplement(ref.watch(apiClientProvider)));
