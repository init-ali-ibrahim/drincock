import 'package:drinkt_q/features/home/domain/entities/user.dart';
import 'package:drinkt_q/features/home/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User> loginUser(String email, String password) async {
    return await repository.login(email, password);
  }

  Future<void> registerUser(String name, String email, String password) {
    return repository.register(name, email, password);
  }

  Future<void> logoutUser() async {
    repository.logout();
  }
}
