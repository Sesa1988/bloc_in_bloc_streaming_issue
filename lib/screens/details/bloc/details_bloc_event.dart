part of 'details_bloc_bloc.dart';

abstract class DetailsBlocEvent extends Equatable {
  const DetailsBlocEvent();

  @override
  List<Object> get props => [];
}

class GetDetails extends DetailsBlocEvent {
  final Result input;

  const GetDetails(this.input);

  @override
  List<Object> get props => [input];
}
