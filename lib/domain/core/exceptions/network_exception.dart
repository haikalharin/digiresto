class NetworkException implements Exception {
  late dynamic message;
  int? statusCode;
  NetworkException({dynamic message, int? statusCode}) {
    this.message = message;
    this.statusCode = statusCode;
  }
}

class AuthException extends NetworkException {
  AuthException({message, statusCode})
      : super(message: message, statusCode: statusCode);
}
