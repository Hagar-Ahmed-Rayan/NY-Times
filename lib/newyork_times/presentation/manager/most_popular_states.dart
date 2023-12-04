import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/most_popular_entity.dart';

abstract class MostPopularState {}

class MostPopularInitialState extends MostPopularState {}

class MostPopularLoadingState extends MostPopularState {}

class MostPopularFailureState extends MostPopularState {
  final String errMessage;

  MostPopularFailureState(this.errMessage);
}

class MostPopularSuccessState extends MostPopularState {
  final MostPopular mostPopular;

  MostPopularSuccessState(this.mostPopular);
}
