// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_outlet_product_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOutletProductParam _$_$_GetOutletProductParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletProductParam(
    queryString: GetOutletProductQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body: GetOutletProductBodyParam.fromJson(
        json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetOutletProductParamToJson(
        _$_GetOutletProductParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetOutletProductBodyParam _$_$_GetOutletProductBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletProductBodyParam();
}

Map<String, dynamic> _$_$_GetOutletProductBodyParamToJson(
        _$_GetOutletProductBodyParam instance) =>
    <String, dynamic>{};

_$_GetOutletProductQueryParam _$_$_GetOutletProductQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletProductQueryParam(
    outletId: json['outletId'] as String,
    categoryId: json['categoryId'] as String,
    filter: json['filter'] as String,
    page: json['page'] as int,
    limit: json['limit'] as int,
  );
}

Map<String, dynamic> _$_$_GetOutletProductQueryParamToJson(
        _$_GetOutletProductQueryParam instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
      'categoryId': instance.categoryId,
      'filter': instance.filter,
      'page': instance.page,
      'limit': instance.limit,
    };
