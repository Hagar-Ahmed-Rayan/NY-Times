import 'package:newyork_times/core/api_service.dart';
import 'package:newyork_times/newyork_times/data/models/most_popular_model/most_popular_model.dart';

import '../../../core/api_endpoints.dart';

abstract class BaseMostpopularRemoteDataSource {
  Future<MostPopularModel> getMostPopularData();
}

class MostpopularRemoteDataSource extends BaseMostpopularRemoteDataSource {
  final ApiService apiService;

  MostpopularRemoteDataSource(this.apiService);

  @override
  Future<MostPopularModel> getMostPopularData() async {
    MostPopularModel mostPopularModel;

    var response = await apiService.get(endPoint: ApiConst.MOST_POPULAR_VIEWED);

    mostPopularModel = MostPopularModel.fromJson(response);

    return mostPopularModel;
  }
}
