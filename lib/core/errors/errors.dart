import 'package:dio/dio.dart';
import 'package:mlc_app/core/errors/failures.dart';

class ServerException implements Exception {}

class CacheException implements Exception {}

class DioExceptions implements Exception {
  DioExceptions();

  static Failure fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return const ConnectionFailure(
            message: "Request to API server was cancelled");
      case DioExceptionType.connectionTimeout:
        return const ConnectionFailure(
            message: "Connection timeout with API server");
      case DioExceptionType.receiveTimeout:
        return const ConnectionFailure(
            message: "Receive timeout in connection with API server");

      case DioExceptionType.sendTimeout:
        return const ConnectionFailure(
            message: "Send timeout in connection with API server");
      case DioExceptionType.badResponse:
        return handleError(
          dioError.response?.statusCode,
          dioError.response?.data["message"],
        );
      case DioExceptionType.connectionError:
        return const ConnectionFailure(message: "Connection error");
      case DioExceptionType.badCertificate:
        return const BadResponceFailure(message: "Bad certificate");
      case DioExceptionType.unknown:
        return const UnknownFailure(message: "Unknown error");
      default:
        return const UnknownFailure(message: "Something went wrong");
    }
  }

  static Failure handleError(int? statusCode, String? error) {
    switch (statusCode) {
      case 400:
        return BadResponceFailure(message: error);
      case 401:
        return UnautorizedFailure(message: error);
      case 403:
        return ForbiddenFailure(message: error);
      case 404:
        return UrlNotFoundFailure(message: error);
      case 500:
        return ServerFailure(message: error);
      case 502:
        return BadResponceFailure(message: error);
      default:
        return UnknownFailure(message: error);
    }
  }
}
