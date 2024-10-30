import 'package:drinkt_q/features/home/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User?> login(String email, String password);
  Future<void> logout();
}
