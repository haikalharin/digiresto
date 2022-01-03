class NetworkException implements Exception {
  late dynamic message;
  int? statusCode;
  NetworkException({dynamic message, int? statusCode}) {
    this.message = message;
    this.statusCode = statusCode;
  }
}
