import 'package:bookly_app/feature/home/data/repo/home_repo.dart';
import 'package:bookly_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_services.dart';

final instance = GetIt.instance;

void initAppModule() {
  instance.registerLazySingleton<Dio>(() => Dio());
  instance.registerLazySingleton<ApiServices>(() => ApiServices(instance()));
  instance.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(instance()));
}
