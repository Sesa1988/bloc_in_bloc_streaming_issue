part of 'details_bloc_bloc.dart';

abstract class DetailsBlocEvent extends Equatable {
  const DetailsBlocEvent();

  @override
  List<Object> get props => [];
}

class GetDetails extends DetailsBlocEvent {
  final Result input;
  final int timestamp;

  const GetDetails(this.input, this.timestamp);

  @override
  List<Object> get props => [input, timestamp];
}
