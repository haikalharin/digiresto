import 'dart:convert';

// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_method_response.freezed.dart';
part 'delivery_method_response.g.dart';

DeliveryMethodResponse emptyFromJson(String str) =>
    DeliveryMethodResponse.fromJson(json.decode(str));

String emptyToJson(DeliveryMethodResponse data) => json.encode(data.toJson());

@freezed
abstract class DeliveryMethodResponse with _$DeliveryMethodResponse {
  const factory DeliveryMethodResponse({
    required StatusResponse response,
    required List<DeliveryMethodDataResponse> data,
    required MetaResponse meta,
  }) = _DeliveryMethodResponse;

  factory DeliveryMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodResponseFromJson(json);
}

@freezed
abstract class DeliveryMethodDataResponse with _$DeliveryMethodDataResponse {
  const factory DeliveryMethodDataResponse({
    required String provider,
    required String name,
    required List<DeliveryMethodDataShipmentMethodResponse> shipmentMethods,
    required DeliveryMethodDataParamResponse param,
  }) = _DeliveryMethodDataResponse;

  factory DeliveryMethodDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodDataResponseFromJson(json);
}

@freezed
abstract class DeliveryMethodDataParamResponse
    with _$DeliveryMethodDataParamResponse {
  const factory DeliveryMethodDataParamResponse({
    required String? provider,
    required String? price,
    required String? address,
    required String? shipmentMethod,
    required List<String> location,
  }) = _DeliveryMethodDataParamResponse;

  factory DeliveryMethodDataParamResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodDataParamResponseFromJson(json);
}

@freezed
abstract class DeliveryMethodDataShipmentMethodResponse
    with _$DeliveryMethodDataShipmentMethodResponse {
  const factory DeliveryMethodDataShipmentMethodResponse({
    required String name,
    required String? description,
    required int price,
    required String etd,
    required int? originalPrice,
  }) = _DeliveryMethodDataShipmentMethodResponse;

  factory DeliveryMethodDataShipmentMethodResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DeliveryMethodDataShipmentMethodResponseFromJson(json);
}
