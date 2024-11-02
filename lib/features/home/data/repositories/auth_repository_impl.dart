import 'package:drinkt_q/features/home/data/models/user_model.dart';
import 'package:drinkt_q/features/home/data/sources/auth_api.dart';
import 'package:drinkt_q/features/home/domain/entities/user.dart';
import 'package:drinkt_q/features/home/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi authApi;

  AuthRepositoryImpl(this.authApi);

  @override
  Future<User> login(String email, String password) async {
    return await authApi.login(email, password);
  }

  @override
  Future<void> register(String email, String password) async {
    return await authApi.register(email, password);
  }

  @override
  Future<void> logout() async {}
}
