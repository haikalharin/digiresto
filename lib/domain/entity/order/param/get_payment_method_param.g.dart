// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_method_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPaymentMethodParam _$$_GetPaymentMethodParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetPaymentMethodParam(
      queryString: GetPaymentMethodQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: GetPaymentMethodBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetPaymentMethodParamToJson(
        _$_GetPaymentMethodParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetPaymentMethodBodyParam _$$_GetPaymentMethodBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetPaymentMethodBodyParam();

Map<String, dynamic> _$$_GetPaymentMethodBodyParamToJson(
        _$_GetPaymentMethodBodyParam instance) =>
    <String, dynamic>{};

_$_GetPaymentMethodQueryParam _$$_GetPaymentMethodQueryParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetPaymentMethodQueryParam(
      outletName: json['outletName'] as String,
      salesType: json['salesType'] as String,
    );

Map<String, dynamic> _$$_GetPaymentMethodQueryParamToJson(
        _$_GetPaymentMethodQueryParam instance) =>
    <String, dynamic>{
      'outletName': instance.outletName,
      'salesType': instance.salesType,
    };
