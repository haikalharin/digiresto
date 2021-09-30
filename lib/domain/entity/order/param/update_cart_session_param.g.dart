// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_session_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateCartSessionParam _$_$_UpdateCartSessionParamFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateCartSessionParam(
    queryString: UpdateCartSessionQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body: UpdateCartSessionBodyParam.fromJson(
        json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateCartSessionParamToJson(
        _$_UpdateCartSessionParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_UpdateCartSessionBodyParam _$_$_UpdateCartSessionBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateCartSessionBodyParam(
    paymentType: json['paymentType'] as String?,
    customerNote: json['customerNote'] as String?,
    customerPax: json['customerPax'] as String?,
    customerSmoking: json['customerSmoking'] as bool?,
    delivery: json['delivery'] == null
        ? null
        : UpdateCartSessionBodyDeliveryParam.fromJson(
            json['delivery'] as Map<String, dynamic>),
    eta: json['eta'] as String?,
    promos:
        (json['promos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    salesType: json['salesType'] as String?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => CreateUpdateCartSessionItemParam.fromJson(
            e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_UpdateCartSessionBodyParamToJson(
        _$_UpdateCartSessionBodyParam instance) =>
    <String, dynamic>{
      'paymentType': instance.paymentType,
      'customerNote': instance.customerNote,
      'customerPax': instance.customerPax,
      'customerSmoking': instance.customerSmoking,
      'delivery': instance.delivery,
      'eta': instance.eta,
      'promos': instance.promos,
      'salesType': instance.salesType,
      'items': instance.items,
    };

_$_UpdateCartSessionBodyDeliveryParam
    _$_$_UpdateCartSessionBodyDeliveryParamFromJson(Map<String, dynamic> json) {
  return _$_UpdateCartSessionBodyDeliveryParam(
    provider: json['provider'] as String,
    price: json['price'] as int,
    address: json['address'] as String,
    shipmentMethod: json['shipmentMethod'] as String,
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_UpdateCartSessionBodyDeliveryParamToJson(
        _$_UpdateCartSessionBodyDeliveryParam instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'price': instance.price,
      'address': instance.address,
      'shipmentMethod': instance.shipmentMethod,
      'location': instance.location,
    };

_$_UpdateCartSessionQueryParam _$_$_UpdateCartSessionQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateCartSessionQueryParam(
    sessionId: json['sessionId'] as String,
  );
}

Map<String, dynamic> _$_$_UpdateCartSessionQueryParamToJson(
        _$_UpdateCartSessionQueryParam instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
    };
