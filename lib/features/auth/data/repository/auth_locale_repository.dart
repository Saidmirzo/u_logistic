import 'package:dartz/dartz.dart';
import 'package:mlc_app/core/errors/failures.dart';
import 'package:mlc_app/features/auth/data/data_source/locale_data_source.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';
import 'package:mlc_app/features/auth/domain/auth_locale_repository.dart';
import 'package:mlc_app/features/auth/domain/repository/auth_repository.dart';

class AuthLocaleRepositoryImpl implements AuthLocaleRepository {
  final AuthLocaleDataSource authLocaleDataSource;
  AuthLocaleRepositoryImpl({required this.authLocaleDataSource});
  @override
  Future<Either<Failure, LoginResponseModel?>> getUserInfo() async {
    try {
      final result = await authLocaleDataSource.getUserInfo();
      return Right(result);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, String>> saveUserToLocale(
      LoginResponseModel loginResponseModel) async {
    try {
      await authLocaleDataSource.saveUserLocale(loginResponseModel);
      return const Right("Success");
    } catch (e) {
      return const Left(CacheFailure());
    }
  }
}
