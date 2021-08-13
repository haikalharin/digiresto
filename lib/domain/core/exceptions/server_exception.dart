class ServerException implements Exception {
  String? message;
  String? code;
  ServerException({
    this.message,
    this.code,
  });
}
