import 'package:dartz/dartz.dart';
import 'package:newyork_times/newyork_times/data/models/most_popular_model/most_popular_model.dart';
import '../../../core/errors/failure.dart';

abstract class BaseMostPopularRepository {
  Future<Either<Failure, MostPopularModel>> getMostPopular();
}
