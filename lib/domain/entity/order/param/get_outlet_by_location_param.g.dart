// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_outlet_by_location_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOutletByLocationParam _$_$_GetOutletByLocationParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletByLocationParam(
    queryString: GetOutletByLocationQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body: GetOutletByLocationBodyParam.fromJson(
        json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetOutletByLocationParamToJson(
        _$_GetOutletByLocationParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_GetOutletByLocationBodyParam _$_$_GetOutletByLocationBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletByLocationBodyParam();
}

Map<String, dynamic> _$_$_GetOutletByLocationBodyParamToJson(
        _$_GetOutletByLocationBodyParam instance) =>
    <String, dynamic>{};

_$_GetOutletByLocationQueryParam _$_$_GetOutletByLocationQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_GetOutletByLocationQueryParam(
    location: json['location'] as String,
    page: json['page'] as int,
    filter: json['filter'] as String,
  );
}

Map<String, dynamic> _$_$_GetOutletByLocationQueryParamToJson(
        _$_GetOutletByLocationQueryParam instance) =>
    <String, dynamic>{
      'location': instance.location,
      'page': instance.page,
      'filter': instance.filter,
    };
