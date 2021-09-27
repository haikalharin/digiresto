// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_type_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutletTypeCategoryResponse _$$_OutletTypeCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OutletTypeCategoryResponse(
      response:
          StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
      data: OutletTypeCategoryDataResponse.fromJson(
          json['data'] as Map<String, dynamic>),
      meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OutletTypeCategoryResponseToJson(
        _$_OutletTypeCategoryResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_OutletTypeCategoryDataResponse _$$_OutletTypeCategoryDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OutletTypeCategoryDataResponse(
      menuCategory: (json['menuCategory'] as List<dynamic>)
          .map((e) => PromoOutletDataMenuCategoryResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OutletTypeCategoryDataResponseToJson(
        _$_OutletTypeCategoryDataResponse instance) =>
    <String, dynamic>{
      'menuCategory': instance.menuCategory,
    };

_$_PromoOutletDataMenuCategoryResponse
    _$$_PromoOutletDataMenuCategoryResponseFromJson(
            Map<String, dynamic> json) =>
        _$_PromoOutletDataMenuCategoryResponse(
          id: json['id'] as String,
          isEnable: json['isEnable'] as bool,
          title: json['title'] as String,
          icon: json['icon'] as String,
          param: PromoOutletDataMenuCategoryParamResponse.fromJson(
              json['param'] as Map<String, dynamic>),
          withLocation: json['withLocation'] as bool,
        );

Map<String, dynamic> _$$_PromoOutletDataMenuCategoryResponseToJson(
        _$_PromoOutletDataMenuCategoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isEnable': instance.isEnable,
      'title': instance.title,
      'icon': instance.icon,
      'param': instance.param,
      'withLocation': instance.withLocation,
    };

_$_PromoOutletDataMenuCategoryParamResponse
    _$$_PromoOutletDataMenuCategoryParamResponseFromJson(
            Map<String, dynamic> json) =>
        _$_PromoOutletDataMenuCategoryParamResponse(
          category: json['category'] as String,
        );

Map<String, dynamic> _$$_PromoOutletDataMenuCategoryParamResponseToJson(
        _$_PromoOutletDataMenuCategoryParamResponse instance) =>
    <String, dynamic>{
      'category': instance.category,
    };
