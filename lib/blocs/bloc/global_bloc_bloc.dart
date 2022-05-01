import 'package:bloc/bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/services/global_service.dart';
import 'package:equatable/equatable.dart';

part 'global_bloc_event.dart';
part 'global_bloc_state.dart';

class GlobalBloc extends Bloc<GlobalBlocEvent, GlobalBlocState> {
  final IGlobalService _globalService;

  GlobalBloc(this._globalService) : super(GlobalBlocInitial()) {
    on<GetTestData>((event, emit) => _getTestData(emit));
  }

  Future<void> _getTestData(
    Emitter<GlobalBlocState> emit,
  ) async {
    var result = await _globalService.getTest();
    emit(GlobalTestDataLoaded(result));
  }
}
