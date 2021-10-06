// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_session_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCartSessionParam _$$_CreateCartSessionParamFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCartSessionParam(
      queryString: CreateCartSessionQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: CreateCartSessionBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateCartSessionParamToJson(
        _$_CreateCartSessionParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_CreateCartSessionBodyParam _$$_CreateCartSessionBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCartSessionBodyParam(
      outletName: json['outletName'] as String,
      customerName: json['customerName'] as String,
      customerPhone: json['customerPhone'] as String,
      customerTableNumber: json['customerTableNumber'] as String,
      customerSmoking: json['customerSmoking'] as bool,
      customerPax: json['customerPax'] as String,
      customerNote: json['customerNote'] as String,
      customerCarType: json['customerCarType'] as String,
      customerCarColor: json['customerCarColor'] as String,
      customerCarNumber: json['customerCarNumber'] as String,
      eta: json['eta'] as String,
      salesType: json['salesType'] as String,
      receiptCode: json['receiptCode'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CreateUpdateCartSessionItemParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateCartSessionBodyParamToJson(
        _$_CreateCartSessionBodyParam instance) =>
    <String, dynamic>{
      'outletName': instance.outletName,
      'customerName': instance.customerName,
      'customerPhone': instance.customerPhone,
      'customerTableNumber': instance.customerTableNumber,
      'customerSmoking': instance.customerSmoking,
      'customerPax': instance.customerPax,
      'customerNote': instance.customerNote,
      'customerCarType': instance.customerCarType,
      'customerCarColor': instance.customerCarColor,
      'customerCarNumber': instance.customerCarNumber,
      'eta': instance.eta,
      'salesType': instance.salesType,
      'receiptCode': instance.receiptCode,
      'items': instance.items,
    };

_$_CreateUpdateCartSessionItemParam
    _$$_CreateUpdateCartSessionItemParamFromJson(Map<String, dynamic> json) =>
        _$_CreateUpdateCartSessionItemParam(
          productId: json['productId'] as int,
          modifiers: (json['modifiers'] as List<dynamic>)
              .map((e) => CreateCartSessionItemModifierParam.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          note: json['note'] as String,
          qty: json['qty'] as int,
        );

Map<String, dynamic> _$$_CreateUpdateCartSessionItemParamToJson(
        _$_CreateUpdateCartSessionItemParam instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'modifiers': instance.modifiers,
      'note': instance.note,
      'qty': instance.qty,
    };

_$_CreateCartSessionItemModifierParam
    _$$_CreateCartSessionItemModifierParamFromJson(Map<String, dynamic> json) =>
        _$_CreateCartSessionItemModifierParam(
          modifierId: json['modifierId'] as int,
          modifierGroupId: json['modifierGroupId'] as String,
          qty: json['qty'] as int,
        );

Map<String, dynamic> _$$_CreateCartSessionItemModifierParamToJson(
        _$_CreateCartSessionItemModifierParam instance) =>
    <String, dynamic>{
      'modifierId': instance.modifierId,
      'modifierGroupId': instance.modifierGroupId,
      'qty': instance.qty,
    };

_$_CreateCartSessionQueryParam _$$_CreateCartSessionQueryParamFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCartSessionQueryParam();

Map<String, dynamic> _$$_CreateCartSessionQueryParamToJson(
        _$_CreateCartSessionQueryParam instance) =>
    <String, dynamic>{};
