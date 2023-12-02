import 'package:equatable/equatable.dart';

abstract class MostPopularEvent extends Equatable {
  const MostPopularEvent();

  @override
  List<Object> get props => [];
}

class GetMostPopularEvent extends MostPopularEvent {}

