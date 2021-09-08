// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_voucher_outlet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetListVoucherOutletResponse _$_$_GetListVoucherOutletResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GetListVoucherOutletResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) => GetListVoucherOutletDataResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetListVoucherOutletResponseToJson(
        _$_GetListVoucherOutletResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_GetListVoucherOutletDataResponse
    _$_$_GetListVoucherOutletDataResponseFromJson(Map<String, dynamic> json) {
  return _$_GetListVoucherOutletDataResponse(
    name: json['name'] as String,
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$_$_GetListVoucherOutletDataResponseToJson(
        _$_GetListVoucherOutletDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };
