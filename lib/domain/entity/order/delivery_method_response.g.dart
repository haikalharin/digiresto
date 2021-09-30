// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryMethodResponse _$_$_DeliveryMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryMethodResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            DeliveryMethodDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DeliveryMethodResponseToJson(
        _$_DeliveryMethodResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_DeliveryMethodDataResponse _$_$_DeliveryMethodDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryMethodDataResponse(
    provider: json['provider'] as String,
    name: json['name'] as String,
    shipmentMethods: (json['shipmentMethods'] as List<dynamic>)
        .map((e) => DeliveryMethodDataShipmentMethodResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    param: DeliveryMethodDataParamResponse.fromJson(
        json['param'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DeliveryMethodDataResponseToJson(
        _$_DeliveryMethodDataResponse instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'name': instance.name,
      'shipmentMethods': instance.shipmentMethods,
      'param': instance.param,
    };

_$_DeliveryMethodDataParamResponse _$_$_DeliveryMethodDataParamResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryMethodDataParamResponse(
    provider: json['provider'] as String?,
    price: json['price'] as String?,
    address: json['address'] as String?,
    shipmentMethod: json['shipmentMethod'] as String?,
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_DeliveryMethodDataParamResponseToJson(
        _$_DeliveryMethodDataParamResponse instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'price': instance.price,
      'address': instance.address,
      'shipmentMethod': instance.shipmentMethod,
      'location': instance.location,
    };

_$_DeliveryMethodDataShipmentMethodResponse
    _$_$_DeliveryMethodDataShipmentMethodResponseFromJson(
        Map<String, dynamic> json) {
  return _$_DeliveryMethodDataShipmentMethodResponse(
    name: json['name'] as String,
    description: json['description'] as String?,
    price: json['price'] as int,
    etd: json['etd'] as String,
    originalPrice: json['originalPrice'] as int?,
  );
}

Map<String, dynamic> _$_$_DeliveryMethodDataShipmentMethodResponseToJson(
        _$_DeliveryMethodDataShipmentMethodResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'etd': instance.etd,
      'originalPrice': instance.originalPrice,
    };
