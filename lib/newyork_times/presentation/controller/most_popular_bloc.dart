import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:newyork_times/core/enums.dart';
import 'package:newyork_times/newyork_times/domin/usecases/get_mostpopular_usecase.dart';
import 'package:newyork_times/newyork_times/presentation/controller/most_popular_events.dart';
import 'package:newyork_times/newyork_times/presentation/controller/most_popular_states.dart';
class MostPopularBloc extends Bloc<MostPopularEvent, MostPopularState> {
  final GetPopularUsecase getPopularUsecase;


  MostPopularBloc(this.getPopularUsecase,) : super(const MostPopularState()) {

    on<GetMostPopularEvent>(_getPopular); //pass el event , emit

  }

  FutureOr<void> _getPopular(GetMostPopularEvent event, Emitter<MostPopularState> emit) async {
    final result = await getPopularUsecase.excute();

    result.fold((l) => emit(state.copyWith(
            mostPopularState: RequestState.error,
            mostPopularMessage: l.message,
      )),

      (r) => emit(
        state.copyWith(
          mostPopular: r,
          mostPopularState: RequestState.loaded,
        ),
      ),
    );
  }



}