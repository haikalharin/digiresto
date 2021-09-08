// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_promo_outlet_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetListPromoOutletParam _$_$_GetListPromoOutletParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetListPromoOutletParam(
    queryString: GetListPromoOutletQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body: GetListPromoOutletBodyParam.fromJson(
        json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetListPromoOutletParamToJson(
        _$_GetListPromoOutletParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetListPromoOutletBodyParam _$_$_GetListPromoOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetListPromoOutletBodyParam();
}

Map<String, dynamic> _$_$_GetListPromoOutletBodyParamToJson(
        _$_GetListPromoOutletBodyParam instance) =>
    <String, dynamic>{};

_$_GetListPromoOutletQueryParam _$_$_GetListPromoOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetListPromoOutletQueryParam(
    outletId: json['outletId'] as String,
    merchantId: json['merchantId'] as String,
  );
}

Map<String, dynamic> _$_$_GetListPromoOutletQueryParamToJson(
        _$_GetListPromoOutletQueryParam instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
      'merchantId': instance.merchantId,
    };
