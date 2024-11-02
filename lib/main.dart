import 'package:drinkt_q/features/home/domain/use_cases/login_usecase.dart';
import 'package:drinkt_q/features/home/presentation/bloc/auth_bloc.dart';
import 'package:drinkt_q/features/home/presentation/pages/login_page.dart';
import 'package:drinkt_q/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    // create: (context) => AuthBloc(),
    // child:

    return MaterialApp.router(routerConfig: _router
        // routerDelegate: _router.routerDelegate,
        // routeInformationParser: _router.routeInformationParser,
        );
    // );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: _router,
//       // routerDelegate: GoRouter.of(context).routerDelegate,
//       // routeInformationParser: GoRouter.of(context).routeInformationParser,
//     );
//   }
// }

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
  ],
);
