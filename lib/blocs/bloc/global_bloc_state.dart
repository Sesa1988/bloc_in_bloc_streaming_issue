part of 'global_bloc_bloc.dart';

abstract class GlobalBlocState extends Equatable {
  const GlobalBlocState();

  @override
  List<Object> get props => [];
}

class GlobalBlocInitial extends GlobalBlocState {}

class GlobalTestDataLoaded extends GlobalBlocState {
  final bool result;

  const GlobalTestDataLoaded(this.result);

  @override
  List<Object> get props => [result];
}
