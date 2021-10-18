import 'package:digiresto/domain/core/entity/status_api_response.dart';

class AuthException implements Exception {
  StatusMessageDisplayResponse? message;
  AuthException({
    this.message,
  });
}
