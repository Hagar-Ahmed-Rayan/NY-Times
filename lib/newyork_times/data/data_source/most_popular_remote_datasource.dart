import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../core/api_endpoints.dart';
import '../../../core/errors/ErrorMessagModel.dart';
import '../../../core/errors/exceptions.dart';
import '../models/most_popular_model/MostPopularModel.dart';
abstract class BaseMostpopularRemoteDataSource {


  Future<MostPopularModel> getMostPopularData( );

}
class MostpopularRemoteDataSource extends BaseMostpopularRemoteDataSource {

//--header 'Accept: application/json'

  @override
  Future<MostPopularModel> getMostPopularData() async {
       final response = await Dio().get(ApiConst.MOST_POPULAR_VIEWED);

       if (response.statusCode == 200) {
         return MostPopularModel.fromJson(response.data);
       }
       else {
         print(response.data);
         throw ServerException(
           errorMessageModel: ErrorMessagModel.fromJson(response.data),
         );
       }
     }





  }

