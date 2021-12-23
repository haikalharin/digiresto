import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'promo_outlet_response.freezed.dart';
part 'promo_outlet_response.g.dart';

PromoOutletResponse promoOutletResponseFromJson(String str) => PromoOutletResponse.fromJson(json.decode(str));

String promoOutletResponseToJson(PromoOutletResponse data) => json.encode(data.toJson());

@freezed
abstract class PromoOutletResponse with _$PromoOutletResponse {
  const factory PromoOutletResponse({
    required Response response,
    required List<PromoOutlet> data,
    required Meta meta,
  }) = _PromoOutletResponse;

  factory PromoOutletResponse.fromJson(Map<String, dynamic> json) => _$PromoOutletResponseFromJson(json);
}

@freezed
abstract class PromoOutlet with _$PromoOutlet {
  const factory PromoOutlet({
    required dynamic id,
    required dynamic description,
    required dynamic banner,
    required dynamic icon,
    required dynamic outletId,
    required dynamic productId,
    required dynamic voucher,
    required bool isFreeDelivery,
    required bool isHotPromo,
    required dynamic url,
    required dynamic name,
    required DateTime startDate,
    required DateTime endDate,
    required dynamic startTime,
    required dynamic endTime,
  }) = _PromoOutlet;

  factory PromoOutlet.fromJson(Map<String, dynamic> json) => _$PromoOutletFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required String version,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class Response with _$Response {
  const factory Response({
    required String code,
    required String status,
    required String message,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}
