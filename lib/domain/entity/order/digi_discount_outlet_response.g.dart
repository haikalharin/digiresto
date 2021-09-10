// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digi_discount_outlet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DigiDiscountOutletResponse _$_$_DigiDiscountOutletResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DigiDiscountOutletResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            DigiDiscountOutletDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DigiDiscountOutletResponseToJson(
        _$_DigiDiscountOutletResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_DigiDiscountOutletDataResponse _$_$_DigiDiscountOutletDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DigiDiscountOutletDataResponse(
    name: json['name'] as String,
    outletId: json['outletId'] as String,
    isLive: json['isLive'] as bool,
    detail: DigiDiscountOutletDataDetailResponse.fromJson(
        json['detail'] as Map<String, dynamic>),
    roundingDigit: json['roundingDigit'] as int?,
    roundingType: json['roundingType'] as String?,
    orderMethod: DigiDiscountOutletDataOrderMethodResponse.fromJson(
        json['orderMethod'] as Map<String, dynamic>),
    isNonSku: json['isNonSku'] as bool,
    merchantId: json['merchantId'] as String,
    distance: DigiDiscountOutletDataDistanceResponse.fromJson(
        json['distance'] as Map<String, dynamic>),
    isOwnerLoggedIn: json['isOwnerLoggedIn'] as bool,
    merchantName: json['merchantName'] as String,
    category: json['category'] as String,
    callbackUrl: json['callbackUrl'] as String,
    merchantTags: (json['merchantTags'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    outletName: json['outletName'] as String,
    merchantCategory: json['merchantCategory'] as String,
    merchantKeywords: (json['merchantKeywords'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    merchantLogo: json['merchantLogo'] as String?,
    searchWeight: json['searchWeight'] as int,
    searchWeightDetail: json['searchWeightDetail'] as String,
  );
}

Map<String, dynamic> _$_$_DigiDiscountOutletDataResponseToJson(
        _$_DigiDiscountOutletDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'outletId': instance.outletId,
      'isLive': instance.isLive,
      'detail': instance.detail,
      'roundingDigit': instance.roundingDigit,
      'roundingType': instance.roundingType,
      'orderMethod': instance.orderMethod,
      'isNonSku': instance.isNonSku,
      'merchantId': instance.merchantId,
      'distance': instance.distance,
      'isOwnerLoggedIn': instance.isOwnerLoggedIn,
      'merchantName': instance.merchantName,
      'category': instance.category,
      'callbackUrl': instance.callbackUrl,
      'merchantTags': instance.merchantTags,
      'outletName': instance.outletName,
      'merchantCategory': instance.merchantCategory,
      'merchantKeywords': instance.merchantKeywords,
      'merchantLogo': instance.merchantLogo,
      'searchWeight': instance.searchWeight,
      'searchWeightDetail': instance.searchWeightDetail,
    };

_$_DigiDiscountOutletDataDetailResponse
    _$_$_DigiDiscountOutletDataDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _$_DigiDiscountOutletDataDetailResponse(
    name: json['name'] as String,
    address: json['address'] as String,
    taxesAndServices: json['taxesAndServices'] as List<dynamic>,
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
    phone: json['phone'] as String,
    kurirPrice: json['kurirPrice'] as String,
    deliveryType: json['deliveryType'] as String,
    maxRadius: json['maxRadius'] as String,
    driverPhone: json['driverPhone'] as String,
    area: json['area'] as List<dynamic>,
    deliveryProvider: (json['deliveryProvider'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    deliveryLocation: json['deliveryLocation'] as List<dynamic>,
    city: json['city'] as String,
  );
}

Map<String, dynamic> _$_$_DigiDiscountOutletDataDetailResponseToJson(
        _$_DigiDiscountOutletDataDetailResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'taxesAndServices': instance.taxesAndServices,
      'location': instance.location,
      'phone': instance.phone,
      'kurirPrice': instance.kurirPrice,
      'deliveryType': instance.deliveryType,
      'maxRadius': instance.maxRadius,
      'driverPhone': instance.driverPhone,
      'area': instance.area,
      'deliveryProvider': instance.deliveryProvider,
      'deliveryLocation': instance.deliveryLocation,
      'city': instance.city,
    };

_$_DigiDiscountOutletDataDistanceResponse
    _$_$_DigiDiscountOutletDataDistanceResponseFromJson(
        Map<String, dynamic> json) {
  return _$_DigiDiscountOutletDataDistanceResponse(
    text: json['text'] as String,
    value: json['value'],
  );
}

Map<String, dynamic> _$_$_DigiDiscountOutletDataDistanceResponseToJson(
        _$_DigiDiscountOutletDataDistanceResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$_DigiDiscountOutletDataOrderMethodResponse
    _$_$_DigiDiscountOutletDataOrderMethodResponseFromJson(
        Map<String, dynamic> json) {
  return _$_DigiDiscountOutletDataOrderMethodResponse(
    forceSelect: json['forceSelect'] as bool,
    defaultList:
        (json['defaultList'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_DigiDiscountOutletDataOrderMethodResponseToJson(
        _$_DigiDiscountOutletDataOrderMethodResponse instance) =>
    <String, dynamic>{
      'forceSelect': instance.forceSelect,
      'defaultList': instance.defaultList,
    };
