import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/models/result_model.dart';
import 'package:bloc_in_bloc_streaming_issue/services/details_service.dart';
import 'package:equatable/equatable.dart';

part 'details_bloc_event.dart';
part 'details_bloc_state.dart';

class DetailsBloc extends Bloc<DetailsBlocEvent, DetailsBlocState> {
  final IDetailsService _detailsService;
  final Stream<GlobalBlocState> _globalBlocStream;
  late StreamSubscription _subscription;

  DetailsBloc(this._detailsService, this._globalBlocStream)
      : super(DetailsBlocInitial()) {
    _subscription = _globalBlocStream.listen((state) {
      if (state is GlobalTestDataLoaded) {
        add(GetDetails(state.result, DateTime.now().millisecondsSinceEpoch));
      }
    });
    on<GetDetails>((event, emit) => _getDetails(event, emit));
  }

  Future<void> _getDetails(
    GetDetails event,
    Emitter<DetailsBlocState> emit,
  ) async {
    emit(DetailsBlocResultLoading());

    await _detailsService.getSomeDelay();

    emit(DetailsBlocResultLoaded(
      event.input,
      DateTime.now().millisecondsSinceEpoch,
    ));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
