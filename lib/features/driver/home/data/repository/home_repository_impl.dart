import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mlc_app/core/errors/errors.dart';
import 'package:mlc_app/core/errors/failures.dart';
import 'package:mlc_app/core/netwok/network_info.dart';
import 'package:mlc_app/features/driver/home/data/datasource/home_remote_datasource.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/domin/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final NetworkInfo networkInfo;
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRepositoryImpl({
    required this.networkInfo,
    required this.homeRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<PostModel>>> getAllPosts() async {
    try {
      if (await networkInfo.isConnected) {
        final response = await homeRemoteDataSource.getAllPosts();
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
  Future<Either<Failure, PostModel>> getActivePosts() async {
    try {
      if (await networkInfo.isConnected) {
        final response = await homeRemoteDataSource.getActivePosts();
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
