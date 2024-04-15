import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:http/http.dart' as http;
import 'package:mlc_app/core/netwok/network_info.dart';
import 'package:mlc_app/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:mlc_app/features/auth/data/data_source/locale_data_source.dart';
import 'package:mlc_app/features/auth/data/repository/auth_locale_repository.dart';
import 'package:mlc_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:mlc_app/features/auth/domain/auth_locale_repository.dart';
import 'package:mlc_app/features/auth/domain/repository/auth_repository.dart';
import 'package:mlc_app/features/auth/precentation/bloc/bloc/auth_bloc.dart';
import 'package:mlc_app/features/driver/home/data/datasource/home_remote_datasource.dart';
import 'package:mlc_app/features/driver/home/data/repository/home_repository_impl.dart';
import 'package:mlc_app/features/driver/home/domin/home_repository.dart';
import 'package:mlc_app/features/driver/home/precentation/bloc/bloc/home_bloc.dart';

final GetIt sl = GetIt.instance;
Future<void> init() async {
  //!Bloc
  sl.registerFactory(
      () => AuthBloc(authRepository: sl(), authLocaleRepository: sl()));
  sl.registerFactory(() => HomeBloc(
        homeRepository: sl(),
      ));

  //---Event
  // sl.registerLazySingleton(() => GetAllCategoriesEvent());
  // sl.registerLazySingleton(() => GetBannerDataEvent());
  // sl.registerLazySingleton(() => GetCurrencyEvent());

  //--Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      authRemoteDataSource: sl(),
      networkInfo: sl(),
      authLocaleDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<AuthLocaleRepository>(
    () => AuthLocaleRepositoryImpl(
      authLocaleDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      networkInfo: sl(),
      homeRemoteDataSource: sl(),
    ),
  );

  //--dataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dio: sl()));
  sl.registerLazySingleton<AuthLocaleDataSource>(
      () => AuthLocaleDataSourceImpl());

  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(dio: sl(), authLocaleDataSource: sl()),
  );

  //! Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(interConnection: sl()));

  //!Extarnal
  final options = BaseOptions(
    baseUrl: 'https://ilkham.uz/',
    connectTimeout: const Duration(seconds: 50),
    receiveTimeout: const Duration(seconds: 30),
    headers: {'accept': 'application/json'},
  );

  Dio dio = Dio(options);

  sl.registerLazySingleton<Dio>(() => dio);
  // sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton(() => InternetConnectionChecker());
}
