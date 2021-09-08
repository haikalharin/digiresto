// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_promo_outlet_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPromoOutletParam _$_$_GetPromoOutletParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetPromoOutletParam(
    queryString: GetPromoOutletQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body:
        GetPromoOutletBodyParam.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetPromoOutletParamToJson(
        _$_GetPromoOutletParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetPromoOutletBodyParam _$_$_GetPromoOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetPromoOutletBodyParam();
}

Map<String, dynamic> _$_$_GetPromoOutletBodyParamToJson(
        _$_GetPromoOutletBodyParam instance) =>
    <String, dynamic>{};

_$_GetPromoOutletQueryParam _$_$_GetPromoOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetPromoOutletQueryParam(
    location: json['location'] as String,
    page: json['page'] as int,
    filter: json['filter'] as String,
  );
}

Map<String, dynamic> _$_$_GetPromoOutletQueryParamToJson(
        _$_GetPromoOutletQueryParam instance) =>
    <String, dynamic>{
      'location': instance.location,
      'page': instance.page,
      'filter': instance.filter,
    };
