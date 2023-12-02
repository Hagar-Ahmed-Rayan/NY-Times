
import 'package:dartz/dartz.dart';
import 'package:newyork_times/core/errors/exceptions.dart';
import 'package:newyork_times/core/errors/failure.dart';
import 'package:newyork_times/newyork_times/data/data_source/most_popular_remote_datasource.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity.dart';
import 'package:newyork_times/newyork_times/domin/repository/most_popular_basereopsitory.dart';

class MostPopularRepository extends BaseMostPopularRepository {
  final BaseMostpopularRemoteDataSource baseMostpopularRemoteDataSource;

  MostPopularRepository(this.baseMostpopularRemoteDataSource);

  @override
  Future<Either<Failure, MostPopular>> getMostPopular() async {
    try {
      final result = await baseMostpopularRemoteDataSource.getMostPopularData();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel!.fault!.faultstring.toString()));
    }
  }
}
