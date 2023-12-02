import 'package:dartz/dartz.dart';

//import 'package:newyork_times/core/errors/failure.dart';

import '../../../core/errors/failure.dart';
import '../entities/most_popular_entity.dart';
import '../repository/most_popular_basereopsitory.dart';

class GetPopularUsecase  {
  final BaseMostPopularRepository baseMostPopularRepository;

  GetPopularUsecase(this.baseMostPopularRepository);


  Future<Either<Failure, MostPopular>> excute() async {
    return await baseMostPopularRepository.getMostPopular();
  }
}