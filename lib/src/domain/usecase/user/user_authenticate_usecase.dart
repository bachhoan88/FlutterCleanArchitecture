import 'package:flutter_clean_architecture/src/domain/repository/user_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class UserAuthenticateUseCase extends UseCase<Any, String> {
  final UserRepository repository;

  UserAuthenticateUseCase({required this.repository});

  @override
  Future<String> createObservable(Any params) {
    return repository.greeting();
  }
}