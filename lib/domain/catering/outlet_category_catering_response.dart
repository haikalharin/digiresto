// To parse this JSON data, do
//
//     final outletCategoryCateringResponse = outletCategoryCateringResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'outlet_category_catering_response.freezed.dart';
part 'outlet_category_catering_response.g.dart';

OutletCategoryCateringResponse outletCategoryCateringResponseFromJson(
        String str) =>
    OutletCategoryCateringResponse.fromJson(json.decode(str));

String outletCategoryCateringResponseToJson(
        OutletCategoryCateringResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class OutletCategoryCateringResponse
    with _$OutletCategoryCateringResponse {
  const factory OutletCategoryCateringResponse({
    required String endpointName,
    required String id,
    required String name,
    required String city,
    required List<String> salesTypes,
    required bool isOpen,
    required String? logo,
    required int? countOutlet,
    required double? rating,
    required int priceRange,
    required String priceRangeDesc,
    required String merchantId,
    required String merchantName,
    required String? merchantLogo,
    required String? callbackUrl,
    required Distance distance,
  }) = _OutletCategoryCateringResponse;

  factory OutletCategoryCateringResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryCateringResponseFromJson(json);
}

@freezed
abstract class Distance with _$Distance {
  const factory Distance({
    required double realRadius,
    required double distanceValue,
    required String distance,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}
