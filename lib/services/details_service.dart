abstract class IDetailsService {
  Future<void> getSomeDelay();
}

class DetailsService implements IDetailsService {
  @override
  Future<void> getSomeDelay() {
    return Future.delayed(const Duration(seconds: 3));
  }
}
