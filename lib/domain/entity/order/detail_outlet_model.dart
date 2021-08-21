import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_outlet_model.freezed.dart';
part 'detail_outlet_model.g.dart';

DetailOutletResponse emptyFromJson(String str) =>
    DetailOutletResponse.fromJson(json.decode(str));

String emptyToJson(DetailOutletResponse data) => json.encode(data.toJson());

@freezed
abstract class DetailOutletResponse with _$DetailOutletResponse {
  const factory DetailOutletResponse({
    required DetailOutletStatusResponse response,
    required DetailOutletDataResponse data,
    required DetailOutletMetaResponse meta,
  }) = _DetailOutletResponse;

  factory DetailOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailOutletResponseFromJson(json);
}

@freezed
abstract class DetailOutletDataResponse with _$DetailOutletDataResponse {
  const factory DetailOutletDataResponse({
    required String endpointName,
    required String id,
    required String name,
    required String city,
    required List<String> salesTypes,
    required bool isOpen,
    required dynamic logo,
    required String merchantId,
    required String merchantName,
    required dynamic merchantLogo,
    required String callbackUrl,
    required String description,
    required String address,
    required List<String> location,
    required String ownerPhone,
    required String poCutoff,
    required int rating,
    required int totalReview,
    required DetailOutletDataLastUpdateResponse lastUpdate,
    required String merchantCategory,
  }) = _DetailOutletDataResponse;

  factory DetailOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailOutletDataResponseFromJson(json);
}

@freezed
abstract class DetailOutletDataLastUpdateResponse
    with _$DetailOutletDataLastUpdateResponse {
  const factory DetailOutletDataLastUpdateResponse({
    required DateTime time,
    required String literal,
  }) = _DetailOutletDataLastUpdateResponse;

  factory DetailOutletDataLastUpdateResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOutletDataLastUpdateResponseFromJson(json);
}

@freezed
abstract class DetailOutletMetaResponse with _$DetailOutletMetaResponse {
  const factory DetailOutletMetaResponse({
    required String version,
  }) = _DetailOutletMetaResponse;

  factory DetailOutletMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailOutletMetaResponseFromJson(json);
}

@freezed
abstract class DetailOutletStatusResponse with _$DetailOutletStatusResponse {
  const factory DetailOutletStatusResponse({
    required String code,
    required String status,
    required String message,
  }) = _DetailOutletStatusResponse;

  factory DetailOutletStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailOutletStatusResponseFromJson(json);
}
