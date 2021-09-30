// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_digi_discount_outlet_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDigiDiscountOutletParam _$_$_GetDigiDiscountOutletParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetDigiDiscountOutletParam(
    queryString: GetDigiDiscountOutletQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body: GetDigiDiscountOutletBodyParam.fromJson(
        json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetDigiDiscountOutletParamToJson(
        _$_GetDigiDiscountOutletParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetDigiDiscountOutletBodyParam _$_$_GetDigiDiscountOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetDigiDiscountOutletBodyParam();
}

Map<String, dynamic> _$_$_GetDigiDiscountOutletBodyParamToJson(
        _$_GetDigiDiscountOutletBodyParam instance) =>
    <String, dynamic>{};

_$_GetDigiDiscountOutletQueryParam _$_$_GetDigiDiscountOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetDigiDiscountOutletQueryParam(
    location: json['location'] as String,
    page: json['page'] as int,
    filter: json['filter'] as String,
  );
}

Map<String, dynamic> _$_$_GetDigiDiscountOutletQueryParamToJson(
        _$_GetDigiDiscountOutletQueryParam instance) =>
    <String, dynamic>{
      'location': instance.location,
      'page': instance.page,
      'filter': instance.filter,
    };
