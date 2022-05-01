part of 'details_bloc_bloc.dart';

abstract class DetailsBlocState extends Equatable {
  const DetailsBlocState();

  @override
  List<Object> get props => [];
}

class DetailsBlocInitial extends DetailsBlocState {}

class DetailsBlocResultLoading extends DetailsBlocState {}

class DetailsBlocResultLoaded extends DetailsBlocState {
  final Result result;

  const DetailsBlocResultLoaded(this.result);

  @override
  List<Object> get props => [result];
}
