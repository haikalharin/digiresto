// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutletCategoryResponse _$_$_OutletCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletCategoryResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            OutletCategoryDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_OutletCategoryResponseToJson(
        _$_OutletCategoryResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_OutletCategoryDataResponse _$_$_OutletCategoryDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletCategoryDataResponse(
    endpointName: json['endpointName'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    city: json['city'] as String,
    salesTypes:
        (json['salesTypes'] as List<dynamic>).map((e) => e as String).toList(),
    isOpen: json['isOpen'] as bool,
    logo: json['logo'] as String?,
    countOutlet: json['countOutlet'] as int?,
    merchantId: json['merchantId'] as String,
    merchantName: json['merchantName'] as String,
    merchantLogo: json['merchantLogo'] as String?,
    callbackUrl: json['callbackUrl'] as String,
    distance: OutletCategoryDataDistanceResponse.fromJson(
        json['distance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_OutletCategoryDataResponseToJson(
        _$_OutletCategoryDataResponse instance) =>
    <String, dynamic>{
      'endpointName': instance.endpointName,
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'salesTypes': instance.salesTypes,
      'isOpen': instance.isOpen,
      'logo': instance.logo,
      'countOutlet': instance.countOutlet,
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
      'merchantLogo': instance.merchantLogo,
      'callbackUrl': instance.callbackUrl,
      'distance': instance.distance,
    };

_$_OutletCategoryDataDistanceResponse
    _$_$_OutletCategoryDataDistanceResponseFromJson(Map<String, dynamic> json) {
  return _$_OutletCategoryDataDistanceResponse(
    realRadius: (json['realRadius'] as num).toDouble(),
    distanceValue: (json['distanceValue'] as num).toDouble(),
    distance: json['distance'] as String,
  );
}

Map<String, dynamic> _$_$_OutletCategoryDataDistanceResponseToJson(
        _$_OutletCategoryDataDistanceResponse instance) =>
    <String, dynamic>{
      'realRadius': instance.realRadius,
      'distanceValue': instance.distanceValue,
      'distance': instance.distance,
    };
