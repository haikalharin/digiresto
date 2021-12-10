import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'outlet_category_catering_request.freezed.dart';
part 'outlet_category_catering_request.g.dart';

OutletCategoryCateringRequest outletCategoryCateringRequestFromJson(String str) => OutletCategoryCateringRequest.fromJson(json.decode(str));

String outletCategoryCateringRequestToJson(OutletCategoryCateringRequest data) => json.encode(data.toJson());

@freezed
abstract class OutletCategoryCateringRequest with _$OutletCategoryCateringRequest {
  const factory OutletCategoryCateringRequest({
    required QueryString queryString,
  }) = _OutletCategoryCateringRequest;

  factory OutletCategoryCateringRequest.fromJson(Map<String, dynamic> json) => _$OutletCategoryCateringRequestFromJson(json);
}

@freezed
abstract class QueryString with _$QueryString {
  const factory QueryString({
    required String page,
    required String filter,
    required List<dynamic> excludeMerchantIds,
    required bool isHideOpen,
    required String location,
    required bool isCatering,
    required String mealsTypes,
    required DateTime preOrderDate,
  }) = _QueryString;

  factory QueryString.fromJson(Map<String, dynamic> json) => _$QueryStringFromJson(json);
}
