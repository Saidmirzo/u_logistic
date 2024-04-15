part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class SignUp extends AuthEvent {
  final RegistrationModel registrationModel;
  const SignUp({required this.registrationModel});
}

class Login extends AuthEvent {
  final LoginModel loginModel;
  const Login({required this.loginModel});
}

class SendCode extends AuthEvent {
  final RegistrationModel registrationModel;
  const SendCode({required this.registrationModel});
}
