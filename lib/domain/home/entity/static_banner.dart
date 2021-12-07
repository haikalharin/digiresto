import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'static_banner.freezed.dart';
part 'static_banner.g.dart';

StaticBanner staticBannerFromJson(String str) =>
    StaticBanner.fromJson(json.decode(str));

String staticBannerToJson(StaticBanner data) => json.encode(data.toJson());

@freezed
class StaticBanner with _$StaticBanner {
  const factory StaticBanner({
    required String? promoName,
    required String? promoDescription,
    required String? promoBanner,
    required String? promoUrl,
  }) = _StaticBanner;

  factory StaticBanner.fromJson(Map<String, dynamic> json) =>
      _$StaticBannerFromJson(json);
}
