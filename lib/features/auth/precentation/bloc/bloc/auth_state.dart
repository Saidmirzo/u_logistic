part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(BlocStatus.notInitialized) final BlocStatus signUpStatus,
    @Default(BlocStatus.notInitialized) final BlocStatus signInStatus,
    @Default(BlocStatus.notInitialized) final BlocStatus sendCodeStatus,
    final SmsCodeResponseModel? smsCodeResponseModel,
    final LoginResponseModel? loginResponseModel,
    final String? message,
  }) = _AuthState;

  const AuthState._();
}
