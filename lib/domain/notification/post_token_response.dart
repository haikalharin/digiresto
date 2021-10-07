import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post_token_response.freezed.dart';
part 'post_token_response.g.dart';

PostTokenResponse postTokenResponseFromJson(String str) =>
    PostTokenResponse.fromJson(json.decode(str));

String postTokenResponseToJson(PostTokenResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class PostTokenResponse with _$PostTokenResponse {
  const factory PostTokenResponse({
    required String code,
    required String status,
    required String message,
  }) = _PostTokenResponse;

  factory PostTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$PostTokenResponseFromJson(json);
}
