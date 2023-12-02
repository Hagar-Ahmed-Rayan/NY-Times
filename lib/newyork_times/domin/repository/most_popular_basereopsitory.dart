import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/most_popular_entity.dart';

abstract class BaseMostPopularRepository {
  Future<Either<Failure, MostPopular>>  getMostPopular();
}