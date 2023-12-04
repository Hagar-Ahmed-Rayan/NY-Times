import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newyork_times/core/api_service.dart';
import 'package:newyork_times/newyork_times/data/data_source/most_popular_remote_datasource.dart';
import 'package:newyork_times/newyork_times/data/repository/most_popular_repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<MostPopularRepository>(
    MostPopularRepository(
      MostpopularRemoteDataSource(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
