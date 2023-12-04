import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:newyork_times/core/errors/failure.dart';
import 'package:newyork_times/newyork_times/data/data_source/most_popular_remote_datasource.dart';
import 'package:newyork_times/newyork_times/data/models/most_popular_model/most_popular_model.dart';
import 'package:newyork_times/newyork_times/domin/repository/most_popular_base_reopsitory.dart';

class MostPopularRepository extends BaseMostPopularRepository {
  final BaseMostpopularRemoteDataSource baseMostpopularRemoteDataSource;

  MostPopularRepository(this.baseMostpopularRemoteDataSource);

  @override
  Future<Either<Failure, MostPopularModel>> getMostPopular() async {
    try {
      final result = await baseMostpopularRemoteDataSource.getMostPopularData();
      return Right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
