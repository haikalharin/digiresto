// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_outlet_product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOutletProductCategoryParam _$_$_GetOutletProductCategoryParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletProductCategoryParam(
    queryString: GetOutletProductCategoryQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body: GetOutletProductCategoryBodyParam.fromJson(
        json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetOutletProductCategoryParamToJson(
        _$_GetOutletProductCategoryParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetOutletProductCategoryBodyParam
    _$_$_GetOutletProductCategoryBodyParamFromJson(Map<String, dynamic> json) {
  return _$_GetOutletProductCategoryBodyParam();
}

Map<String, dynamic> _$_$_GetOutletProductCategoryBodyParamToJson(
        _$_GetOutletProductCategoryBodyParam instance) =>
    <String, dynamic>{};

_$_GetOutletProductCategoryQueryParam
    _$_$_GetOutletProductCategoryQueryParamFromJson(Map<String, dynamic> json) {
  return _$_GetOutletProductCategoryQueryParam(
    outletId: json['outletId'] as String,
  );
}

Map<String, dynamic> _$_$_GetOutletProductCategoryQueryParamToJson(
        _$_GetOutletProductCategoryQueryParam instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
    };
