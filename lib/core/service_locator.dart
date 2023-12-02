
import 'package:get_it/get_it.dart';
import 'package:newyork_times/newyork_times/data/data_source/most_popular_remote_datasource.dart';
import 'package:newyork_times/newyork_times/data/repository/most_popular_imprepository.dart';
import 'package:newyork_times/newyork_times/domin/repository/most_popular_basereopsitory.dart';
import 'package:newyork_times/newyork_times/domin/usecases/get_mostpopular_usecase.dart';
import 'package:newyork_times/newyork_times/presentation/controller/most_popular_bloc.dart';


final sl = GetIt.instance;

class ServicesLocator {
  void init() {

    sl.registerFactory(() => MostPopularBloc(sl(), ));

    /// Use Cases
    sl.registerLazySingleton(() => GetPopularUsecase(sl()));



    /// Repository
    sl.registerLazySingleton<BaseMostPopularRepository>(
            () => MostPopularRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMostpopularRemoteDataSource>(
            () => MostpopularRemoteDataSource());
  }
}