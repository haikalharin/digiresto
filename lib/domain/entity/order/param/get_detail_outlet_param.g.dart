// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_detail_outlet_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDetailOutletParam _$$_GetDetailOutletParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetDetailOutletParam(
      queryString: GetDetailOutletQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: GetDetailOutletBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetDetailOutletParamToJson(
        _$_GetDetailOutletParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetDetailOutletBodyParam _$$_GetDetailOutletBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetDetailOutletBodyParam();

Map<String, dynamic> _$$_GetDetailOutletBodyParamToJson(
        _$_GetDetailOutletBodyParam instance) =>
    <String, dynamic>{};

_$_GetDetailOutletQueryParam _$$_GetDetailOutletQueryParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetDetailOutletQueryParam(
      outletId: json['outletId'] as String,
    );

Map<String, dynamic> _$$_GetDetailOutletQueryParamToJson(
        _$_GetDetailOutletQueryParam instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
    };
