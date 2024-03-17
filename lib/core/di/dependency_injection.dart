import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repositories/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../api/api_service.dart';
import '../api/dio_factory.dart';

final sl = GetIt.instance;

Future<void> serviceLocatorInit() async {
  //  Dio & ApiService
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  sl.registerLazySingleton<LoginRepo>(() => LoginRepo(sl()));
  sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl()));
}
