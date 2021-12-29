// To parse this JSON data, do
//
//     final getDetailOutletByCateringParam = getDetailOutletByCateringParamFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_detail_outlet_by_catering_param.freezed.dart';
part 'get_detail_outlet_by_catering_param.g.dart';

GetDetailOutletByCateringParam getDetailOutletByCateringParamFromJson(String str) => GetDetailOutletByCateringParam.fromJson(json.decode(str));

String getDetailOutletByCateringParamToJson(GetDetailOutletByCateringParam data) => json.encode(data.toJson());

@freezed
abstract class GetDetailOutletByCateringParam with _$GetDetailOutletByCateringParam {
  const factory GetDetailOutletByCateringParam({
    required GetDetailOutletByCateringQueryParam queryString,
  }) = _GetDetailOutletByCateringParam;

  factory GetDetailOutletByCateringParam.fromJson(Map<String, dynamic> json) => _$GetDetailOutletByCateringParamFromJson(json);
}

@freezed
abstract class GetDetailOutletByCateringQueryParam with _$GetDetailOutletByCateringQueryParam {
  const factory GetDetailOutletByCateringQueryParam({
    required String merchantId,
    required String location,
  }) = _GetDetailOutletByCateringQueryParam;

  factory GetDetailOutletByCateringQueryParam.fromJson(Map<String, dynamic> json) => _$GetDetailOutletByCateringQueryParamFromJson(json);
}
