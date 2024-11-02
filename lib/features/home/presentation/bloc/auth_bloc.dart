// import 'package:bloc/bloc.dart';
// import 'package:drinkt_q/features/home/domain/entities/user.dart';
// import 'package:drinkt_q/features/home/domain/use_cases/login_usecase.dart';
//
// part 'auth_event.dart';
// part 'auth_state.dart';
//
// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final LoginUseCase loginUseCase;
//
//   AuthBloc(this.loginUseCase) : super(AuthInitial());
//
//   Stream<AuthState> mapEventToState(AuthEvent event) async* {
//     if (event is LoginEvent) {
//       yield AuthLoading();
//       try {
//         final user = await loginUseCase.execute(event.email, event.password);
//         if (user != null) {
//           yield AuthAuthenticated(user);
//         } else {
//           yield AuthError("Invalid credentials");
//         }
//       } catch (e) {
//         yield AuthError("An error occurred");
//       }
//     }
//   }
// }