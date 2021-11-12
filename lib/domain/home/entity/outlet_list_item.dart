import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'outlet_list_item.freezed.dart';
part 'outlet_list_item.g.dart';

List<OutletListItem> outletListItemFromJson(String str) =>
    List<OutletListItem>.from(
        json.decode(str).map((x) => OutletListItem.fromJson(x)));

String outletListItemToJson(List<OutletListItem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class OutletListItem with _$OutletListItem {
  const factory OutletListItem({
    required String endpointName,
    required String id,
    required String name,
    required String city,
    required List<String> salesTypes,
    required bool isOpen,
    required String logo,
    required int countOutlet,
    required int rating,
    required int priceRange,
    required String priceRangeDesc,
    required String merchantId,
    required String merchantName,
    required String merchantLogo,
    required String callbackUrl,
    required Distance distance,
  }) = _OutletListItem;

  factory OutletListItem.fromJson(Map<String, dynamic> json) =>
      _$OutletListItemFromJson(json);
}

@freezed
class Distance with _$Distance {
  const factory Distance({
    required double realRadius,
    required double distanceValue,
    required String distance,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}
