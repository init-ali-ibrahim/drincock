import 'package:drinkt_q/features/home/data/repositories/auth_repository_impl.dart';
import 'package:drinkt_q/features/home/domain/use_cases/login_usecase.dart';
import 'package:drinkt_q/features/home/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Text('data')
    );
  }
}
