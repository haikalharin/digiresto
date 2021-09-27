// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopUpMethod _$$_TopUpMethodFromJson(Map<String, dynamic> json) =>
    _$_TopUpMethod(
      description: json['description'] as String,
      destination: json['destination'] as String,
      destinationId: json['destinationId'] as String,
      id: json['id'] as String,
      isEnable: json['isEnable'] as bool,
      title: json['title'] as String,
      backgroundColor: json['backgroundColor'] as String,
      icon: json['icon'] as String,
      subCategory: (json['subCategory'] as List<dynamic>)
          .map((e) => TopUpSubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopUpMethodToJson(_$_TopUpMethod instance) =>
    <String, dynamic>{
      'description': instance.description,
      'destination': instance.destination,
      'destinationId': instance.destinationId,
      'id': instance.id,
      'isEnable': instance.isEnable,
      'title': instance.title,
      'backgroundColor': instance.backgroundColor,
      'icon': instance.icon,
      'subCategory': instance.subCategory.map((e) => e.toJson()).toList(),
    };

_$_TopUpSubCategory _$$_TopUpSubCategoryFromJson(Map<String, dynamic> json) =>
    _$_TopUpSubCategory(
      description: json['description'] as String,
      destination: json['destination'] as String,
      destinationId: json['destinationId'] as String,
      id: json['id'] as String,
      isEnable: json['isEnable'] as bool,
      title: json['title'] as String,
      param:
          TopUpSubCategoryParam.fromJson(json['param'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TopUpSubCategoryToJson(_$_TopUpSubCategory instance) =>
    <String, dynamic>{
      'description': instance.description,
      'destination': instance.destination,
      'destinationId': instance.destinationId,
      'id': instance.id,
      'isEnable': instance.isEnable,
      'title': instance.title,
      'param': instance.param.toJson(),
    };

_$_TopUpSubCategoryParam _$$_TopUpSubCategoryParamFromJson(
        Map<String, dynamic> json) =>
    _$_TopUpSubCategoryParam(
      bankCode: json['bankCode'] as String,
      customerPhone: json['customerPhone'] as String,
      fee: json['fee'] as String?,
    );

Map<String, dynamic> _$$_TopUpSubCategoryParamToJson(
        _$_TopUpSubCategoryParam instance) =>
    <String, dynamic>{
      'bankCode': instance.bankCode,
      'customerPhone': instance.customerPhone,
      'fee': instance.fee,
    };
