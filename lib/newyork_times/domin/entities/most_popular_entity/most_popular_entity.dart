import 'package:equatable/equatable.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/results_entity.dart';

class MostPopular extends Equatable {
  final String? status;
  final String? copyright;
  final num? numResults;
  final List<Results>? results;

  MostPopular({
    this.status,
    this.copyright,
    this.numResults,
    this.results,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        status,
        copyright,
        numResults,
        results,
      ];
}
