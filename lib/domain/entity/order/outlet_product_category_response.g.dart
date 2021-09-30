// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_product_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutletProductCategoryResponse _$_$_OutletProductCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletProductCategoryResponse(
    response: OutletProductCategoryStatusResponse.fromJson(
        json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) => OutletProductCategoryDataResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    meta: OutletProductMetaResponse.fromJson(
        json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_OutletProductCategoryResponseToJson(
        _$_OutletProductCategoryResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_OutletProductCategoryDataResponse
    _$_$_OutletProductCategoryDataResponseFromJson(Map<String, dynamic> json) {
  return _$_OutletProductCategoryDataResponse(
    id: json['id'] as int,
    code: json['code'] as String,
    name: json['name'] as String,
    order: json['order'],
  );
}

Map<String, dynamic> _$_$_OutletProductCategoryDataResponseToJson(
        _$_OutletProductCategoryDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'order': instance.order,
    };

_$_OutletProductMetaResponse _$_$_OutletProductMetaResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletProductMetaResponse(
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$_$_OutletProductMetaResponseToJson(
        _$_OutletProductMetaResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

_$_OutletProductCategoryStatusResponse
    _$_$_OutletProductCategoryStatusResponseFromJson(
        Map<String, dynamic> json) {
  return _$_OutletProductCategoryStatusResponse(
    code: json['code'] as String,
    status: json['status'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_OutletProductCategoryStatusResponseToJson(
        _$_OutletProductCategoryStatusResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
    };
