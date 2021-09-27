// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_outlet_by_category_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOutletByCategoryParam _$$_GetOutletByCategoryParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetOutletByCategoryParam(
      queryString: GetOutletByCategoryQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: GetOutletByCategoryBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetOutletByCategoryParamToJson(
        _$_GetOutletByCategoryParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetOutletByCategoryBodyParam _$$_GetOutletByCategoryBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetOutletByCategoryBodyParam();

Map<String, dynamic> _$$_GetOutletByCategoryBodyParamToJson(
        _$_GetOutletByCategoryBodyParam instance) =>
    <String, dynamic>{};

_$_GetOutletByCategoryQueryParam _$$_GetOutletByCategoryQueryParamFromJson(
        Map<String, dynamic> json) =>
    _$_GetOutletByCategoryQueryParam(
      location: json['location'] as String,
      page: json['page'] as int,
      category: json['category'] as String,
      filter: json['filter'] as String,
    );

Map<String, dynamic> _$$_GetOutletByCategoryQueryParamToJson(
        _$_GetOutletByCategoryQueryParam instance) =>
    <String, dynamic>{
      'location': instance.location,
      'page': instance.page,
      'category': instance.category,
      'filter': instance.filter,
    };
