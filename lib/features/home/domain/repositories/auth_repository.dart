import 'package:drinkt_q/features/home/domain/entities/user.dart';

abstract class AuthRepository {
  Future<void> register(String name, String email, String password);
  Future<User> login(String email, String password);
  Future<void> logout();
}
