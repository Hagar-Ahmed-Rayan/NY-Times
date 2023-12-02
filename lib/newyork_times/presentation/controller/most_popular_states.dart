import 'package:equatable/equatable.dart';

import '../../../core/enums.dart';
import '../../domin/entities/most_popular_entity.dart';


class MostPopularState extends Equatable {
  final MostPopular? mostPopular;
  final RequestState mostPopularState;
  final String mostPopularMessage;


  const MostPopularState({
    this.mostPopular ,
    this.mostPopularState = RequestState.loading,
    this.mostPopularMessage = '',

  });

  MostPopularState copyWith({
    MostPopular? mostPopular,
    RequestState? mostPopularState,
    String? mostPopularMessage,

  }) {
    return MostPopularState(
      //if is true(contain value)==>7tha==7t elly galy==nowPlayingMovies
      //else (it is null)==>7t el valus elly kant m3aya abl kda
      mostPopular: mostPopular ?? this.mostPopular,
      mostPopularState: mostPopularState ?? this.mostPopularState,
      mostPopularMessage: mostPopularMessage ?? this.mostPopularMessage,

    );
  }



  @override
  List<Object?> get props => [
    mostPopular,
    mostPopularState,
    mostPopularMessage,

  ];
}