import 'dart:async';
import 'package:drinkt_q/features/home/data/models/user_model.dart';

class AuthApi {
  Future<UserModel?> login(String email, String password) async {
    if (email == "user@example.com" && password == "password123") {
      return UserModel(id: '1', name: 'Test User', email: email);
    }
    return null;
  }
}
