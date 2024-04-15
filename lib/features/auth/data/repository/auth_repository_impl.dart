import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mlc_app/core/errors/errors.dart';
import 'package:mlc_app/core/errors/failures.dart';
import 'package:mlc_app/core/netwok/network_info.dart';
import 'package:mlc_app/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:mlc_app/features/auth/data/data_source/locale_data_source.dart';
import 'package:mlc_app/features/auth/data/model/login_model.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';
import 'package:mlc_app/features/auth/data/model/registration_model.dart';
import 'package:mlc_app/features/auth/data/model/sms_code_response_model.dart';
import 'package:mlc_app/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final NetworkInfo networkInfo;
  final AuthLocaleDataSource authLocaleDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.networkInfo,
    required this.authLocaleDataSource,
  });

  @override
  Future<Either<Failure, LoginResponseModel>> signUp(
      RegistrationModel registrationModel) async {
    try {
      if (await networkInfo.isConnected) {
        final response = await authRemoteDataSource.signUp(registrationModel);
        return Right(response);
      } else {
        return const Left(ConnectionFailure());
      }
    } on DioException catch (e) {
      return Left(DioExceptions.fromDioError(e));
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.toString()));
    } catch (e) {
      return const Left(Failure());
    }
  }

  @override
  Future<Either<Failure, LoginResponseModel>> login(
      LoginModel loginModel) async {
    try {
      if (await networkInfo.isConnected) {
        final response = await authRemoteDataSource.login(loginModel);
        return Right(response);
      } else {
        return const Left(ConnectionFailure());
      }
    } on DioException catch (e) {
      return Left(DioExceptions.fromDioError(e));
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.toString()));
    } catch (e) {
      return const Left(Failure());
    }
  }

  @override
  Future<Either<Failure, SmsCodeResponseModel>> sendCode(
      RegistrationModel registrationModel) async {
    try {
      if (await networkInfo.isConnected) {
        final response = await authRemoteDataSource.sendCode(registrationModel);
        return Right(response);
      } else {
        return const Left(ConnectionFailure());
      }
    } on DioException catch (e) {
      return Left(DioExceptions.fromDioError(e));
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.toString()));
    } catch (e) {
      return const Left(Failure());
    }
  }

  
}
