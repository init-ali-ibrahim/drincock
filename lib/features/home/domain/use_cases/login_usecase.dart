import 'package:drinkt_q/features/home/domain/entities/user.dart';
import 'package:drinkt_q/features/home/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User?> execute(String email, String password) {
    return repository.login(email, password);
  }
}
