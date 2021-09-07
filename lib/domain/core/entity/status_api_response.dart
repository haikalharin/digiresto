import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_api_response.freezed.dart';
part 'status_api_response.g.dart';

@freezed
class MetaResponse with _$MetaResponse {
  const factory MetaResponse({
    required String version,
  }) = _MetaResponse;

  factory MetaResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaResponseFromJson(json);
}

@freezed
class StatusResponse with _$StatusResponse {
  const factory StatusResponse({
    required String code,
    required String status,
    required String message,
    required StatusMessageDisplayResponse? messageDisplay,
  }) = _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);
}

@freezed
abstract class StatusMessageDisplayResponse
    with _$StatusMessageDisplayResponse {
  const factory StatusMessageDisplayResponse({
    required String id,
    required String en,
  }) = _StatusMessageDisplayResponse;

  factory StatusMessageDisplayResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusMessageDisplayResponseFromJson(json);
}
