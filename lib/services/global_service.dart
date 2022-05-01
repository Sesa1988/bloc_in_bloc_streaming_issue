import 'package:bloc_in_bloc_streaming_issue/models/result_model.dart';

abstract class IGlobalService {
  Future<Result> getTest();
}

class GlobalService implements IGlobalService {
  @override
  Future<Result> getTest() {
    return Future.delayed(const Duration(seconds: 1), () => Result.success);
  }
}
