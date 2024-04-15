import 'package:dartz/dartz.dart';
import 'package:mlc_app/core/errors/failures.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';

abstract class AuthLocaleRepository {
  Future<Either<Failure, String>> saveUserToLocale(
    LoginResponseModel loginResponseModel,
  );
  Future<Either<Failure, LoginResponseModel?>> getUserInfo();
}
