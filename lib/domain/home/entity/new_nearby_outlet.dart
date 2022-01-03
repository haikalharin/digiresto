import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'new_nearby_outlet.freezed.dart';
part 'new_nearby_outlet.g.dart';

NewNearbyOutlet newNearbyOutletFromJson(String str) => NewNearbyOutlet.fromJson(json.decode(str));

String newNearbyOutletToJson(NewNearbyOutlet data) => json.encode(data.toJson());

@freezed
abstract class NewNearbyOutlet with _$NewNearbyOutlet {
  const factory NewNearbyOutlet({
    required Response response,
    required Data data,
    required Meta meta,
  }) = _NewNearbyOutlet;

  factory NewNearbyOutlet.fromJson(Map<String, dynamic> json) => _$NewNearbyOutletFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required List<OutletsHighight> outletsHighight,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class OutletsHighight with _$OutletsHighight {
  const factory OutletsHighight({
    required String id,
    required Title title,
    required Menu menu,
    required List<Outlet> outlets,
  }) = _OutletsHighight;

  factory OutletsHighight.fromJson(Map<String, dynamic> json) => _$OutletsHighightFromJson(json);
}

@freezed
abstract class Menu with _$Menu {
  const factory Menu({
    required String id,
    required bool isEnable,
    required Title title,
    required Title description,
    required bool withLocation,
    required bool isSearchable,
    required bool isHideViewAll,
    required bool isHideMerchantName,
    required bool isHideCity,
    required bool isHideDistance,
    required String icon,
    required String endpoint,
    required String model,
    required Param param,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}

@freezed
abstract class Title with _$Title {
  const factory Title({
    required String id,
    required String en,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}

@freezed
abstract class Param with _$Param {
  const factory Param({
    required String excludeMerchantCategories,
  }) = _Param;

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
}

@freezed
abstract class Outlet with _$Outlet {
  const factory Outlet({
    required String endpointName,
    required String id,
    required String? name,
    required String? city,
    required List<String> salesTypes,
    required bool isOpen,
    required String? logo,
    required int countOutlet,
    required double? rating,
    required int? priceRange,
    required String? priceRangeDesc,
    required String? merchantId,
    required String? merchantName,
    required String? merchantLogo,
    required String? callbackUrl,
    required Distance distance,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, dynamic> json) => _$OutletFromJson(json);
}

@freezed
abstract class Distance with _$Distance {
  const factory Distance({
    required double realRadius,
    required double distanceValue,
    required String distance,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) => _$DistanceFromJson(json);
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
