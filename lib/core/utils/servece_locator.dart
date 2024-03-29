import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_app/core/utils/api_service.dart';
import 'package:mvvm_app/features/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>()));
}
