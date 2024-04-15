import 'package:dartz/dartz.dart';
import 'package:mlc_app/core/errors/failures.dart';
import 'package:mlc_app/features/auth/data/model/login_model.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';
import 'package:mlc_app/features/auth/data/model/registration_model.dart';
import 'package:mlc_app/features/auth/data/model/sms_code_response_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseModel>> signUp(RegistrationModel registrationModel);
  Future<Either<Failure, LoginResponseModel>> login(LoginModel loginModel);
  Future<Either<Failure, SmsCodeResponseModel>> sendCode(RegistrationModel registrationModel);
  
}
