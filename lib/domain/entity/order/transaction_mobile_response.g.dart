// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_mobile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionMobileResponse _$_$_TransactionMobileResponseFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionMobileResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: TransactionMobileDataResponse.fromJson(
        json['data'] as Map<String, dynamic>),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TransactionMobileResponseToJson(
        _$_TransactionMobileResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_TransactionMobileDataResponse _$_$_TransactionMobileDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionMobileDataResponse(
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
    promos: (json['promos'] as List<dynamic>)
        .map((e) => TransactionMobileDataPromoResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    paymentList: (json['paymentList'] as List<dynamic>)
        .map((e) => TransactionMobileDataPaymentListResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    taxesAndServices: (json['taxesAndServices'] as List<dynamic>?)
        ?.map((e) =>
            TransactionTaxesAndService.fromJson(e as Map<String, dynamic>))
        .toList(),
    itemTotalAmount: json['itemTotalAmount'] as int,
    note: json['note'] as String,
    originalDeliveryAmount: json['originalDeliveryAmount'] as int?,
    deviceTimestamp: json['deviceTimestamp'] as String?,
    receiptCode: json['receiptCode'] as String,
    payments: (json['payments'] as List<dynamic>?)
        ?.map((e) => TransactionMobileDataPaymentResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    outlet: json['outlet'] == null
        ? null
        : TransactionMobileDataOutletResponse.fromJson(
            json['outlet'] as Map<String, dynamic>),
    orderId: json['orderId'] as String?,
    status: json['status'] as String?,
    deliveryDetail: json['deliveryDetail'] == null
        ? null
        : TransactionMobileDataDeliveryDetailResponse.fromJson(
            json['deliveryDetail'] as Map<String, dynamic>),
    rating: json['rating'] == null
        ? null
        : TransactionMobileDataRatingResponse.fromJson(
            json['rating'] as Map<String, dynamic>),
    billingDetail: json['billingDetail'] == null
        ? null
        : TransactionMobileDataBillingDetailResponse.fromJson(
            json['billingDetail'] as Map<String, dynamic>),
    delivery: json['delivery'] == null
        ? null
        : TransactionMobileDataDeliveryResponse.fromJson(
            json['delivery'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataResponseToJson(
        _$_TransactionMobileDataResponse instance) =>
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
      'note': instance.note,
      'originalDeliveryAmount': instance.originalDeliveryAmount,
      'deviceTimestamp': instance.deviceTimestamp,
      'receiptCode': instance.receiptCode,
      'payments': instance.payments,
      'outlet': instance.outlet,
      'orderId': instance.orderId,
      'status': instance.status,
      'deliveryDetail': instance.deliveryDetail,
      'rating': instance.rating,
      'billingDetail': instance.billingDetail,
      'delivery': instance.delivery,
    };

_$_TransactionMobileDataBillingDetailResponse
    _$_$_TransactionMobileDataBillingDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataBillingDetailResponse(
    title: json['title'] as String?,
    amount: json['amount'] as int?,
    vaNumber: json['vaNumber'] as String?,
    expires: json['expires'] as String?,
    expiresAt: json['expiresAt'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataBillingDetailResponseToJson(
        _$_TransactionMobileDataBillingDetailResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'vaNumber': instance.vaNumber,
      'expires': instance.expires,
      'expiresAt': instance.expiresAt,
    };

_$_TransactionMobileDataDeliveryResponse
    _$_$_TransactionMobileDataDeliveryResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataDeliveryResponse(
    provider: json['provider'] as String,
    price: json['price'] as int,
    address: json['address'] as String,
    shipmentMethod: json['shipmentMethod'] as String,
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataDeliveryResponseToJson(
        _$_TransactionMobileDataDeliveryResponse instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'price': instance.price,
      'address': instance.address,
      'shipmentMethod': instance.shipmentMethod,
      'location': instance.location,
    };

_$_TransactionMobileDataDeliveryDetailResponse
    _$_$_TransactionMobileDataDeliveryDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataDeliveryDetailResponse(
    orderId: json['orderId'] as String?,
    distance: json['distance'] as String?,
    provider: json['provider'] as String?,
    shipmentMethod: json['shipmentMethod'] as String?,
    fee: json['fee'],
    bookingCode: json['bookingCode'] as String?,
    bookingExpired: json['bookingExpired'] as String?,
    deliveryId: json['deliveryId'] as String?,
    isDelivered: json['isDelivered'] as bool?,
    from: json['from'] == null
        ? null
        : TransactionMobileDataDeliveryDetailFromToResponse.fromJson(
            json['from'] as Map<String, dynamic>),
    to: json['to'] == null
        ? null
        : TransactionMobileDataDeliveryDetailFromToResponse.fromJson(
            json['to'] as Map<String, dynamic>),
    status: json['status'] as List<dynamic>?,
    isDelete: json['isDelete'] as bool?,
    createdDate: json['createdDate'] as String?,
    ownerPhone: json['ownerPhone'] as String?,
    driverName: json['driverName'] as String?,
    driverPhone: json['driverPhone'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataDeliveryDetailResponseToJson(
        _$_TransactionMobileDataDeliveryDetailResponse instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'distance': instance.distance,
      'provider': instance.provider,
      'shipmentMethod': instance.shipmentMethod,
      'fee': instance.fee,
      'bookingCode': instance.bookingCode,
      'bookingExpired': instance.bookingExpired,
      'deliveryId': instance.deliveryId,
      'isDelivered': instance.isDelivered,
      'from': instance.from,
      'to': instance.to,
      'status': instance.status,
      'isDelete': instance.isDelete,
      'createdDate': instance.createdDate,
      'ownerPhone': instance.ownerPhone,
      'driverName': instance.driverName,
      'driverPhone': instance.driverPhone,
    };

_$_TransactionMobileDataDeliveryDetailFromToResponse
    _$_$_TransactionMobileDataDeliveryDetailFromToResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataDeliveryDetailFromToResponse(
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
    name: json['name'] as String,
    address: json['address'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic>
    _$_$_TransactionMobileDataDeliveryDetailFromToResponseToJson(
            _$_TransactionMobileDataDeliveryDetailFromToResponse instance) =>
        <String, dynamic>{
          'location': instance.location,
          'name': instance.name,
          'address': instance.address,
          'phone': instance.phone,
        };

_$_TransactionMobileDataOutletResponse
    _$_$_TransactionMobileDataOutletResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataOutletResponse(
    name: json['name'] as String,
    outletId: json['outletId'] as String,
    merchantId: json['merchantId'] as String,
    cashierId: json['cashierId'] as String,
    deviceId: json['deviceId'] as String,
    assignId: json['assignId'] as String,
    quinos: Moka.fromJson(json['quinos'] as Map<String, dynamic>),
    isNonSku: json['isNonSku'] as bool,
    moka: Moka.fromJson(json['moka'] as Map<String, dynamic>),
    detail: TransactionMobileDataOutletDetailResponse.fromJson(
        json['detail'] as Map<String, dynamic>),
    roundingDigit: json['roundingDigit'],
    roundingType: json['roundingType'],
    isLive: json['isLive'] as bool,
    orderMethod:
        OrderMethod.fromJson(json['orderMethod'] as Map<String, dynamic>),
    isDelete: json['isDelete'] as bool,
    createdDate: json['createdDate'] as String,
    poCutoff: json['poCutoff'] as String,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataOutletResponseToJson(
        _$_TransactionMobileDataOutletResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'outletId': instance.outletId,
      'merchantId': instance.merchantId,
      'cashierId': instance.cashierId,
      'deviceId': instance.deviceId,
      'assignId': instance.assignId,
      'quinos': instance.quinos,
      'isNonSku': instance.isNonSku,
      'moka': instance.moka,
      'detail': instance.detail,
      'roundingDigit': instance.roundingDigit,
      'roundingType': instance.roundingType,
      'isLive': instance.isLive,
      'orderMethod': instance.orderMethod,
      'isDelete': instance.isDelete,
      'createdDate': instance.createdDate,
      'poCutoff': instance.poCutoff,
    };

_$_TransactionMobileDataOutletDetailResponse
    _$_$_TransactionMobileDataOutletDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataOutletDetailResponse(
    name: json['name'] as String,
    address: json['address'] as String,
    taxesAndServices: (json['taxesAndServices'] as List<dynamic>)
        .map((e) =>
            TransactionTaxesAndService.fromJson(e as Map<String, dynamic>))
        .toList(),
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
    phone: json['phone'] as String,
    kurirPrice: json['kurirPrice'],
    deliveryType: json['deliveryType'] as String,
    maxRadius: json['maxRadius'] as String,
    driverPhone: json['driverPhone'] as String,
    area: json['area'] as List<dynamic>,
    deliveryProvider: (json['deliveryProvider'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    deliveryLocation: json['deliveryLocation'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataOutletDetailResponseToJson(
        _$_TransactionMobileDataOutletDetailResponse instance) =>
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
    };

_$_TransactionTaxesAndService _$_$_TransactionTaxesAndServiceFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionTaxesAndService(
    id: json['id'] as int,
    name: json['name'] as String,
    title: json['title'] as String,
    amount: json['amount'] as int,
    type: json['type'],
  );
}

Map<String, dynamic> _$_$_TransactionTaxesAndServiceToJson(
        _$_TransactionTaxesAndService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'amount': instance.amount,
      'type': instance.type,
    };

_$_Moka _$_$_MokaFromJson(Map<String, dynamic> json) {
  return _$_Moka(
    outletId: json['outletId'],
  );
}

Map<String, dynamic> _$_$_MokaToJson(_$_Moka instance) => <String, dynamic>{
      'outletId': instance.outletId,
    };

_$_OrderMethod _$_$_OrderMethodFromJson(Map<String, dynamic> json) {
  return _$_OrderMethod(
    forceSelect: json['forceSelect'] as bool,
    defaultList:
        (json['defaultList'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_OrderMethodToJson(_$_OrderMethod instance) =>
    <String, dynamic>{
      'forceSelect': instance.forceSelect,
      'defaultList': instance.defaultList,
    };

_$_TransactionMobileDataPaymentListResponse
    _$_$_TransactionMobileDataPaymentListResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataPaymentListResponse(
    amount: json['amount'] as int?,
    method: json['method'] as String?,
    voucherRefNumber: json['voucherRefNumber'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataPaymentListResponseToJson(
        _$_TransactionMobileDataPaymentListResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'method': instance.method,
      'voucherRefNumber': instance.voucherRefNumber,
    };

_$_TransactionMobileDataPaymentResponse
    _$_$_TransactionMobileDataPaymentResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataPaymentResponse(
    amount: json['amount'] as int,
    change: json['change'] as int,
    method: json['method'] as String,
    companyPaymentMethodId: json['companyPaymentMethodId'] as String,
    timestamp: json['timestamp'] as String,
    title: json['title'] as String,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataPaymentResponseToJson(
        _$_TransactionMobileDataPaymentResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'change': instance.change,
      'method': instance.method,
      'companyPaymentMethodId': instance.companyPaymentMethodId,
      'timestamp': instance.timestamp,
      'title': instance.title,
      'status': instance.status,
    };

_$_TransactionMobileDataPromoResponse
    _$_$_TransactionMobileDataPromoResponseFromJson(Map<String, dynamic> json) {
  return _$_TransactionMobileDataPromoResponse(
    paymentTypes: (json['paymentTypes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    title: json['title'] as String?,
    promoType: json['promoType'] as String?,
    type: json['type'] as String?,
    discount: json['discount'] as int?,
    minPurchase: json['minPurchase'] as int?,
    promoId: json['promoId'] as int?,
    voucherRefNumber: json['voucherRefNumber'] as String?,
    voucherCode: json['voucherCode'] as String?,
    amount: json['amount'] as int,
  );
}

Map<String, dynamic> _$_$_TransactionMobileDataPromoResponseToJson(
        _$_TransactionMobileDataPromoResponse instance) =>
    <String, dynamic>{
      'paymentTypes': instance.paymentTypes,
      'title': instance.title,
      'promoType': instance.promoType,
      'type': instance.type,
      'discount': instance.discount,
      'minPurchase': instance.minPurchase,
      'promoId': instance.promoId,
      'voucherRefNumber': instance.voucherRefNumber,
      'voucherCode': instance.voucherCode,
      'amount': instance.amount,
    };

_$_TransactionMobileDataRatingResponse
    _$_$_TransactionMobileDataRatingResponseFromJson(
        Map<String, dynamic> json) {
  return _$_TransactionMobileDataRatingResponse();
}

Map<String, dynamic> _$_$_TransactionMobileDataRatingResponseToJson(
        _$_TransactionMobileDataRatingResponse instance) =>
    <String, dynamic>{};
