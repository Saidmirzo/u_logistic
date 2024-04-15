import 'package:dartz/dartz.dart';
import 'package:mlc_app/core/errors/failures.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<PostModel>>> getAllPosts();
  Future<Either<Failure, PostModel>> getActivePosts();
}
