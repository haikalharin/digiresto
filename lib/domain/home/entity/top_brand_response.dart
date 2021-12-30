// To parse this JSON data, do
//
//     final topBrandResponse = topBrandResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_brand_response.freezed.dart';
part 'top_brand_response.g.dart';

TopBrandResponse topBrandResponseFromJson(String str) =>
    TopBrandResponse.fromJson(json.decode(str));

String topBrandResponseToJson(TopBrandResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class TopBrandResponse with _$TopBrandResponse {
  const factory TopBrandResponse({
    required List<TopBrandResponData> data,
  }) = _TopBrandResponse;

  factory TopBrandResponse.fromJson(Map<String, dynamic> json) =>
      _$TopBrandResponseFromJson(json);
}

@freezed
abstract class TopBrandResponData with _$TopBrandResponData {
  const factory TopBrandResponData({
    required String id,
    required Description title,
    required Description description,
    required String menuId,
    required List<ListOutlet> listOutlet,
  }) = _TopBrandResponData;

  factory TopBrandResponData.fromJson(Map<String, dynamic> json) =>
      _$TopBrandResponDataFromJson(json);
}

@freezed
abstract class Description with _$Description {
  const factory Description({
    required String id,
    required String en,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

@freezed
abstract class ListOutlet with _$ListOutlet {
  const factory ListOutlet({
    required String name,
    required String logo,
  }) = _ListOutlet;

  factory ListOutlet.fromJson(Map<String, dynamic> json) =>
      _$ListOutletFromJson(json);
}
