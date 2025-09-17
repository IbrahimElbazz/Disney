import 'package:dio/dio.dart';
import 'package:disney/core/network/api_service.dart';
import 'package:disney/core/network/dio_factory.dart';
import 'package:disney/features/home/data/repos/home_repo.dart';
import 'package:disney/features/home/logic/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // dio and api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));

  // home
  getIt.registerLazySingleton(() => HomeRepo(getIt()));
  getIt.registerFactory(() => HomeCubit(getIt()));
}
