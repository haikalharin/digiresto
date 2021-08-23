import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_outlet_response.freezed.dart';
part 'promo_outlet_response.g.dart';

PromoOutletResponse emptyFromJson(String str) =>
    PromoOutletResponse.fromJson(json.decode(str));

String emptyToJson(PromoOutletResponse data) => json.encode(data.toJson());

@freezed
abstract class PromoOutletResponse with _$PromoOutletResponse {
  const factory PromoOutletResponse({
    required StatusResponse response,
    required List<PromoOutletDataResponse> data,
    required MetaResponse meta,
  }) = _PromoOutletResponse;

  factory PromoOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$PromoOutletResponseFromJson(json);
}

@freezed
abstract class PromoOutletDataResponse with _$PromoOutletDataResponse {
  const factory PromoOutletDataResponse({
    required String id,
    required String banner,
    required String? icon,
    required String? outletId,
    required String? productId,
    required PromoOutletDataVoucherResponse? voucher,
    required bool isFreeDelivery,
    required String? url,
    required String name,
  }) = _PromoOutletDataResponse;

  factory PromoOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PromoOutletDataResponseFromJson(json);
}

@freezed
abstract class PromoOutletDataVoucherResponse
    with _$PromoOutletDataVoucherResponse {
  const factory PromoOutletDataVoucherResponse({
    required String code,
  }) = _PromoOutletDataVoucherResponse;

  factory PromoOutletDataVoucherResponse.fromJson(Map<String, dynamic> json) =>
      _$PromoOutletDataVoucherResponseFromJson(json);
}
