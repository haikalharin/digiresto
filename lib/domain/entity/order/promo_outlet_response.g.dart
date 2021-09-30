// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_outlet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromoOutletResponse _$_$_PromoOutletResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PromoOutletResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) => PromoOutletDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PromoOutletResponseToJson(
        _$_PromoOutletResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_PromoOutletDataResponse _$_$_PromoOutletDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PromoOutletDataResponse(
    id: json['id'] as String,
    banner: json['banner'] as String,
    icon: json['icon'] as String?,
    outletId: json['outletId'] as String?,
    productId: json['productId'] as String?,
    voucher: json['voucher'] == null
        ? null
        : PromoOutletDataVoucherResponse.fromJson(
            json['voucher'] as Map<String, dynamic>),
    isFreeDelivery: json['isFreeDelivery'] as bool,
    url: json['url'] as String?,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_PromoOutletDataResponseToJson(
        _$_PromoOutletDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'icon': instance.icon,
      'outletId': instance.outletId,
      'productId': instance.productId,
      'voucher': instance.voucher,
      'isFreeDelivery': instance.isFreeDelivery,
      'url': instance.url,
      'name': instance.name,
    };

_$_PromoOutletDataVoucherResponse _$_$_PromoOutletDataVoucherResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PromoOutletDataVoucherResponse(
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$_$_PromoOutletDataVoucherResponseToJson(
        _$_PromoOutletDataVoucherResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };
