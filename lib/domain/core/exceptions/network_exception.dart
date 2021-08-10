class NetworkException implements Exception {
  String? baseEntity;

  NetworkException(String? baseEntity) {
    // ignore: prefer_initializing_formals
    this.baseEntity = baseEntity;
  }
}
