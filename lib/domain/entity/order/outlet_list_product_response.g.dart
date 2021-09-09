// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_list_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutletListProductResponse _$_$_OutletListProductResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletListProductResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            OutletListProductDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_OutletListProductResponseToJson(
        _$_OutletListProductResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_OutletListProductDataModifierGroupResponse
    _$_$_OutletListProductDataModifierGroupResponseFromJson(
        Map<String, dynamic> json) {
  return _$_OutletListProductDataModifierGroupResponse(
    name: json['name'] as String,
    id: json['id'] as String,
    code: json['code'] as String,
    allowMultiple: json['allowMultiple'] as int,
    allowQuantity: json['allowQuantity'] as int,
    minQuantity: json['minQuantity'] as int,
    maxQuantity: json['maxQuantity'] as int,
    modifiers: (json['modifiers'] as List<dynamic>)
        .map((e) => OutletListProductDataSubModifierGroupResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OutletListProductDataModifierGroupResponseToJson(
        _$_OutletListProductDataModifierGroupResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'code': instance.code,
      'allowMultiple': instance.allowMultiple,
      'allowQuantity': instance.allowQuantity,
      'minQuantity': instance.minQuantity,
      'maxQuantity': instance.maxQuantity,
      'modifiers': instance.modifiers,
    };

_$_OutletListProductDataSubModifierGroupResponse
    _$_$_OutletListProductDataSubModifierGroupResponseFromJson(
        Map<String, dynamic> json) {
  return _$_OutletListProductDataSubModifierGroupResponse(
    code: json['code'] as String,
    sku: json['sku'] as String?,
    isPreorder: json['isPreorder'] as bool,
    preorderPeriod: json['preorderPeriod'] as int?,
    crossoutPrice: json['crossoutPrice'] as int?,
    stock: json['stock'] as int?,
    limit: json['limit'] as int?,
    id: json['id'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
    weight: json['weight'] as int,
    description: json['description'] as String,
    image: json['image'] as String,
    categoryId: json['categoryId'] as String,
    categoryCode: json['categoryCode'] as String,
    categoryName: json['categoryName'] as String,
  );
}

Map<String, dynamic> _$_$_OutletListProductDataSubModifierGroupResponseToJson(
        _$_OutletListProductDataSubModifierGroupResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'isPreorder': instance.isPreorder,
      'preorderPeriod': instance.preorderPeriod,
      'crossoutPrice': instance.crossoutPrice,
      'stock': instance.stock,
      'limit': instance.limit,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'description': instance.description,
      'image': instance.image,
      'categoryId': instance.categoryId,
      'categoryCode': instance.categoryCode,
      'categoryName': instance.categoryName,
    };

_$_OutletListProductDataResponse _$_$_OutletListProductDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_OutletListProductDataResponse(
    code: json['code'] as String,
    sku: json['sku'] as String?,
    isPreorder: json['isPreorder'] as bool,
    preorderPeriod: json['preorderPeriod'] as int?,
    crossoutPrice: json['crossoutPrice'] as int?,
    stock: json['stock'] as int?,
    limit: json['limit'] as int?,
    id: json['id'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
    weight: json['weight'] as int,
    description: json['description'] as String,
    image: json['image'] as String,
    categoryId: json['categoryId'] as String,
    categoryCode: json['categoryCode'] as String,
    categoryName: json['categoryName'] as String,
    variants: (json['variants'] as List<dynamic>)
        .map((e) => OutletListProductDataVariantResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    modifierGroups: (json['modifierGroups'] as List<dynamic>)
        .map((e) => OutletListProductDataModifierGroupResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OutletListProductDataResponseToJson(
        _$_OutletListProductDataResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'isPreorder': instance.isPreorder,
      'preorderPeriod': instance.preorderPeriod,
      'crossoutPrice': instance.crossoutPrice,
      'stock': instance.stock,
      'limit': instance.limit,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'description': instance.description,
      'image': instance.image,
      'categoryId': instance.categoryId,
      'categoryCode': instance.categoryCode,
      'categoryName': instance.categoryName,
      'variants': instance.variants,
      'modifierGroups': instance.modifierGroups,
    };

_$_OutletListProductDataVariantResponse
    _$_$_OutletListProductDataVariantResponseFromJson(
        Map<String, dynamic> json) {
  return _$_OutletListProductDataVariantResponse(
    code: json['code'] as String,
    sku: json['sku'] as String?,
    isPreorder: json['isPreorder'] as bool,
    preorderPeriod: json['preorderPeriod'] as int?,
    crossoutPrice: json['crossoutPrice'] as int?,
    stock: json['stock'] as int?,
    limit: json['limit'] as int?,
    id: json['id'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
    weight: json['weight'] as int,
    description: json['description'] as String,
    image: json['image'] as String,
    categoryId: json['categoryId'] as String,
    categoryCode: json['categoryCode'] as String,
    categoryName: json['categoryName'] as String,
    modifierGroups: (json['modifierGroups'] as List<dynamic>)
        .map((e) => OutletListProductDataModifierGroupResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OutletListProductDataVariantResponseToJson(
        _$_OutletListProductDataVariantResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'isPreorder': instance.isPreorder,
      'preorderPeriod': instance.preorderPeriod,
      'crossoutPrice': instance.crossoutPrice,
      'stock': instance.stock,
      'limit': instance.limit,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'description': instance.description,
      'image': instance.image,
      'categoryId': instance.categoryId,
      'categoryCode': instance.categoryCode,
      'categoryName': instance.categoryName,
      'modifierGroups': instance.modifierGroups,
    };
