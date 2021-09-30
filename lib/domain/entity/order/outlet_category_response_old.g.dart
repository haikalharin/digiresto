// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_category_response_old.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutletCategoryResponseOld _$_$_OutletCategoryResponseOldFromJson(
    Map<String, dynamic> json) {
  return _$_OutletCategoryResponseOld(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            OutletCategoryDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_OutletCategoryResponseOldToJson(
        _$_OutletCategoryResponseOld instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_OutletCategoryDataResponse _$_$_OutletCategoryDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletCategoryDataResponse(
    id: json['id'] as String?,
    name: json['name'] as String,
    outletId: json['outletId'] as String,
    isNonSku: json['isNonSku'] as bool,
    detail: Detail.fromJson(json['detail'] as Map<String, dynamic>),
    roundingDigit: json['roundingDigit'],
    roundingType: json['roundingType'],
    isLive: json['isLive'] as bool,
    orderMethod:
        OrderMethod.fromJson(json['orderMethod'] as Map<String, dynamic>),
    merchantId: json['merchantId'] as String,
    distance: Distance.fromJson(json['distance'] as Map<String, dynamic>),
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
    searchWeight: json['searchWeight'] as int,
    searchWeightDetail: json['searchWeightDetail'] as String,
    merchantLogo: json['merchantLogo'] as String,
  );
}

Map<String, dynamic> _$_$_OutletCategoryDataResponseToJson(
        _$_OutletCategoryDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'outletId': instance.outletId,
      'isNonSku': instance.isNonSku,
      'detail': instance.detail,
      'roundingDigit': instance.roundingDigit,
      'roundingType': instance.roundingType,
      'isLive': instance.isLive,
      'orderMethod': instance.orderMethod,
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
      'searchWeight': instance.searchWeight,
      'searchWeightDetail': instance.searchWeightDetail,
      'merchantLogo': instance.merchantLogo,
    };

_$_Detail _$_$_DetailFromJson(Map<String, dynamic> json) {
  return _$_Detail(
    name: json['name'] as String,
    address: json['address'] as String,
    taxesAndServices: json['taxesAndServices'] as List<dynamic>,
    location: json['location'] as List<dynamic>,
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

Map<String, dynamic> _$_$_DetailToJson(_$_Detail instance) => <String, dynamic>{
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

_$_Distance _$_$_DistanceFromJson(Map<String, dynamic> json) {
  return _$_Distance(
    text: json['text'] as String,
    value: (json['value'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_DistanceToJson(_$_Distance instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$_OrderMethod _$_$_OrderMethodFromJson(Map<String, dynamic> json) {
  return _$_OrderMethod(
    forceSelect: json['forceSelect'] as bool,
    defaultList: (json['defaultList'] as List<dynamic>)
        .map((e) => _$enumDecode(_$DefaultListEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OrderMethodToJson(_$_OrderMethod instance) =>
    <String, dynamic>{
      'forceSelect': instance.forceSelect,
      'defaultList':
          instance.defaultList.map((e) => _$DefaultListEnumMap[e]).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$DefaultListEnumMap = {
  DefaultList.DINE_IN: 'DINE_IN',
  DefaultList.TAKE_AWAY: 'TAKE_AWAY',
  DefaultList.ONLINE_DRIVER: 'ONLINE_DRIVER',
  DefaultList.DRIVE_THRU: 'DRIVE_THRU',
};
