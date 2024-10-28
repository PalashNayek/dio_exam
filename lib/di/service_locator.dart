import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../repositories/PostRepository.dart';
import '../view_models/PostViewModel.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  )));
  getIt.registerLazySingleton<PostRepository>(() => PostRepository(dio: getIt<Dio>()));
  getIt.registerFactory<PostViewModel>(() => PostViewModel(postRepository: getIt<PostRepository>()));
}