// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_voucher_outlet_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetListVoucherOutletParam _$$_GetListVoucherOutletParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetListVoucherOutletParam(
      queryString: GetListVoucherOutletQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: GetListVoucherOutletBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetListVoucherOutletParamToJson(
        _$_GetListVoucherOutletParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetListVoucherOutletBodyParam _$$_GetListVoucherOutletBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetListVoucherOutletBodyParam();

Map<String, dynamic> _$$_GetListVoucherOutletBodyParamToJson(
        _$_GetListVoucherOutletBodyParam instance) =>
    <String, dynamic>{};

_$_GetListVoucherOutletQueryParam _$$_GetListVoucherOutletQueryParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetListVoucherOutletQueryParam(
      outletId: json['outletId'] as String,
      merchantId: json['merchantId'] as String,
    );

Map<String, dynamic> _$$_GetListVoucherOutletQueryParamToJson(
        _$_GetListVoucherOutletQueryParam instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
      'merchantId': instance.merchantId,
    };
