abstract class IGlobalService {
  Future<bool> getTest();
}

class GlobalService implements IGlobalService {
  @override
  Future<bool> getTest() {
    return Future.delayed(const Duration(seconds: 3), () => true);
  }
}
