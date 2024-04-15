import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mlc_app/config/constants/commans.dart';
import 'package:mlc_app/core/errors/errors.dart';
import 'package:mlc_app/features/auth/data/data_source/locale_data_source.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getActivePosts();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;
  final AuthLocaleDataSource authLocaleDataSource;
  HomeRemoteDataSourceImpl({
    required this.dio,
    required this.authLocaleDataSource,
  });
  @override
  Future<List<PostModel>> getAllPosts() async {
    final userModel = await authLocaleDataSource.getUserInfo();
    late Response responce;
    if (userModel != null) {
      responce = await dio.request(
        Commans.allPosts,
        // data: {"phone": registrationModel.phone},
        options: Options(
          method: 'GET',
          headers: {
            'accept': 'application/json',
            'Authorization': 'Bearer ${userModel.token}'
          },
        ),
      );
    } else {
      throw CacheException();
    }
    final List<PostModel> list = (responce.data["data"] as List)
        .map((e) => PostModel.fromJson(e))
        .toList();
    return list;
  }

  @override
  Future<PostModel> getActivePosts() async {
    final userModel = await authLocaleDataSource.getUserInfo();
    late Response responce;
    if (userModel != null) {
      responce = await dio.request(
        Commans.activePost(userModel.id ?? 0),
        // data: {"phone": registrationModel.phone},
        options: Options(
          method: 'GET',
          headers: {
            'accept': 'application/json',
            'Authorization': 'Bearer ${userModel.token}'
          },
        ),
      );
    } else {
      throw CacheException();
    }

    return PostModel.fromJson(responce.data["data"]);
  }
}
