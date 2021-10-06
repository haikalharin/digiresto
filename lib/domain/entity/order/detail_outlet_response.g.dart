// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_outlet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailOutletResponse _$$_DetailOutletResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailOutletResponse(
      response:
          StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
      data: DetailOutletDataResponse.fromJson(
          json['data'] as Map<String, dynamic>),
      meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailOutletResponseToJson(
        _$_DetailOutletResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_DetailOutletDataResponse _$$_DetailOutletDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailOutletDataResponse(
      endpointName: json['endpointName'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      salesTypes: (json['salesTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isOpen: json['isOpen'] as bool,
      logo: json['logo'],
      merchantId: json['merchantId'] as String,
      merchantName: json['merchantName'] as String,
      merchantLogo: json['merchantLogo'],
      callbackUrl: json['callbackUrl'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      location:
          (json['location'] as List<dynamic>).map((e) => e as String).toList(),
      ownerPhone: json['ownerPhone'] as String,
      poCutoff: json['poCutoff'] as String,
      rating: json['rating'] as int,
      totalReview: json['totalReview'] as int,
      lastUpdate: DetailOutletDataLastUpdateResponse.fromJson(
          json['lastUpdate'] as Map<String, dynamic>),
      merchantCategory: json['merchantCategory'] as String,
    );

Map<String, dynamic> _$$_DetailOutletDataResponseToJson(
        _$_DetailOutletDataResponse instance) =>
    <String, dynamic>{
      'endpointName': instance.endpointName,
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'salesTypes': instance.salesTypes,
      'isOpen': instance.isOpen,
      'logo': instance.logo,
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
      'merchantLogo': instance.merchantLogo,
      'callbackUrl': instance.callbackUrl,
      'description': instance.description,
      'address': instance.address,
      'location': instance.location,
      'ownerPhone': instance.ownerPhone,
      'poCutoff': instance.poCutoff,
      'rating': instance.rating,
      'totalReview': instance.totalReview,
      'lastUpdate': instance.lastUpdate,
      'merchantCategory': instance.merchantCategory,
    };

_$_DetailOutletDataLastUpdateResponse
    _$$_DetailOutletDataLastUpdateResponseFromJson(Map<String, dynamic> json) =>
        _$_DetailOutletDataLastUpdateResponse(
          time: json['time'] as String,
          literal: json['literal'] as String,
        );

Map<String, dynamic> _$$_DetailOutletDataLastUpdateResponseToJson(
        _$_DetailOutletDataLastUpdateResponse instance) =>
    <String, dynamic>{
      'time': instance.time,
      'literal': instance.literal,
    };
