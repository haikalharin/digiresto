import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_outlet_model.freezed.dart';
part 'detail_outlet_model.g.dart';

DetailOutletResponse emptyFromJson(String str) =>
    DetailOutletResponse.fromJson(json.decode(str));

String emptyToJson(DetailOutletResponse data) => json.encode(data.toJson());

@freezed
class DetailOutletResponse with _$DetailOutletResponse {
  const factory DetailOutletResponse({
    required StatusResponse response,
    required DetailOutletDataResponse data,
    required MetaResponse meta,
  }) = _DetailOutletResponse;

  factory DetailOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailOutletResponseFromJson(json);
}

@freezed
class DetailOutletDataResponse with _$DetailOutletDataResponse {
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
class DetailOutletDataLastUpdateResponse
    with _$DetailOutletDataLastUpdateResponse {
  const factory DetailOutletDataLastUpdateResponse({
    required DateTime time,
    required String literal,
  }) = _DetailOutletDataLastUpdateResponse;

  factory DetailOutletDataLastUpdateResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOutletDataLastUpdateResponseFromJson(json);
}
