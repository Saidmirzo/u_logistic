import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/core/failure_utils.dart';
import 'package:mlc_app/features/auth/data/model/login_model.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';
import 'package:mlc_app/features/auth/data/model/registration_model.dart';
import 'package:mlc_app/features/auth/data/model/sms_code_response_model.dart';
import 'package:mlc_app/features/auth/domain/auth_locale_repository.dart';
import 'package:mlc_app/features/auth/domain/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final AuthLocaleRepository authLocaleRepository;
  AuthBloc({required this.authRepository, required this.authLocaleRepository})
      : super(const AuthState()) {
    on<AuthEvent>((event, emit) {});
    on<SignUp>((event, emit) async {
      emit(state.copyWith(signUpStatus: BlocStatus.inProgress));
      final result = await authRepository.signUp(event.registrationModel);
      result.fold(
        (l) {
          emit(
            state.copyWith(
              signInStatus: FailureUtils.getFailurBlocStatus(l),
              message: l.message,
            ),
          );
        },
        (model) {
          authLocaleRepository.saveUserToLocale(model);
          emit(state.copyWith(
            signUpStatus: BlocStatus.completed,
            loginResponseModel: model,
          ));
        },
      );
    });
    on<Login>((event, emit) async {
      emit(state.copyWith(signInStatus: BlocStatus.inProgress));
      final result = await authRepository.login(event.loginModel);
      result.fold(
        (l) {
          emit(
            state.copyWith(
              signInStatus: FailureUtils.getFailurBlocStatus(l),
              message: l.message,
            ),
          );
        },
        (model) {
          authLocaleRepository.saveUserToLocale(model);
          emit(state.copyWith(signInStatus: BlocStatus.completed));
        },
      );
    });
    on<SendCode>((event, emit) async {
      emit(state.copyWith(sendCodeStatus: BlocStatus.inProgress));
      final result = await authRepository.sendCode(event.registrationModel);
      result.fold(
        (l) {
          emit(
            state.copyWith(
              sendCodeStatus: FailureUtils.getFailurBlocStatus(l),
              message: l.message,
            ),
          );
        },
        (r) {
          emit(
            state.copyWith(
              sendCodeStatus: BlocStatus.completed,
              smsCodeResponseModel: r,
            ),
          );
        },
      );
    });
  }
}
