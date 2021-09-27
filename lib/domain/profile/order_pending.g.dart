// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_pending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPending _$$_OrderPendingFromJson(Map<String, dynamic> json) =>
    _$_OrderPending(
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
      deliveryAmount: json['deliveryAmount'] as int,
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
      totalPayment: json['totalPayment'] as int,
      salesType: json['salesType'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemWeight: json['itemWeight'] as int,
      isUseVoucher: json['isUseVoucher'] as bool,
      promos: json['promos'] as List<dynamic>,
      paymentList: json['paymentList'] as List<dynamic>,
      taxesAndServices: (json['taxesAndServices'] as List<dynamic>)
          .map((e) => TaxesAndService.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemTotalAmount: json['itemTotalAmount'] as int,
      note: json['note'] as String,
      gosend: json['gosend'] == null
          ? null
          : Delivery.fromJson(json['gosend'] as Map<String, dynamic>),
      originalDeliveryAmount: json['originalDeliveryAmount'] as int?,
      deviceTimestamp: DateTime.parse(json['deviceTimestamp'] as String),
      receiptCode: json['receiptCode'] as String,
      payments: (json['payments'] as List<dynamic>)
          .map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      outlet: Outlet.fromJson(json['outlet'] as Map<String, dynamic>),
      orderId: json['orderId'] as String,
      status: json['status'] as String,
      deliveryDetail: DeliveryDetail.fromJson(
          json['deliveryDetail'] as Map<String, dynamic>),
      billingDetail:
          BillingDetail.fromJson(json['billingDetail'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderPendingToJson(_$_OrderPending instance) =>
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
      'deliveryAmount': instance.deliveryAmount,
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
      'gosend': instance.gosend,
      'originalDeliveryAmount': instance.originalDeliveryAmount,
      'deviceTimestamp': instance.deviceTimestamp.toIso8601String(),
      'receiptCode': instance.receiptCode,
      'payments': instance.payments,
      'outlet': instance.outlet,
      'orderId': instance.orderId,
      'status': instance.status,
      'deliveryDetail': instance.deliveryDetail,
      'billingDetail': instance.billingDetail,
      'delivery': instance.delivery,
    };

_$_BillingDetail _$$_BillingDetailFromJson(Map<String, dynamic> json) =>
    _$_BillingDetail(
      orderId: json['orderId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      vaNumber: json['vaNumber'] as String? ?? '',
      amount: json['amount'],
      fee: json['fee'] as String? ?? '',
      finalAmount: json['finalAmount'] as String? ?? '',
      serviceProvider: json['serviceProvider'] as String? ?? '',
      bankAccName: json['bankAccName'] as String? ?? '',
      bankName: json['bankName'] as String? ?? '',
      formattedUniqueAmount: json['formattedUniqueAmount'] as String? ?? '',
      bankAccNo: json['bankAccNo'] as String? ?? '',
      uniqueAmount: json['uniqueAmount'] as String? ?? '',
      transactionDate: json['transactionDate'] == null
          ? null
          : DateTime.parse(json['transactionDate'] as String),
      formattedTransactionDate: json['formattedTransactionDate'] == null
          ? null
          : DateTime.parse(json['formattedTransactionDate'] as String),
      expires: json['expires'] as int,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      isCredit: json['isCredit'] as bool,
      isDeeplink: json['isDeeplink'] as bool,
      isWebView: json['isWebView'] as bool,
      isSingleBilling: json['isSingleBilling'] as bool,
    );

Map<String, dynamic> _$$_BillingDetailToJson(_$_BillingDetail instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'title': instance.title,
      'vaNumber': instance.vaNumber,
      'amount': instance.amount,
      'fee': instance.fee,
      'finalAmount': instance.finalAmount,
      'serviceProvider': instance.serviceProvider,
      'bankAccName': instance.bankAccName,
      'bankName': instance.bankName,
      'formattedUniqueAmount': instance.formattedUniqueAmount,
      'bankAccNo': instance.bankAccNo,
      'uniqueAmount': instance.uniqueAmount,
      'transactionDate': instance.transactionDate?.toIso8601String(),
      'formattedTransactionDate':
          instance.formattedTransactionDate?.toIso8601String(),
      'expires': instance.expires,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isCredit': instance.isCredit,
      'isDeeplink': instance.isDeeplink,
      'isWebView': instance.isWebView,
      'isSingleBilling': instance.isSingleBilling,
    };

_$_Delivery _$$_DeliveryFromJson(Map<String, dynamic> json) => _$_Delivery(
      provider: json['provider'] as String,
      price: json['price'] as int,
      address: json['address'] as String,
      shipmentMethod: json['shipmentMethod'] as String,
      location: json['location'] as List<dynamic>,
    );

Map<String, dynamic> _$$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'price': instance.price,
      'address': instance.address,
      'shipmentMethod': instance.shipmentMethod,
      'location': instance.location,
    };

_$_DeliveryDetail _$$_DeliveryDetailFromJson(Map<String, dynamic> json) =>
    _$_DeliveryDetail(
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
          : DeliverFrom.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : DeliverTo.fromJson(json['to'] as Map<String, dynamic>),
      status: json['status'] as List<dynamic>?,
      isDelete: json['isDelete'] as bool?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      ownerPhone: json['ownerPhone'] as String?,
    );

Map<String, dynamic> _$$_DeliveryDetailToJson(_$_DeliveryDetail instance) =>
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
      'createdDate': instance.createdDate?.toIso8601String(),
      'ownerPhone': instance.ownerPhone,
    };

_$_DeliverFrom _$$_DeliverFromFromJson(Map<String, dynamic> json) =>
    _$_DeliverFrom(
      location: json['location'] as List<dynamic>,
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_DeliverFromToJson(_$_DeliverFrom instance) =>
    <String, dynamic>{
      'location': instance.location,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
    };

_$_DeliverTo _$$_DeliverToFromJson(Map<String, dynamic> json) => _$_DeliverTo(
      location: json['location'] as List<dynamic>,
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_DeliverToToJson(_$_DeliverTo instance) =>
    <String, dynamic>{
      'location': instance.location,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      productId: json['productId'] as int,
      title: json['title'] as String,
      price: json['price'] as int,
      code: json['code'] as String,
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
      modifiers: json['modifiers'] as List<dynamic>,
      modifiersAmount: json['modifiersAmount'] as int,
      modifiersCost: json['modifiersCost'] as int,
      modifiersDiscount: json['modifiersDiscount'] as int,
      singleModifiersAmount: json['singleModifiersAmount'] as int,
      subtotal: json['subtotal'] as int,
      serviceAmount: json['serviceAmount'] as int,
      taxAmount: json['taxAmount'] as int,
      isStock: json['isStock'] as bool,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
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
      'isStock': instance.isStock,
    };

_$_Outlet _$$_OutletFromJson(Map<String, dynamic> json) => _$_Outlet(
      name: json['name'] as String,
      outletId: json['outletId'] as String,
      merchantId: json['merchantId'] as String,
      cashierId: json['cashierId'] as String,
      deviceId: json['deviceId'] as String,
      assignId: json['assignId'] as String,
      quinos: Moka.fromJson(json['quinos'] as Map<String, dynamic>),
      isNonSku: json['isNonSku'] as bool,
      moka: Moka.fromJson(json['moka'] as Map<String, dynamic>),
      detail: OutletDetail.fromJson(json['detail'] as Map<String, dynamic>),
      isLive: json['isLive'] as bool,
      orderMethod:
          OrderMethod.fromJson(json['orderMethod'] as Map<String, dynamic>),
      isDelete: json['isDelete'] as bool,
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_OutletToJson(_$_Outlet instance) => <String, dynamic>{
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
      'isLive': instance.isLive,
      'orderMethod': instance.orderMethod,
      'isDelete': instance.isDelete,
      'createdDate': instance.createdDate.toIso8601String(),
    };

_$_OutletDetail _$$_OutletDetailFromJson(Map<String, dynamic> json) =>
    _$_OutletDetail(
      name: json['name'] as String,
      address: json['address'] as String,
      taxesAndServices: json['taxesAndServices'] as List<dynamic>,
      location: json['location'] as List<dynamic>,
      phone: json['phone'] as String,
      kurirPrice: json['kurirPrice'],
      deliveryProvider: (json['deliveryProvider'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      driverPhone: json['driverPhone'] as String,
      area: json['area'] as List<dynamic>,
      deliveryLocation: json['deliveryLocation'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_OutletDetailToJson(_$_OutletDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'taxesAndServices': instance.taxesAndServices,
      'location': instance.location,
      'phone': instance.phone,
      'kurirPrice': instance.kurirPrice,
      'deliveryProvider': instance.deliveryProvider,
      'driverPhone': instance.driverPhone,
      'area': instance.area,
      'deliveryLocation': instance.deliveryLocation,
    };

_$_Moka _$$_MokaFromJson(Map<String, dynamic> json) => _$_Moka();

Map<String, dynamic> _$$_MokaToJson(_$_Moka instance) => <String, dynamic>{};

_$_OrderMethod _$$_OrderMethodFromJson(Map<String, dynamic> json) =>
    _$_OrderMethod(
      forceSelect: json['forceSelect'] as bool,
      defaultList: (json['defaultList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_OrderMethodToJson(_$_OrderMethod instance) =>
    <String, dynamic>{
      'forceSelect': instance.forceSelect,
      'defaultList': instance.defaultList,
    };

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      amount: json['amount'] as int,
      change: json['change'] as int,
      method: json['method'] as String,
      companyPaymentMethodId: json['companyPaymentMethodId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'change': instance.change,
      'method': instance.method,
      'companyPaymentMethodId': instance.companyPaymentMethodId,
      'timestamp': instance.timestamp.toIso8601String(),
      'title': instance.title,
    };

_$_TaxesAndService _$$_TaxesAndServiceFromJson(Map<String, dynamic> json) =>
    _$_TaxesAndService(
      id: json['id'] as int,
      code: json['code'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      amount: json['amount'] as int,
      salesTypes: (json['salesTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      paymentTypes: (json['paymentTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_TaxesAndServiceToJson(_$_TaxesAndService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'amount': instance.amount,
      'salesTypes': instance.salesTypes,
      'paymentTypes': instance.paymentTypes,
      'title': instance.title,
    };
