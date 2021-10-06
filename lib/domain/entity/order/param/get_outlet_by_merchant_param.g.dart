// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_outlet_by_merchant_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOutletByMerchantParam _$$_GetOutletByMerchantParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetOutletByMerchantParam(
      queryString: GetOutletByMerchantQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: GetOutletByMerchantBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetOutletByMerchantParamToJson(
        _$_GetOutletByMerchantParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetOutletByMerchantBodyParam _$$_GetOutletByMerchantBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetOutletByMerchantBodyParam();

Map<String, dynamic> _$$_GetOutletByMerchantBodyParamToJson(
        _$_GetOutletByMerchantBodyParam instance) =>
    <String, dynamic>{};

_$_GetOutletByMerchantQueryParam _$$_GetOutletByMerchantQueryParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetOutletByMerchantQueryParam(
      location: json['location'] as String,
      page: json['page'] as int,
      merchantId: json['merchantId'] as String,
      filter: json['filter'] as String,
    );

Map<String, dynamic> _$$_GetOutletByMerchantQueryParamToJson(
        _$_GetOutletByMerchantQueryParam instance) =>
    <String, dynamic>{
      'location': instance.location,
      'page': instance.page,
      'merchantId': instance.merchantId,
      'filter': instance.filter,
    };
