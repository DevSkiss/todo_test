abstract class SampleApiService {
  Future<String> getSampleString();
}

class SampleApiServiceImpl implements SampleApiService {
  @override
  Future<String> getSampleString() {
    throw UnimplementedError();
  }
}
