import 'package:bloc/bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/models/result_model.dart';
import 'package:bloc_in_bloc_streaming_issue/services/global_service.dart';
import 'package:equatable/equatable.dart';

part 'global_bloc_event.dart';
part 'global_bloc_state.dart';

class GlobalBloc extends Bloc<GlobalBlocEvent, GlobalBlocState> {
  final IGlobalService _globalService;

  Result data = Result.undefined;

  GlobalBloc(this._globalService) : super(GlobalBlocInitial()) {
    on<GetGlobalTestData>((event, emit) => _getTestData(emit));
  }

  Future<void> _getTestData(
    Emitter<GlobalBlocState> emit,
  ) async {
    emit(GlobalTestDataLoading());

    data = await _globalService.getTest();

    emit(GlobalTestDataLoaded(data));
  }
}
