// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartSessionResponseApi _$_$_CartSessionResponseApiFromJson(
    Map<String, dynamic> json) {
  return _$_CartSessionResponseApi(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: CartSessionResponse.fromJson(json['data'] as Map<String, dynamic>),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CartSessionResponseApiToJson(
        _$_CartSessionResponseApi instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_CartSessionResponse _$_$_CartSessionResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CartSessionResponse(
    channel: json['channel'] as String?,
    sessionId: json['sessionId'] as String?,
    transactionData: json['transactionData'] == null
        ? null
        : TransactionData.fromJson(
            json['transactionData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CartSessionResponseToJson(
        _$_CartSessionResponse instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'sessionId': instance.sessionId,
      'transactionData': instance.transactionData,
    };

_$_TransactionData _$_$_TransactionDataFromJson(Map<String, dynamic> json) {
  return _$_TransactionData(
    outletName: json['outletName'] as String,
    outletId: json['outletId'] as int,
    customerName: json['customerName'] as String,
    customerEmail: json['customerEmail'] as String,
    customerPhone: json['customerPhone'] as String,
    recipientName: json['recipientName'] as String,
    recipientPhone: json['recipientPhone'] as String,
    customerTableNumber: json['customerTableNumber'] as String,
    customerSmoking: json['customerSmoking'] as bool,
    customerPax: json['customerPax'] as String,
    customerNote: json['customerNote'] as String,
    customerCarType: json['customerCarType'] as String,
    customerCarColor: json['customerCarColor'] as String,
    customerCarNumber: json['customerCarNumber'] as String,
    eta: json['eta'] as String,
    paymentType: json['paymentType'],
    totalChange: json['totalChange'] as int,
    discountAmount: json['discountAmount'] as int,
    discountPercentage: json['discountPercentage'] as int,
    finalAmount: json['finalAmount'] as int,
    receiptTotalDiscount: json['receiptTotalDiscount'] as int,
    roundAmount: json['roundAmount'] as int,
    subtotal: json['subtotal'] as int,
    totalDiscount: json['totalDiscount'] as int,
    totalItemAmount: json['totalItemAmount'] as int,
    totalItemCost: json['totalItemCost'] as int,
    totalItemDiscount: json['totalItemDiscount'] as int,
    totalService: json['totalService'] as int,
    totalTax: json['totalTax'] as int,
    voucherAmount: json['voucherAmount'] as int,
    deliveryAmount: json['deliveryAmount'] as int,
    totalPayment: json['totalPayment'] as int,
    salesType: json['salesType'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) =>
            TransactionDataItemResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    itemWeight: json['itemWeight'] as int,
    isUseVoucher: json['isUseVoucher'] as bool,
    promos: json['promos'] as List<dynamic>,
    paymentList: json['paymentList'] as List<dynamic>,
    taxesAndServices: (json['taxesAndServices'] as List<dynamic>)
        .map((e) => TaxesAndService.fromJson(e as Map<String, dynamic>))
        .toList(),
    itemTotalAmount: json['itemTotalAmount'] as int,
  );
}

Map<String, dynamic> _$_$_TransactionDataToJson(_$_TransactionData instance) =>
    <String, dynamic>{
      'outletName': instance.outletName,
      'outletId': instance.outletId,
      'customerName': instance.customerName,
      'customerEmail': instance.customerEmail,
      'customerPhone': instance.customerPhone,
      'recipientName': instance.recipientName,
      'recipientPhone': instance.recipientPhone,
      'customerTableNumber': instance.customerTableNumber,
      'customerSmoking': instance.customerSmoking,
      'customerPax': instance.customerPax,
      'customerNote': instance.customerNote,
      'customerCarType': instance.customerCarType,
      'customerCarColor': instance.customerCarColor,
      'customerCarNumber': instance.customerCarNumber,
      'eta': instance.eta,
      'paymentType': instance.paymentType,
      'totalChange': instance.totalChange,
      'discountAmount': instance.discountAmount,
      'discountPercentage': instance.discountPercentage,
      'finalAmount': instance.finalAmount,
      'receiptTotalDiscount': instance.receiptTotalDiscount,
      'roundAmount': instance.roundAmount,
      'subtotal': instance.subtotal,
      'totalDiscount': instance.totalDiscount,
      'totalItemAmount': instance.totalItemAmount,
      'totalItemCost': instance.totalItemCost,
      'totalItemDiscount': instance.totalItemDiscount,
      'totalService': instance.totalService,
      'totalTax': instance.totalTax,
      'voucherAmount': instance.voucherAmount,
      'deliveryAmount': instance.deliveryAmount,
      'totalPayment': instance.totalPayment,
      'salesType': instance.salesType,
      'items': instance.items,
      'itemWeight': instance.itemWeight,
      'isUseVoucher': instance.isUseVoucher,
      'promos': instance.promos,
      'paymentList': instance.paymentList,
      'taxesAndServices': instance.taxesAndServices,
      'itemTotalAmount': instance.itemTotalAmount,
    };

_$_TransactionDataItemResponse _$_$_TransactionDataItemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionDataItemResponse(
    productId: json['productId'] as int,
    title: json['title'] as String,
    price: json['price'] as int,
    code: json['code'] as String?,
    cost: json['cost'] as int,
    qty: json['qty'] as int,
    basicWeight: json['basicWeight'] as int,
    weight: json['weight'] as int,
    category: json['category'] as String,
    categoryId: json['categoryId'] as int,
    categoryCode: json['categoryCode'] as String,
    sku: json['sku'] as String?,
    note: json['note'] as String,
    isPreorder: json['isPreorder'] as bool,
    preorderPeriod: json['preorderPeriod'] as int,
    amount: json['amount'] as int,
    modifiers: (json['modifiers'] as List<dynamic>?)
        ?.map((e) => Modifier.fromJson(e as Map<String, dynamic>))
        .toList(),
    modifiersAmount: json['modifiersAmount'] as int?,
    modifiersCost: json['modifiersCost'] as int?,
    modifiersDiscount: json['modifiersDiscount'] as int?,
    singleModifiersAmount: json['singleModifiersAmount'] as int?,
    subtotal: json['subtotal'] as int,
    serviceAmount: json['serviceAmount'] as int,
    taxAmount: json['taxAmount'] as int,
  );
}

Map<String, dynamic> _$_$_TransactionDataItemResponseToJson(
        _$_TransactionDataItemResponse instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'price': instance.price,
      'code': instance.code,
      'cost': instance.cost,
      'qty': instance.qty,
      'basicWeight': instance.basicWeight,
      'weight': instance.weight,
      'category': instance.category,
      'categoryId': instance.categoryId,
      'categoryCode': instance.categoryCode,
      'sku': instance.sku,
      'note': instance.note,
      'isPreorder': instance.isPreorder,
      'preorderPeriod': instance.preorderPeriod,
      'amount': instance.amount,
      'modifiers': instance.modifiers,
      'modifiersAmount': instance.modifiersAmount,
      'modifiersCost': instance.modifiersCost,
      'modifiersDiscount': instance.modifiersDiscount,
      'singleModifiersAmount': instance.singleModifiersAmount,
      'subtotal': instance.subtotal,
      'serviceAmount': instance.serviceAmount,
      'taxAmount': instance.taxAmount,
    };

_$_Modifier _$_$_ModifierFromJson(Map<String, dynamic> json) {
  return _$_Modifier(
    modifierGroupId: json['modifierGroupId'] as String,
    modifierGroupName: json['modifierGroupName'] as String,
    modifierGroupCode: json['modifierGroupCode'] as String,
    id: json['id'] as int,
    modifierId: json['modifierId'] as int,
    modifierCode: json['modifierCode'] as String,
    title: json['title'] as String,
    basicWeight: json['basicWeight'] as int,
    price: json['price'] as int,
    qty: json['qty'] as int,
    amount: json['amount'] as int,
    discountAmount: json['discountAmount'] as int,
    discountPercentage: json['discountPercentage'] as int,
  );
}

Map<String, dynamic> _$_$_ModifierToJson(_$_Modifier instance) =>
    <String, dynamic>{
      'modifierGroupId': instance.modifierGroupId,
      'modifierGroupName': instance.modifierGroupName,
      'modifierGroupCode': instance.modifierGroupCode,
      'id': instance.id,
      'modifierId': instance.modifierId,
      'modifierCode': instance.modifierCode,
      'title': instance.title,
      'basicWeight': instance.basicWeight,
      'price': instance.price,
      'qty': instance.qty,
      'amount': instance.amount,
      'discountAmount': instance.discountAmount,
      'discountPercentage': instance.discountPercentage,
    };

_$_TaxesAndService _$_$_TaxesAndServiceFromJson(Map<String, dynamic> json) {
  return _$_TaxesAndService(
    id: json['id'] as int,
    code: json['code'] as String?,
    name: json['name'] as String?,
    type: json['type'] as String?,
    percentage: json['percentage'] as int?,
    salesTypes: (json['salesTypes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    title: json['title'] as String?,
    amount: json['amount'] as int?,
  );
}

Map<String, dynamic> _$_$_TaxesAndServiceToJson(_$_TaxesAndService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'percentage': instance.percentage,
      'salesTypes': instance.salesTypes,
      'title': instance.title,
      'amount': instance.amount,
    };
