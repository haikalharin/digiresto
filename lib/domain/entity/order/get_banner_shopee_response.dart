// To parse this JSON data, do
//
//     final getBannerShopeeResponse = getBannerShopeeResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_banner_shopee_response.freezed.dart';
part 'get_banner_shopee_response.g.dart';

GetBannerShopeeResponse getBannerShopeeResponseFromJson(String str) => GetBannerShopeeResponse.fromJson(json.decode(str));

String getBannerShopeeResponseToJson(GetBannerShopeeResponse data) => json.encode(data.toJson());

@freezed
abstract class GetBannerShopeeResponse with _$GetBannerShopeeResponse {
  const factory GetBannerShopeeResponse({
    String? id,
    String? logo,
    String? background,
    ShortDescription? title,
    ShortDescription? shortDescription,
    String? deeplink,
    bool? isEnable,
  }) = _GetBannerShopeeResponse;

  factory GetBannerShopeeResponse.fromJson(Map<String, dynamic> json) => _$GetBannerShopeeResponseFromJson(json);
}

@freezed
abstract class ShortDescription with _$ShortDescription {
  const factory ShortDescription({
    String? id,
    String? en,
  }) = _ShortDescription;

  factory ShortDescription.fromJson(Map<String, dynamic> json) => _$ShortDescriptionFromJson(json);
}
