import 'package:dartz/dartz.dart';
import 'package:newyork_times/core/errors/failure.dart';
import 'package:newyork_times/newyork_times/data/models/most_popular_model/most_popular_model.dart';
import 'package:newyork_times/newyork_times/domin/repository/most_popular_base_reopsitory.dart';

class GetPopularUsecase {
  final BaseMostPopularRepository baseMostPopularRepository;

  GetPopularUsecase(this.baseMostPopularRepository);

  Future<Either<Failure, MostPopularModel>> excute() async {
    return await baseMostPopularRepository.getMostPopular();
  }
}

