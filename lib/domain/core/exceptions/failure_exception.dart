import 'package:digiresto/domain/core/entity/status_api_response.dart';

class FailureException implements Exception {
  String? code;
  StatusMessageDisplayResponse? message;
  FailureException({
    this.code,
    this.message,
  });
}
