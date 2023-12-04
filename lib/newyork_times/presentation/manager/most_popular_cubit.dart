import 'package:bloc/bloc.dart';
import 'package:newyork_times/newyork_times/domin/usecases/get_mostpopular_usecase.dart';
import 'package:newyork_times/newyork_times/presentation/manager/most_popular_states.dart';

class MostPopularCubit extends Cubit<MostPopularState> {
  MostPopularCubit(this.getPopularUsecase) : super(MostPopularInitialState());

  final GetPopularUsecase getPopularUsecase;

  Future<void> fetchMostPopular() async {
    emit(MostPopularLoadingState());
    var result = await getPopularUsecase.excute();
    result.fold((failure) {
      emit(MostPopularFailureState(failure.message));
    }, (mostPopular) {
      emit(MostPopularSuccessState(mostPopular));
    });
  }
}
