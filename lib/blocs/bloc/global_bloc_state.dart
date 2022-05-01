part of 'global_bloc_bloc.dart';

abstract class GlobalBlocState extends Equatable {
  const GlobalBlocState();

  @override
  List<Object> get props => [];
}

class GlobalBlocInitial extends GlobalBlocState {}

class GlobalTestDataLoading extends GlobalBlocState {}

class GlobalTestDataLoaded extends GlobalBlocState {
  final Result result;
  final int timestamp;

  const GlobalTestDataLoaded(this.result, this.timestamp);

  @override
  List<Object> get props => [result, timestamp];
}
