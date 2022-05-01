part of 'global_bloc_bloc.dart';

abstract class GlobalBlocEvent extends Equatable {
  const GlobalBlocEvent();

  @override
  List<Object> get props => [];
}

class GetTestData extends GlobalBlocEvent {}
