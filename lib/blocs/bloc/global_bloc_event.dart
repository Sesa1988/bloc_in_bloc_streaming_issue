part of 'global_bloc_bloc.dart';

abstract class GlobalBlocEvent extends Equatable {
  const GlobalBlocEvent();

  @override
  List<Object> get props => [];
}

class GetGlobalTestData extends GlobalBlocEvent {
  final int timestamp;

  const GetGlobalTestData(this.timestamp);

  @override
  List<Object> get props => [timestamp];
}
