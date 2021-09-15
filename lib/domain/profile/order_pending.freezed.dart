// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_pending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPending _$OrderPendingFromJson(Map<String, dynamic> json) {
  return _OrderPending.fromJson(json);
}

/// @nodoc
class _$OrderPendingTearOff {
  const _$OrderPendingTearOff();

  _OrderPending call(
      {required String outletName,
      required int outletId,
      required String customerName,
      required String customerEmail,
      required String customerPhone,
      required String recipientName,
      required String recipientPhone,
      required String customerTableNumber,
      required String customerSmoking,
      required String customerPax,
      required String customerNote,
      required String customerCarType,
      required String customerCarColor,
      required String customerCarNumber,
      required String eta,
      required int deliveryAmount,
      required int totalChange,
      required int discountAmount,
      required int discountPercentage,
      required int finalAmount,
      required int receiptTotalDiscount,
      required int roundAmount,
      required int subtotal,
      required int totalDiscount,
      required int totalItemAmount,
      required int totalItemCost,
      required int totalItemDiscount,
      required int totalService,
      required int totalTax,
      required int voucherAmount,
      required int totalPayment,
      required String salesType,
      required List<Item> items,
      required int itemWeight,
      required bool isUseVoucher,
      required List<dynamic> promos,
      required List<dynamic> paymentList,
      required List<TaxesAndService> taxesAndServices,
      required int itemTotalAmount,
      required String note,
      @JsonKey(includeIfNull: true) required Delivery? gosend,
      @JsonKey(includeIfNull: true) required int? originalDeliveryAmount,
      required DateTime deviceTimestamp,
      required String receiptCode,
      required List<Payment> payments,
      required Outlet outlet,
      required String orderId,
      required String status,
      required DeliveryDetail deliveryDetail,
      required BillingDetail billingDetail,
      required Delivery delivery}) {
    return _OrderPending(
      outletName: outletName,
      outletId: outletId,
      customerName: customerName,
      customerEmail: customerEmail,
      customerPhone: customerPhone,
      recipientName: recipientName,
      recipientPhone: recipientPhone,
      customerTableNumber: customerTableNumber,
      customerSmoking: customerSmoking,
      customerPax: customerPax,
      customerNote: customerNote,
      customerCarType: customerCarType,
      customerCarColor: customerCarColor,
      customerCarNumber: customerCarNumber,
      eta: eta,
      deliveryAmount: deliveryAmount,
      totalChange: totalChange,
      discountAmount: discountAmount,
      discountPercentage: discountPercentage,
      finalAmount: finalAmount,
      receiptTotalDiscount: receiptTotalDiscount,
      roundAmount: roundAmount,
      subtotal: subtotal,
      totalDiscount: totalDiscount,
      totalItemAmount: totalItemAmount,
      totalItemCost: totalItemCost,
      totalItemDiscount: totalItemDiscount,
      totalService: totalService,
      totalTax: totalTax,
      voucherAmount: voucherAmount,
      totalPayment: totalPayment,
      salesType: salesType,
      items: items,
      itemWeight: itemWeight,
      isUseVoucher: isUseVoucher,
      promos: promos,
      paymentList: paymentList,
      taxesAndServices: taxesAndServices,
      itemTotalAmount: itemTotalAmount,
      note: note,
      gosend: gosend,
      originalDeliveryAmount: originalDeliveryAmount,
      deviceTimestamp: deviceTimestamp,
      receiptCode: receiptCode,
      payments: payments,
      outlet: outlet,
      orderId: orderId,
      status: status,
      deliveryDetail: deliveryDetail,
      billingDetail: billingDetail,
      delivery: delivery,
    );
  }

  OrderPending fromJson(Map<String, Object> json) {
    return OrderPending.fromJson(json);
  }
}

/// @nodoc
const $OrderPending = _$OrderPendingTearOff();

/// @nodoc
mixin _$OrderPending {
  String get outletName => throw _privateConstructorUsedError;
  int get outletId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerEmail => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String get recipientName => throw _privateConstructorUsedError;
  String get recipientPhone => throw _privateConstructorUsedError;
  String get customerTableNumber => throw _privateConstructorUsedError;
  String get customerSmoking => throw _privateConstructorUsedError;
  String get customerPax => throw _privateConstructorUsedError;
  String get customerNote => throw _privateConstructorUsedError;
  String get customerCarType => throw _privateConstructorUsedError;
  String get customerCarColor => throw _privateConstructorUsedError;
  String get customerCarNumber => throw _privateConstructorUsedError;
  String get eta => throw _privateConstructorUsedError;
  int get deliveryAmount => throw _privateConstructorUsedError;
  int get totalChange => throw _privateConstructorUsedError;
  int get discountAmount => throw _privateConstructorUsedError;
  int get discountPercentage => throw _privateConstructorUsedError;
  int get finalAmount => throw _privateConstructorUsedError;
  int get receiptTotalDiscount => throw _privateConstructorUsedError;
  int get roundAmount => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;
  int get totalDiscount => throw _privateConstructorUsedError;
  int get totalItemAmount => throw _privateConstructorUsedError;
  int get totalItemCost => throw _privateConstructorUsedError;
  int get totalItemDiscount => throw _privateConstructorUsedError;
  int get totalService => throw _privateConstructorUsedError;
  int get totalTax => throw _privateConstructorUsedError;
  int get voucherAmount => throw _privateConstructorUsedError;
  int get totalPayment => throw _privateConstructorUsedError;
  String get salesType => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  int get itemWeight => throw _privateConstructorUsedError;
  bool get isUseVoucher => throw _privateConstructorUsedError;
  List<dynamic> get promos => throw _privateConstructorUsedError;
  List<dynamic> get paymentList => throw _privateConstructorUsedError;
  List<TaxesAndService> get taxesAndServices =>
      throw _privateConstructorUsedError;
  int get itemTotalAmount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  Delivery? get gosend => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  int? get originalDeliveryAmount => throw _privateConstructorUsedError;
  DateTime get deviceTimestamp => throw _privateConstructorUsedError;
  String get receiptCode => throw _privateConstructorUsedError;
  List<Payment> get payments => throw _privateConstructorUsedError;
  Outlet get outlet => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DeliveryDetail get deliveryDetail => throw _privateConstructorUsedError;
  BillingDetail get billingDetail => throw _privateConstructorUsedError;
  Delivery get delivery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPendingCopyWith<OrderPending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPendingCopyWith<$Res> {
  factory $OrderPendingCopyWith(
          OrderPending value, $Res Function(OrderPending) then) =
      _$OrderPendingCopyWithImpl<$Res>;
  $Res call(
      {String outletName,
      int outletId,
      String customerName,
      String customerEmail,
      String customerPhone,
      String recipientName,
      String recipientPhone,
      String customerTableNumber,
      String customerSmoking,
      String customerPax,
      String customerNote,
      String customerCarType,
      String customerCarColor,
      String customerCarNumber,
      String eta,
      int deliveryAmount,
      int totalChange,
      int discountAmount,
      int discountPercentage,
      int finalAmount,
      int receiptTotalDiscount,
      int roundAmount,
      int subtotal,
      int totalDiscount,
      int totalItemAmount,
      int totalItemCost,
      int totalItemDiscount,
      int totalService,
      int totalTax,
      int voucherAmount,
      int totalPayment,
      String salesType,
      List<Item> items,
      int itemWeight,
      bool isUseVoucher,
      List<dynamic> promos,
      List<dynamic> paymentList,
      List<TaxesAndService> taxesAndServices,
      int itemTotalAmount,
      String note,
      @JsonKey(includeIfNull: true) Delivery? gosend,
      @JsonKey(includeIfNull: true) int? originalDeliveryAmount,
      DateTime deviceTimestamp,
      String receiptCode,
      List<Payment> payments,
      Outlet outlet,
      String orderId,
      String status,
      DeliveryDetail deliveryDetail,
      BillingDetail billingDetail,
      Delivery delivery});

  $DeliveryCopyWith<$Res>? get gosend;
  $OutletCopyWith<$Res> get outlet;
  $DeliveryDetailCopyWith<$Res> get deliveryDetail;
  $BillingDetailCopyWith<$Res> get billingDetail;
  $DeliveryCopyWith<$Res> get delivery;
}

/// @nodoc
class _$OrderPendingCopyWithImpl<$Res> implements $OrderPendingCopyWith<$Res> {
  _$OrderPendingCopyWithImpl(this._value, this._then);

  final OrderPending _value;
  // ignore: unused_field
  final $Res Function(OrderPending) _then;

  @override
  $Res call({
    Object? outletName = freezed,
    Object? outletId = freezed,
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? recipientName = freezed,
    Object? recipientPhone = freezed,
    Object? customerTableNumber = freezed,
    Object? customerSmoking = freezed,
    Object? customerPax = freezed,
    Object? customerNote = freezed,
    Object? customerCarType = freezed,
    Object? customerCarColor = freezed,
    Object? customerCarNumber = freezed,
    Object? eta = freezed,
    Object? deliveryAmount = freezed,
    Object? totalChange = freezed,
    Object? discountAmount = freezed,
    Object? discountPercentage = freezed,
    Object? finalAmount = freezed,
    Object? receiptTotalDiscount = freezed,
    Object? roundAmount = freezed,
    Object? subtotal = freezed,
    Object? totalDiscount = freezed,
    Object? totalItemAmount = freezed,
    Object? totalItemCost = freezed,
    Object? totalItemDiscount = freezed,
    Object? totalService = freezed,
    Object? totalTax = freezed,
    Object? voucherAmount = freezed,
    Object? totalPayment = freezed,
    Object? salesType = freezed,
    Object? items = freezed,
    Object? itemWeight = freezed,
    Object? isUseVoucher = freezed,
    Object? promos = freezed,
    Object? paymentList = freezed,
    Object? taxesAndServices = freezed,
    Object? itemTotalAmount = freezed,
    Object? note = freezed,
    Object? gosend = freezed,
    Object? originalDeliveryAmount = freezed,
    Object? deviceTimestamp = freezed,
    Object? receiptCode = freezed,
    Object? payments = freezed,
    Object? outlet = freezed,
    Object? orderId = freezed,
    Object? status = freezed,
    Object? deliveryDetail = freezed,
    Object? billingDetail = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_value.copyWith(
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: customerEmail == freezed
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      recipientName: recipientName == freezed
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientPhone: recipientPhone == freezed
          ? _value.recipientPhone
          : recipientPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerTableNumber: customerTableNumber == freezed
          ? _value.customerTableNumber
          : customerTableNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerSmoking: customerSmoking == freezed
          ? _value.customerSmoking
          : customerSmoking // ignore: cast_nullable_to_non_nullable
              as String,
      customerPax: customerPax == freezed
          ? _value.customerPax
          : customerPax // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: customerNote == freezed
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
      customerCarType: customerCarType == freezed
          ? _value.customerCarType
          : customerCarType // ignore: cast_nullable_to_non_nullable
              as String,
      customerCarColor: customerCarColor == freezed
          ? _value.customerCarColor
          : customerCarColor // ignore: cast_nullable_to_non_nullable
              as String,
      customerCarNumber: customerCarNumber == freezed
          ? _value.customerCarNumber
          : customerCarNumber // ignore: cast_nullable_to_non_nullable
              as String,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAmount: deliveryAmount == freezed
          ? _value.deliveryAmount
          : deliveryAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalChange: totalChange == freezed
          ? _value.totalChange
          : totalChange // ignore: cast_nullable_to_non_nullable
              as int,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      receiptTotalDiscount: receiptTotalDiscount == freezed
          ? _value.receiptTotalDiscount
          : receiptTotalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      roundAmount: roundAmount == freezed
          ? _value.roundAmount
          : roundAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemAmount: totalItemAmount == freezed
          ? _value.totalItemAmount
          : totalItemAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemCost: totalItemCost == freezed
          ? _value.totalItemCost
          : totalItemCost // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemDiscount: totalItemDiscount == freezed
          ? _value.totalItemDiscount
          : totalItemDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      totalService: totalService == freezed
          ? _value.totalService
          : totalService // ignore: cast_nullable_to_non_nullable
              as int,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as int,
      voucherAmount: voucherAmount == freezed
          ? _value.voucherAmount
          : voucherAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayment: totalPayment == freezed
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as int,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      itemWeight: itemWeight == freezed
          ? _value.itemWeight
          : itemWeight // ignore: cast_nullable_to_non_nullable
              as int,
      isUseVoucher: isUseVoucher == freezed
          ? _value.isUseVoucher
          : isUseVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
      promos: promos == freezed
          ? _value.promos
          : promos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      paymentList: paymentList == freezed
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<TaxesAndService>,
      itemTotalAmount: itemTotalAmount == freezed
          ? _value.itemTotalAmount
          : itemTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      gosend: gosend == freezed
          ? _value.gosend
          : gosend // ignore: cast_nullable_to_non_nullable
              as Delivery?,
      originalDeliveryAmount: originalDeliveryAmount == freezed
          ? _value.originalDeliveryAmount
          : originalDeliveryAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceTimestamp: deviceTimestamp == freezed
          ? _value.deviceTimestamp
          : deviceTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      outlet: outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as Outlet,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDetail: deliveryDetail == freezed
          ? _value.deliveryDetail
          : deliveryDetail // ignore: cast_nullable_to_non_nullable
              as DeliveryDetail,
      billingDetail: billingDetail == freezed
          ? _value.billingDetail
          : billingDetail // ignore: cast_nullable_to_non_nullable
              as BillingDetail,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
    ));
  }

  @override
  $DeliveryCopyWith<$Res>? get gosend {
    if (_value.gosend == null) {
      return null;
    }

    return $DeliveryCopyWith<$Res>(_value.gosend!, (value) {
      return _then(_value.copyWith(gosend: value));
    });
  }

  @override
  $OutletCopyWith<$Res> get outlet {
    return $OutletCopyWith<$Res>(_value.outlet, (value) {
      return _then(_value.copyWith(outlet: value));
    });
  }

  @override
  $DeliveryDetailCopyWith<$Res> get deliveryDetail {
    return $DeliveryDetailCopyWith<$Res>(_value.deliveryDetail, (value) {
      return _then(_value.copyWith(deliveryDetail: value));
    });
  }

  @override
  $BillingDetailCopyWith<$Res> get billingDetail {
    return $BillingDetailCopyWith<$Res>(_value.billingDetail, (value) {
      return _then(_value.copyWith(billingDetail: value));
    });
  }

  @override
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc
abstract class _$OrderPendingCopyWith<$Res>
    implements $OrderPendingCopyWith<$Res> {
  factory _$OrderPendingCopyWith(
          _OrderPending value, $Res Function(_OrderPending) then) =
      __$OrderPendingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String outletName,
      int outletId,
      String customerName,
      String customerEmail,
      String customerPhone,
      String recipientName,
      String recipientPhone,
      String customerTableNumber,
      String customerSmoking,
      String customerPax,
      String customerNote,
      String customerCarType,
      String customerCarColor,
      String customerCarNumber,
      String eta,
      int deliveryAmount,
      int totalChange,
      int discountAmount,
      int discountPercentage,
      int finalAmount,
      int receiptTotalDiscount,
      int roundAmount,
      int subtotal,
      int totalDiscount,
      int totalItemAmount,
      int totalItemCost,
      int totalItemDiscount,
      int totalService,
      int totalTax,
      int voucherAmount,
      int totalPayment,
      String salesType,
      List<Item> items,
      int itemWeight,
      bool isUseVoucher,
      List<dynamic> promos,
      List<dynamic> paymentList,
      List<TaxesAndService> taxesAndServices,
      int itemTotalAmount,
      String note,
      @JsonKey(includeIfNull: true) Delivery? gosend,
      @JsonKey(includeIfNull: true) int? originalDeliveryAmount,
      DateTime deviceTimestamp,
      String receiptCode,
      List<Payment> payments,
      Outlet outlet,
      String orderId,
      String status,
      DeliveryDetail deliveryDetail,
      BillingDetail billingDetail,
      Delivery delivery});

  @override
  $DeliveryCopyWith<$Res>? get gosend;
  @override
  $OutletCopyWith<$Res> get outlet;
  @override
  $DeliveryDetailCopyWith<$Res> get deliveryDetail;
  @override
  $BillingDetailCopyWith<$Res> get billingDetail;
  @override
  $DeliveryCopyWith<$Res> get delivery;
}

/// @nodoc
class __$OrderPendingCopyWithImpl<$Res> extends _$OrderPendingCopyWithImpl<$Res>
    implements _$OrderPendingCopyWith<$Res> {
  __$OrderPendingCopyWithImpl(
      _OrderPending _value, $Res Function(_OrderPending) _then)
      : super(_value, (v) => _then(v as _OrderPending));

  @override
  _OrderPending get _value => super._value as _OrderPending;

  @override
  $Res call({
    Object? outletName = freezed,
    Object? outletId = freezed,
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? recipientName = freezed,
    Object? recipientPhone = freezed,
    Object? customerTableNumber = freezed,
    Object? customerSmoking = freezed,
    Object? customerPax = freezed,
    Object? customerNote = freezed,
    Object? customerCarType = freezed,
    Object? customerCarColor = freezed,
    Object? customerCarNumber = freezed,
    Object? eta = freezed,
    Object? deliveryAmount = freezed,
    Object? totalChange = freezed,
    Object? discountAmount = freezed,
    Object? discountPercentage = freezed,
    Object? finalAmount = freezed,
    Object? receiptTotalDiscount = freezed,
    Object? roundAmount = freezed,
    Object? subtotal = freezed,
    Object? totalDiscount = freezed,
    Object? totalItemAmount = freezed,
    Object? totalItemCost = freezed,
    Object? totalItemDiscount = freezed,
    Object? totalService = freezed,
    Object? totalTax = freezed,
    Object? voucherAmount = freezed,
    Object? totalPayment = freezed,
    Object? salesType = freezed,
    Object? items = freezed,
    Object? itemWeight = freezed,
    Object? isUseVoucher = freezed,
    Object? promos = freezed,
    Object? paymentList = freezed,
    Object? taxesAndServices = freezed,
    Object? itemTotalAmount = freezed,
    Object? note = freezed,
    Object? gosend = freezed,
    Object? originalDeliveryAmount = freezed,
    Object? deviceTimestamp = freezed,
    Object? receiptCode = freezed,
    Object? payments = freezed,
    Object? outlet = freezed,
    Object? orderId = freezed,
    Object? status = freezed,
    Object? deliveryDetail = freezed,
    Object? billingDetail = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_OrderPending(
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: customerEmail == freezed
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      recipientName: recipientName == freezed
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientPhone: recipientPhone == freezed
          ? _value.recipientPhone
          : recipientPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerTableNumber: customerTableNumber == freezed
          ? _value.customerTableNumber
          : customerTableNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerSmoking: customerSmoking == freezed
          ? _value.customerSmoking
          : customerSmoking // ignore: cast_nullable_to_non_nullable
              as String,
      customerPax: customerPax == freezed
          ? _value.customerPax
          : customerPax // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: customerNote == freezed
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
      customerCarType: customerCarType == freezed
          ? _value.customerCarType
          : customerCarType // ignore: cast_nullable_to_non_nullable
              as String,
      customerCarColor: customerCarColor == freezed
          ? _value.customerCarColor
          : customerCarColor // ignore: cast_nullable_to_non_nullable
              as String,
      customerCarNumber: customerCarNumber == freezed
          ? _value.customerCarNumber
          : customerCarNumber // ignore: cast_nullable_to_non_nullable
              as String,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAmount: deliveryAmount == freezed
          ? _value.deliveryAmount
          : deliveryAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalChange: totalChange == freezed
          ? _value.totalChange
          : totalChange // ignore: cast_nullable_to_non_nullable
              as int,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      receiptTotalDiscount: receiptTotalDiscount == freezed
          ? _value.receiptTotalDiscount
          : receiptTotalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      roundAmount: roundAmount == freezed
          ? _value.roundAmount
          : roundAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemAmount: totalItemAmount == freezed
          ? _value.totalItemAmount
          : totalItemAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemCost: totalItemCost == freezed
          ? _value.totalItemCost
          : totalItemCost // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemDiscount: totalItemDiscount == freezed
          ? _value.totalItemDiscount
          : totalItemDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      totalService: totalService == freezed
          ? _value.totalService
          : totalService // ignore: cast_nullable_to_non_nullable
              as int,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as int,
      voucherAmount: voucherAmount == freezed
          ? _value.voucherAmount
          : voucherAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayment: totalPayment == freezed
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as int,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      itemWeight: itemWeight == freezed
          ? _value.itemWeight
          : itemWeight // ignore: cast_nullable_to_non_nullable
              as int,
      isUseVoucher: isUseVoucher == freezed
          ? _value.isUseVoucher
          : isUseVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
      promos: promos == freezed
          ? _value.promos
          : promos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      paymentList: paymentList == freezed
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<TaxesAndService>,
      itemTotalAmount: itemTotalAmount == freezed
          ? _value.itemTotalAmount
          : itemTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      gosend: gosend == freezed
          ? _value.gosend
          : gosend // ignore: cast_nullable_to_non_nullable
              as Delivery?,
      originalDeliveryAmount: originalDeliveryAmount == freezed
          ? _value.originalDeliveryAmount
          : originalDeliveryAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceTimestamp: deviceTimestamp == freezed
          ? _value.deviceTimestamp
          : deviceTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      outlet: outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as Outlet,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDetail: deliveryDetail == freezed
          ? _value.deliveryDetail
          : deliveryDetail // ignore: cast_nullable_to_non_nullable
              as DeliveryDetail,
      billingDetail: billingDetail == freezed
          ? _value.billingDetail
          : billingDetail // ignore: cast_nullable_to_non_nullable
              as BillingDetail,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderPending implements _OrderPending {
  const _$_OrderPending(
      {required this.outletName,
      required this.outletId,
      required this.customerName,
      required this.customerEmail,
      required this.customerPhone,
      required this.recipientName,
      required this.recipientPhone,
      required this.customerTableNumber,
      required this.customerSmoking,
      required this.customerPax,
      required this.customerNote,
      required this.customerCarType,
      required this.customerCarColor,
      required this.customerCarNumber,
      required this.eta,
      required this.deliveryAmount,
      required this.totalChange,
      required this.discountAmount,
      required this.discountPercentage,
      required this.finalAmount,
      required this.receiptTotalDiscount,
      required this.roundAmount,
      required this.subtotal,
      required this.totalDiscount,
      required this.totalItemAmount,
      required this.totalItemCost,
      required this.totalItemDiscount,
      required this.totalService,
      required this.totalTax,
      required this.voucherAmount,
      required this.totalPayment,
      required this.salesType,
      required this.items,
      required this.itemWeight,
      required this.isUseVoucher,
      required this.promos,
      required this.paymentList,
      required this.taxesAndServices,
      required this.itemTotalAmount,
      required this.note,
      @JsonKey(includeIfNull: true) required this.gosend,
      @JsonKey(includeIfNull: true) required this.originalDeliveryAmount,
      required this.deviceTimestamp,
      required this.receiptCode,
      required this.payments,
      required this.outlet,
      required this.orderId,
      required this.status,
      required this.deliveryDetail,
      required this.billingDetail,
      required this.delivery});

  factory _$_OrderPending.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderPendingFromJson(json);

  @override
  final String outletName;
  @override
  final int outletId;
  @override
  final String customerName;
  @override
  final String customerEmail;
  @override
  final String customerPhone;
  @override
  final String recipientName;
  @override
  final String recipientPhone;
  @override
  final String customerTableNumber;
  @override
  final String customerSmoking;
  @override
  final String customerPax;
  @override
  final String customerNote;
  @override
  final String customerCarType;
  @override
  final String customerCarColor;
  @override
  final String customerCarNumber;
  @override
  final String eta;
  @override
  final int deliveryAmount;
  @override
  final int totalChange;
  @override
  final int discountAmount;
  @override
  final int discountPercentage;
  @override
  final int finalAmount;
  @override
  final int receiptTotalDiscount;
  @override
  final int roundAmount;
  @override
  final int subtotal;
  @override
  final int totalDiscount;
  @override
  final int totalItemAmount;
  @override
  final int totalItemCost;
  @override
  final int totalItemDiscount;
  @override
  final int totalService;
  @override
  final int totalTax;
  @override
  final int voucherAmount;
  @override
  final int totalPayment;
  @override
  final String salesType;
  @override
  final List<Item> items;
  @override
  final int itemWeight;
  @override
  final bool isUseVoucher;
  @override
  final List<dynamic> promos;
  @override
  final List<dynamic> paymentList;
  @override
  final List<TaxesAndService> taxesAndServices;
  @override
  final int itemTotalAmount;
  @override
  final String note;
  @override
  @JsonKey(includeIfNull: true)
  final Delivery? gosend;
  @override
  @JsonKey(includeIfNull: true)
  final int? originalDeliveryAmount;
  @override
  final DateTime deviceTimestamp;
  @override
  final String receiptCode;
  @override
  final List<Payment> payments;
  @override
  final Outlet outlet;
  @override
  final String orderId;
  @override
  final String status;
  @override
  final DeliveryDetail deliveryDetail;
  @override
  final BillingDetail billingDetail;
  @override
  final Delivery delivery;

  @override
  String toString() {
    return 'OrderPending(outletName: $outletName, outletId: $outletId, customerName: $customerName, customerEmail: $customerEmail, customerPhone: $customerPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, customerTableNumber: $customerTableNumber, customerSmoking: $customerSmoking, customerPax: $customerPax, customerNote: $customerNote, customerCarType: $customerCarType, customerCarColor: $customerCarColor, customerCarNumber: $customerCarNumber, eta: $eta, deliveryAmount: $deliveryAmount, totalChange: $totalChange, discountAmount: $discountAmount, discountPercentage: $discountPercentage, finalAmount: $finalAmount, receiptTotalDiscount: $receiptTotalDiscount, roundAmount: $roundAmount, subtotal: $subtotal, totalDiscount: $totalDiscount, totalItemAmount: $totalItemAmount, totalItemCost: $totalItemCost, totalItemDiscount: $totalItemDiscount, totalService: $totalService, totalTax: $totalTax, voucherAmount: $voucherAmount, totalPayment: $totalPayment, salesType: $salesType, items: $items, itemWeight: $itemWeight, isUseVoucher: $isUseVoucher, promos: $promos, paymentList: $paymentList, taxesAndServices: $taxesAndServices, itemTotalAmount: $itemTotalAmount, note: $note, gosend: $gosend, originalDeliveryAmount: $originalDeliveryAmount, deviceTimestamp: $deviceTimestamp, receiptCode: $receiptCode, payments: $payments, outlet: $outlet, orderId: $orderId, status: $status, deliveryDetail: $deliveryDetail, billingDetail: $billingDetail, delivery: $delivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderPending &&
            (identical(other.outletName, outletName) ||
                const DeepCollectionEquality()
                    .equals(other.outletName, outletName)) &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.customerEmail, customerEmail) ||
                const DeepCollectionEquality()
                    .equals(other.customerEmail, customerEmail)) &&
            (identical(other.customerPhone, customerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.customerPhone, customerPhone)) &&
            (identical(other.recipientName, recipientName) ||
                const DeepCollectionEquality()
                    .equals(other.recipientName, recipientName)) &&
            (identical(other.recipientPhone, recipientPhone) ||
                const DeepCollectionEquality()
                    .equals(other.recipientPhone, recipientPhone)) &&
            (identical(other.customerTableNumber, customerTableNumber) ||
                const DeepCollectionEquality()
                    .equals(other.customerTableNumber, customerTableNumber)) &&
            (identical(other.customerSmoking, customerSmoking) ||
                const DeepCollectionEquality()
                    .equals(other.customerSmoking, customerSmoking)) &&
            (identical(other.customerPax, customerPax) ||
                const DeepCollectionEquality()
                    .equals(other.customerPax, customerPax)) &&
            (identical(other.customerNote, customerNote) ||
                const DeepCollectionEquality()
                    .equals(other.customerNote, customerNote)) &&
            (identical(other.customerCarType, customerCarType) ||
                const DeepCollectionEquality()
                    .equals(other.customerCarType, customerCarType)) &&
            (identical(other.customerCarColor, customerCarColor) ||
                const DeepCollectionEquality()
                    .equals(other.customerCarColor, customerCarColor)) &&
            (identical(other.customerCarNumber, customerCarNumber) ||
                const DeepCollectionEquality()
                    .equals(other.customerCarNumber, customerCarNumber)) &&
            (identical(other.eta, eta) ||
                const DeepCollectionEquality().equals(other.eta, eta)) &&
            (identical(other.deliveryAmount, deliveryAmount) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryAmount, deliveryAmount)) &&
            (identical(other.totalChange, totalChange) ||
                const DeepCollectionEquality()
                    .equals(other.totalChange, totalChange)) &&
            (identical(other.discountAmount, discountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.discountAmount, discountAmount)) &&
            (identical(other.discountPercentage, discountPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.discountPercentage, discountPercentage)) &&
            (identical(other.finalAmount, finalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.finalAmount, finalAmount)) &&
            (identical(other.receiptTotalDiscount, receiptTotalDiscount) ||
                const DeepCollectionEquality().equals(
                    other.receiptTotalDiscount, receiptTotalDiscount)) &&
            (identical(other.roundAmount, roundAmount) ||
                const DeepCollectionEquality()
                    .equals(other.roundAmount, roundAmount)) &&
            (identical(other.subtotal, subtotal) || const DeepCollectionEquality().equals(other.subtotal, subtotal)) &&
            (identical(other.totalDiscount, totalDiscount) || const DeepCollectionEquality().equals(other.totalDiscount, totalDiscount)) &&
            (identical(other.totalItemAmount, totalItemAmount) || const DeepCollectionEquality().equals(other.totalItemAmount, totalItemAmount)) &&
            (identical(other.totalItemCost, totalItemCost) || const DeepCollectionEquality().equals(other.totalItemCost, totalItemCost)) &&
            (identical(other.totalItemDiscount, totalItemDiscount) || const DeepCollectionEquality().equals(other.totalItemDiscount, totalItemDiscount)) &&
            (identical(other.totalService, totalService) || const DeepCollectionEquality().equals(other.totalService, totalService)) &&
            (identical(other.totalTax, totalTax) || const DeepCollectionEquality().equals(other.totalTax, totalTax)) &&
            (identical(other.voucherAmount, voucherAmount) || const DeepCollectionEquality().equals(other.voucherAmount, voucherAmount)) &&
            (identical(other.totalPayment, totalPayment) || const DeepCollectionEquality().equals(other.totalPayment, totalPayment)) &&
            (identical(other.salesType, salesType) || const DeepCollectionEquality().equals(other.salesType, salesType)) &&
            (identical(other.items, items) || const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.itemWeight, itemWeight) || const DeepCollectionEquality().equals(other.itemWeight, itemWeight)) &&
            (identical(other.isUseVoucher, isUseVoucher) || const DeepCollectionEquality().equals(other.isUseVoucher, isUseVoucher)) &&
            (identical(other.promos, promos) || const DeepCollectionEquality().equals(other.promos, promos)) &&
            (identical(other.paymentList, paymentList) || const DeepCollectionEquality().equals(other.paymentList, paymentList)) &&
            (identical(other.taxesAndServices, taxesAndServices) || const DeepCollectionEquality().equals(other.taxesAndServices, taxesAndServices)) &&
            (identical(other.itemTotalAmount, itemTotalAmount) || const DeepCollectionEquality().equals(other.itemTotalAmount, itemTotalAmount)) &&
            (identical(other.note, note) || const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.gosend, gosend) || const DeepCollectionEquality().equals(other.gosend, gosend)) &&
            (identical(other.originalDeliveryAmount, originalDeliveryAmount) || const DeepCollectionEquality().equals(other.originalDeliveryAmount, originalDeliveryAmount)) &&
            (identical(other.deviceTimestamp, deviceTimestamp) || const DeepCollectionEquality().equals(other.deviceTimestamp, deviceTimestamp)) &&
            (identical(other.receiptCode, receiptCode) || const DeepCollectionEquality().equals(other.receiptCode, receiptCode)) &&
            (identical(other.payments, payments) || const DeepCollectionEquality().equals(other.payments, payments)) &&
            (identical(other.outlet, outlet) || const DeepCollectionEquality().equals(other.outlet, outlet)) &&
            (identical(other.orderId, orderId) || const DeepCollectionEquality().equals(other.orderId, orderId)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryDetail, deliveryDetail) || const DeepCollectionEquality().equals(other.deliveryDetail, deliveryDetail)) &&
            (identical(other.billingDetail, billingDetail) || const DeepCollectionEquality().equals(other.billingDetail, billingDetail)) &&
            (identical(other.delivery, delivery) || const DeepCollectionEquality().equals(other.delivery, delivery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outletName) ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(customerEmail) ^
      const DeepCollectionEquality().hash(customerPhone) ^
      const DeepCollectionEquality().hash(recipientName) ^
      const DeepCollectionEquality().hash(recipientPhone) ^
      const DeepCollectionEquality().hash(customerTableNumber) ^
      const DeepCollectionEquality().hash(customerSmoking) ^
      const DeepCollectionEquality().hash(customerPax) ^
      const DeepCollectionEquality().hash(customerNote) ^
      const DeepCollectionEquality().hash(customerCarType) ^
      const DeepCollectionEquality().hash(customerCarColor) ^
      const DeepCollectionEquality().hash(customerCarNumber) ^
      const DeepCollectionEquality().hash(eta) ^
      const DeepCollectionEquality().hash(deliveryAmount) ^
      const DeepCollectionEquality().hash(totalChange) ^
      const DeepCollectionEquality().hash(discountAmount) ^
      const DeepCollectionEquality().hash(discountPercentage) ^
      const DeepCollectionEquality().hash(finalAmount) ^
      const DeepCollectionEquality().hash(receiptTotalDiscount) ^
      const DeepCollectionEquality().hash(roundAmount) ^
      const DeepCollectionEquality().hash(subtotal) ^
      const DeepCollectionEquality().hash(totalDiscount) ^
      const DeepCollectionEquality().hash(totalItemAmount) ^
      const DeepCollectionEquality().hash(totalItemCost) ^
      const DeepCollectionEquality().hash(totalItemDiscount) ^
      const DeepCollectionEquality().hash(totalService) ^
      const DeepCollectionEquality().hash(totalTax) ^
      const DeepCollectionEquality().hash(voucherAmount) ^
      const DeepCollectionEquality().hash(totalPayment) ^
      const DeepCollectionEquality().hash(salesType) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(itemWeight) ^
      const DeepCollectionEquality().hash(isUseVoucher) ^
      const DeepCollectionEquality().hash(promos) ^
      const DeepCollectionEquality().hash(paymentList) ^
      const DeepCollectionEquality().hash(taxesAndServices) ^
      const DeepCollectionEquality().hash(itemTotalAmount) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(gosend) ^
      const DeepCollectionEquality().hash(originalDeliveryAmount) ^
      const DeepCollectionEquality().hash(deviceTimestamp) ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(payments) ^
      const DeepCollectionEquality().hash(outlet) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deliveryDetail) ^
      const DeepCollectionEquality().hash(billingDetail) ^
      const DeepCollectionEquality().hash(delivery);

  @JsonKey(ignore: true)
  @override
  _$OrderPendingCopyWith<_OrderPending> get copyWith =>
      __$OrderPendingCopyWithImpl<_OrderPending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderPendingToJson(this);
  }
}

abstract class _OrderPending implements OrderPending {
  const factory _OrderPending(
      {required String outletName,
      required int outletId,
      required String customerName,
      required String customerEmail,
      required String customerPhone,
      required String recipientName,
      required String recipientPhone,
      required String customerTableNumber,
      required String customerSmoking,
      required String customerPax,
      required String customerNote,
      required String customerCarType,
      required String customerCarColor,
      required String customerCarNumber,
      required String eta,
      required int deliveryAmount,
      required int totalChange,
      required int discountAmount,
      required int discountPercentage,
      required int finalAmount,
      required int receiptTotalDiscount,
      required int roundAmount,
      required int subtotal,
      required int totalDiscount,
      required int totalItemAmount,
      required int totalItemCost,
      required int totalItemDiscount,
      required int totalService,
      required int totalTax,
      required int voucherAmount,
      required int totalPayment,
      required String salesType,
      required List<Item> items,
      required int itemWeight,
      required bool isUseVoucher,
      required List<dynamic> promos,
      required List<dynamic> paymentList,
      required List<TaxesAndService> taxesAndServices,
      required int itemTotalAmount,
      required String note,
      @JsonKey(includeIfNull: true) required Delivery? gosend,
      @JsonKey(includeIfNull: true) required int? originalDeliveryAmount,
      required DateTime deviceTimestamp,
      required String receiptCode,
      required List<Payment> payments,
      required Outlet outlet,
      required String orderId,
      required String status,
      required DeliveryDetail deliveryDetail,
      required BillingDetail billingDetail,
      required Delivery delivery}) = _$_OrderPending;

  factory _OrderPending.fromJson(Map<String, dynamic> json) =
      _$_OrderPending.fromJson;

  @override
  String get outletName => throw _privateConstructorUsedError;
  @override
  int get outletId => throw _privateConstructorUsedError;
  @override
  String get customerName => throw _privateConstructorUsedError;
  @override
  String get customerEmail => throw _privateConstructorUsedError;
  @override
  String get customerPhone => throw _privateConstructorUsedError;
  @override
  String get recipientName => throw _privateConstructorUsedError;
  @override
  String get recipientPhone => throw _privateConstructorUsedError;
  @override
  String get customerTableNumber => throw _privateConstructorUsedError;
  @override
  String get customerSmoking => throw _privateConstructorUsedError;
  @override
  String get customerPax => throw _privateConstructorUsedError;
  @override
  String get customerNote => throw _privateConstructorUsedError;
  @override
  String get customerCarType => throw _privateConstructorUsedError;
  @override
  String get customerCarColor => throw _privateConstructorUsedError;
  @override
  String get customerCarNumber => throw _privateConstructorUsedError;
  @override
  String get eta => throw _privateConstructorUsedError;
  @override
  int get deliveryAmount => throw _privateConstructorUsedError;
  @override
  int get totalChange => throw _privateConstructorUsedError;
  @override
  int get discountAmount => throw _privateConstructorUsedError;
  @override
  int get discountPercentage => throw _privateConstructorUsedError;
  @override
  int get finalAmount => throw _privateConstructorUsedError;
  @override
  int get receiptTotalDiscount => throw _privateConstructorUsedError;
  @override
  int get roundAmount => throw _privateConstructorUsedError;
  @override
  int get subtotal => throw _privateConstructorUsedError;
  @override
  int get totalDiscount => throw _privateConstructorUsedError;
  @override
  int get totalItemAmount => throw _privateConstructorUsedError;
  @override
  int get totalItemCost => throw _privateConstructorUsedError;
  @override
  int get totalItemDiscount => throw _privateConstructorUsedError;
  @override
  int get totalService => throw _privateConstructorUsedError;
  @override
  int get totalTax => throw _privateConstructorUsedError;
  @override
  int get voucherAmount => throw _privateConstructorUsedError;
  @override
  int get totalPayment => throw _privateConstructorUsedError;
  @override
  String get salesType => throw _privateConstructorUsedError;
  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  int get itemWeight => throw _privateConstructorUsedError;
  @override
  bool get isUseVoucher => throw _privateConstructorUsedError;
  @override
  List<dynamic> get promos => throw _privateConstructorUsedError;
  @override
  List<dynamic> get paymentList => throw _privateConstructorUsedError;
  @override
  List<TaxesAndService> get taxesAndServices =>
      throw _privateConstructorUsedError;
  @override
  int get itemTotalAmount => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  Delivery? get gosend => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  int? get originalDeliveryAmount => throw _privateConstructorUsedError;
  @override
  DateTime get deviceTimestamp => throw _privateConstructorUsedError;
  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  List<Payment> get payments => throw _privateConstructorUsedError;
  @override
  Outlet get outlet => throw _privateConstructorUsedError;
  @override
  String get orderId => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  DeliveryDetail get deliveryDetail => throw _privateConstructorUsedError;
  @override
  BillingDetail get billingDetail => throw _privateConstructorUsedError;
  @override
  Delivery get delivery => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderPendingCopyWith<_OrderPending> get copyWith =>
      throw _privateConstructorUsedError;
}

BillingDetail _$BillingDetailFromJson(Map<String, dynamic> json) {
  return _BillingDetail.fromJson(json);
}

/// @nodoc
class _$BillingDetailTearOff {
  const _$BillingDetailTearOff();

  _BillingDetail call(
      {@JsonKey(defaultValue: '', includeIfNull: true) required String orderId,
      @JsonKey(defaultValue: '', includeIfNull: true) required String title,
      @JsonKey(defaultValue: '', includeIfNull: true) required String vaNumber,
      @JsonKey(defaultValue: '', includeIfNull: true) required dynamic amount,
      @JsonKey(defaultValue: '', includeIfNull: true) required String fee,
      @JsonKey(defaultValue: '', includeIfNull: true) required String finalAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) required String serviceProvider,
      @JsonKey(defaultValue: '', includeIfNull: true) required String bankAccName,
      @JsonKey(defaultValue: '', includeIfNull: true) required String bankName,
      @JsonKey(defaultValue: '', includeIfNull: true) required String formattedUniqueAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) required String bankAccNo,
      @JsonKey(defaultValue: '', includeIfNull: true) required String uniqueAmount,
      @JsonKey(includeIfNull: true) required DateTime? transactionDate,
      @JsonKey(includeIfNull: true) required DateTime? formattedTransactionDate,
      required int expires,
      required DateTime expiresAt,
      required bool isCredit,
      required bool isDeeplink,
      required bool isWebView,
      required bool isSingleBilling}) {
    return _BillingDetail(
      orderId: orderId,
      title: title,
      vaNumber: vaNumber,
      amount: amount,
      fee: fee,
      finalAmount: finalAmount,
      serviceProvider: serviceProvider,
      bankAccName: bankAccName,
      bankName: bankName,
      formattedUniqueAmount: formattedUniqueAmount,
      bankAccNo: bankAccNo,
      uniqueAmount: uniqueAmount,
      transactionDate: transactionDate,
      formattedTransactionDate: formattedTransactionDate,
      expires: expires,
      expiresAt: expiresAt,
      isCredit: isCredit,
      isDeeplink: isDeeplink,
      isWebView: isWebView,
      isSingleBilling: isSingleBilling,
    );
  }

  BillingDetail fromJson(Map<String, Object> json) {
    return BillingDetail.fromJson(json);
  }
}

/// @nodoc
const $BillingDetail = _$BillingDetailTearOff();

/// @nodoc
mixin _$BillingDetail {
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get vaNumber => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  dynamic get amount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get fee => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get finalAmount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get serviceProvider => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get bankAccName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get bankName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get formattedUniqueAmount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get bankAccNo => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get uniqueAmount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  DateTime? get transactionDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  DateTime? get formattedTransactionDate => throw _privateConstructorUsedError;
  int get expires => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  bool get isCredit => throw _privateConstructorUsedError;
  bool get isDeeplink => throw _privateConstructorUsedError;
  bool get isWebView => throw _privateConstructorUsedError;
  bool get isSingleBilling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingDetailCopyWith<BillingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingDetailCopyWith<$Res> {
  factory $BillingDetailCopyWith(
          BillingDetail value, $Res Function(BillingDetail) then) =
      _$BillingDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: '', includeIfNull: true) String orderId,
      @JsonKey(defaultValue: '', includeIfNull: true) String title,
      @JsonKey(defaultValue: '', includeIfNull: true) String vaNumber,
      @JsonKey(defaultValue: '', includeIfNull: true) dynamic amount,
      @JsonKey(defaultValue: '', includeIfNull: true) String fee,
      @JsonKey(defaultValue: '', includeIfNull: true) String finalAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) String serviceProvider,
      @JsonKey(defaultValue: '', includeIfNull: true) String bankAccName,
      @JsonKey(defaultValue: '', includeIfNull: true) String bankName,
      @JsonKey(defaultValue: '', includeIfNull: true) String formattedUniqueAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) String bankAccNo,
      @JsonKey(defaultValue: '', includeIfNull: true) String uniqueAmount,
      @JsonKey(includeIfNull: true) DateTime? transactionDate,
      @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
      int expires,
      DateTime expiresAt,
      bool isCredit,
      bool isDeeplink,
      bool isWebView,
      bool isSingleBilling});
}

/// @nodoc
class _$BillingDetailCopyWithImpl<$Res>
    implements $BillingDetailCopyWith<$Res> {
  _$BillingDetailCopyWithImpl(this._value, this._then);

  final BillingDetail _value;
  // ignore: unused_field
  final $Res Function(BillingDetail) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? title = freezed,
    Object? vaNumber = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
    Object? finalAmount = freezed,
    Object? serviceProvider = freezed,
    Object? bankAccName = freezed,
    Object? bankName = freezed,
    Object? formattedUniqueAmount = freezed,
    Object? bankAccNo = freezed,
    Object? uniqueAmount = freezed,
    Object? transactionDate = freezed,
    Object? formattedTransactionDate = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
    Object? isCredit = freezed,
    Object? isDeeplink = freezed,
    Object? isWebView = freezed,
    Object? isSingleBilling = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      serviceProvider: serviceProvider == freezed
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccName: bankAccName == freezed
          ? _value.bankAccName
          : bankAccName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      formattedUniqueAmount: formattedUniqueAmount == freezed
          ? _value.formattedUniqueAmount
          : formattedUniqueAmount // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccNo: bankAccNo == freezed
          ? _value.bankAccNo
          : bankAccNo // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueAmount: uniqueAmount == freezed
          ? _value.uniqueAmount
          : uniqueAmount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      formattedTransactionDate: formattedTransactionDate == freezed
          ? _value.formattedTransactionDate
          : formattedTransactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCredit: isCredit == freezed
          ? _value.isCredit
          : isCredit // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeeplink: isDeeplink == freezed
          ? _value.isDeeplink
          : isDeeplink // ignore: cast_nullable_to_non_nullable
              as bool,
      isWebView: isWebView == freezed
          ? _value.isWebView
          : isWebView // ignore: cast_nullable_to_non_nullable
              as bool,
      isSingleBilling: isSingleBilling == freezed
          ? _value.isSingleBilling
          : isSingleBilling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BillingDetailCopyWith<$Res>
    implements $BillingDetailCopyWith<$Res> {
  factory _$BillingDetailCopyWith(
          _BillingDetail value, $Res Function(_BillingDetail) then) =
      __$BillingDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: '', includeIfNull: true) String orderId,
      @JsonKey(defaultValue: '', includeIfNull: true) String title,
      @JsonKey(defaultValue: '', includeIfNull: true) String vaNumber,
      @JsonKey(defaultValue: '', includeIfNull: true) dynamic amount,
      @JsonKey(defaultValue: '', includeIfNull: true) String fee,
      @JsonKey(defaultValue: '', includeIfNull: true) String finalAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) String serviceProvider,
      @JsonKey(defaultValue: '', includeIfNull: true) String bankAccName,
      @JsonKey(defaultValue: '', includeIfNull: true) String bankName,
      @JsonKey(defaultValue: '', includeIfNull: true) String formattedUniqueAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) String bankAccNo,
      @JsonKey(defaultValue: '', includeIfNull: true) String uniqueAmount,
      @JsonKey(includeIfNull: true) DateTime? transactionDate,
      @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
      int expires,
      DateTime expiresAt,
      bool isCredit,
      bool isDeeplink,
      bool isWebView,
      bool isSingleBilling});
}

/// @nodoc
class __$BillingDetailCopyWithImpl<$Res>
    extends _$BillingDetailCopyWithImpl<$Res>
    implements _$BillingDetailCopyWith<$Res> {
  __$BillingDetailCopyWithImpl(
      _BillingDetail _value, $Res Function(_BillingDetail) _then)
      : super(_value, (v) => _then(v as _BillingDetail));

  @override
  _BillingDetail get _value => super._value as _BillingDetail;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? title = freezed,
    Object? vaNumber = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
    Object? finalAmount = freezed,
    Object? serviceProvider = freezed,
    Object? bankAccName = freezed,
    Object? bankName = freezed,
    Object? formattedUniqueAmount = freezed,
    Object? bankAccNo = freezed,
    Object? uniqueAmount = freezed,
    Object? transactionDate = freezed,
    Object? formattedTransactionDate = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
    Object? isCredit = freezed,
    Object? isDeeplink = freezed,
    Object? isWebView = freezed,
    Object? isSingleBilling = freezed,
  }) {
    return _then(_BillingDetail(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      serviceProvider: serviceProvider == freezed
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccName: bankAccName == freezed
          ? _value.bankAccName
          : bankAccName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      formattedUniqueAmount: formattedUniqueAmount == freezed
          ? _value.formattedUniqueAmount
          : formattedUniqueAmount // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccNo: bankAccNo == freezed
          ? _value.bankAccNo
          : bankAccNo // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueAmount: uniqueAmount == freezed
          ? _value.uniqueAmount
          : uniqueAmount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      formattedTransactionDate: formattedTransactionDate == freezed
          ? _value.formattedTransactionDate
          : formattedTransactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCredit: isCredit == freezed
          ? _value.isCredit
          : isCredit // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeeplink: isDeeplink == freezed
          ? _value.isDeeplink
          : isDeeplink // ignore: cast_nullable_to_non_nullable
              as bool,
      isWebView: isWebView == freezed
          ? _value.isWebView
          : isWebView // ignore: cast_nullable_to_non_nullable
              as bool,
      isSingleBilling: isSingleBilling == freezed
          ? _value.isSingleBilling
          : isSingleBilling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillingDetail implements _BillingDetail {
  const _$_BillingDetail(
      {@JsonKey(defaultValue: '', includeIfNull: true) required this.orderId,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.title,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.vaNumber,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.amount,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.fee,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.finalAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.serviceProvider,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.bankAccName,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.bankName,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.formattedUniqueAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.bankAccNo,
      @JsonKey(defaultValue: '', includeIfNull: true) required this.uniqueAmount,
      @JsonKey(includeIfNull: true) required this.transactionDate,
      @JsonKey(includeIfNull: true) required this.formattedTransactionDate,
      required this.expires,
      required this.expiresAt,
      required this.isCredit,
      required this.isDeeplink,
      required this.isWebView,
      required this.isSingleBilling});

  factory _$_BillingDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_BillingDetailFromJson(json);

  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String orderId;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String title;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String vaNumber;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final dynamic amount;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String fee;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String finalAmount;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String serviceProvider;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String bankAccName;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String bankName;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String formattedUniqueAmount;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String bankAccNo;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String uniqueAmount;
  @override
  @JsonKey(includeIfNull: true)
  final DateTime? transactionDate;
  @override
  @JsonKey(includeIfNull: true)
  final DateTime? formattedTransactionDate;
  @override
  final int expires;
  @override
  final DateTime expiresAt;
  @override
  final bool isCredit;
  @override
  final bool isDeeplink;
  @override
  final bool isWebView;
  @override
  final bool isSingleBilling;

  @override
  String toString() {
    return 'BillingDetail(orderId: $orderId, title: $title, vaNumber: $vaNumber, amount: $amount, fee: $fee, finalAmount: $finalAmount, serviceProvider: $serviceProvider, bankAccName: $bankAccName, bankName: $bankName, formattedUniqueAmount: $formattedUniqueAmount, bankAccNo: $bankAccNo, uniqueAmount: $uniqueAmount, transactionDate: $transactionDate, formattedTransactionDate: $formattedTransactionDate, expires: $expires, expiresAt: $expiresAt, isCredit: $isCredit, isDeeplink: $isDeeplink, isWebView: $isWebView, isSingleBilling: $isSingleBilling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BillingDetail &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.vaNumber, vaNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vaNumber, vaNumber)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.finalAmount, finalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.finalAmount, finalAmount)) &&
            (identical(other.serviceProvider, serviceProvider) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProvider, serviceProvider)) &&
            (identical(other.bankAccName, bankAccName) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccName, bankAccName)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.formattedUniqueAmount, formattedUniqueAmount) ||
                const DeepCollectionEquality().equals(
                    other.formattedUniqueAmount, formattedUniqueAmount)) &&
            (identical(other.bankAccNo, bankAccNo) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccNo, bankAccNo)) &&
            (identical(other.uniqueAmount, uniqueAmount) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueAmount, uniqueAmount)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(
                    other.formattedTransactionDate, formattedTransactionDate) ||
                const DeepCollectionEquality().equals(
                    other.formattedTransactionDate,
                    formattedTransactionDate)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality()
                    .equals(other.expires, expires)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)) &&
            (identical(other.isCredit, isCredit) ||
                const DeepCollectionEquality()
                    .equals(other.isCredit, isCredit)) &&
            (identical(other.isDeeplink, isDeeplink) ||
                const DeepCollectionEquality()
                    .equals(other.isDeeplink, isDeeplink)) &&
            (identical(other.isWebView, isWebView) ||
                const DeepCollectionEquality()
                    .equals(other.isWebView, isWebView)) &&
            (identical(other.isSingleBilling, isSingleBilling) ||
                const DeepCollectionEquality()
                    .equals(other.isSingleBilling, isSingleBilling)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(vaNumber) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(finalAmount) ^
      const DeepCollectionEquality().hash(serviceProvider) ^
      const DeepCollectionEquality().hash(bankAccName) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(formattedUniqueAmount) ^
      const DeepCollectionEquality().hash(bankAccNo) ^
      const DeepCollectionEquality().hash(uniqueAmount) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(formattedTransactionDate) ^
      const DeepCollectionEquality().hash(expires) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(isCredit) ^
      const DeepCollectionEquality().hash(isDeeplink) ^
      const DeepCollectionEquality().hash(isWebView) ^
      const DeepCollectionEquality().hash(isSingleBilling);

  @JsonKey(ignore: true)
  @override
  _$BillingDetailCopyWith<_BillingDetail> get copyWith =>
      __$BillingDetailCopyWithImpl<_BillingDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BillingDetailToJson(this);
  }
}

abstract class _BillingDetail implements BillingDetail {
  const factory _BillingDetail(
      {@JsonKey(defaultValue: '', includeIfNull: true) required String orderId,
      @JsonKey(defaultValue: '', includeIfNull: true) required String title,
      @JsonKey(defaultValue: '', includeIfNull: true) required String vaNumber,
      @JsonKey(defaultValue: '', includeIfNull: true) required dynamic amount,
      @JsonKey(defaultValue: '', includeIfNull: true) required String fee,
      @JsonKey(defaultValue: '', includeIfNull: true) required String finalAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) required String serviceProvider,
      @JsonKey(defaultValue: '', includeIfNull: true) required String bankAccName,
      @JsonKey(defaultValue: '', includeIfNull: true) required String bankName,
      @JsonKey(defaultValue: '', includeIfNull: true) required String formattedUniqueAmount,
      @JsonKey(defaultValue: '', includeIfNull: true) required String bankAccNo,
      @JsonKey(defaultValue: '', includeIfNull: true) required String uniqueAmount,
      @JsonKey(includeIfNull: true) required DateTime? transactionDate,
      @JsonKey(includeIfNull: true) required DateTime? formattedTransactionDate,
      required int expires,
      required DateTime expiresAt,
      required bool isCredit,
      required bool isDeeplink,
      required bool isWebView,
      required bool isSingleBilling}) = _$_BillingDetail;

  factory _BillingDetail.fromJson(Map<String, dynamic> json) =
      _$_BillingDetail.fromJson;

  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get vaNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  dynamic get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get fee => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get finalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get serviceProvider => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get bankAccName => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get bankName => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get formattedUniqueAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get bankAccNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', includeIfNull: true)
  String get uniqueAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  DateTime? get transactionDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  DateTime? get formattedTransactionDate => throw _privateConstructorUsedError;
  @override
  int get expires => throw _privateConstructorUsedError;
  @override
  DateTime get expiresAt => throw _privateConstructorUsedError;
  @override
  bool get isCredit => throw _privateConstructorUsedError;
  @override
  bool get isDeeplink => throw _privateConstructorUsedError;
  @override
  bool get isWebView => throw _privateConstructorUsedError;
  @override
  bool get isSingleBilling => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BillingDetailCopyWith<_BillingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
class _$DeliveryTearOff {
  const _$DeliveryTearOff();

  _Delivery call(
      {required String provider,
      required int price,
      required String address,
      required String shipmentMethod,
      required List<dynamic> location}) {
    return _Delivery(
      provider: provider,
      price: price,
      address: address,
      shipmentMethod: shipmentMethod,
      location: location,
    );
  }

  Delivery fromJson(Map<String, Object> json) {
    return Delivery.fromJson(json);
  }
}

/// @nodoc
const $Delivery = _$DeliveryTearOff();

/// @nodoc
mixin _$Delivery {
  String get provider => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get shipmentMethod => throw _privateConstructorUsedError;
  List<dynamic> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res>;
  $Res call(
      {String provider,
      int price,
      String address,
      String shipmentMethod,
      List<dynamic> location});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res> implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  final Delivery _value;
  // ignore: unused_field
  final $Res Function(Delivery) _then;

  @override
  $Res call({
    Object? provider = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? shipmentMethod = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$DeliveryCopyWith(_Delivery value, $Res Function(_Delivery) then) =
      __$DeliveryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String provider,
      int price,
      String address,
      String shipmentMethod,
      List<dynamic> location});
}

/// @nodoc
class __$DeliveryCopyWithImpl<$Res> extends _$DeliveryCopyWithImpl<$Res>
    implements _$DeliveryCopyWith<$Res> {
  __$DeliveryCopyWithImpl(_Delivery _value, $Res Function(_Delivery) _then)
      : super(_value, (v) => _then(v as _Delivery));

  @override
  _Delivery get _value => super._value as _Delivery;

  @override
  $Res call({
    Object? provider = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? shipmentMethod = freezed,
    Object? location = freezed,
  }) {
    return _then(_Delivery(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Delivery implements _Delivery {
  const _$_Delivery(
      {required this.provider,
      required this.price,
      required this.address,
      required this.shipmentMethod,
      required this.location});

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryFromJson(json);

  @override
  final String provider;
  @override
  final int price;
  @override
  final String address;
  @override
  final String shipmentMethod;
  @override
  final List<dynamic> location;

  @override
  String toString() {
    return 'Delivery(provider: $provider, price: $price, address: $address, shipmentMethod: $shipmentMethod, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delivery &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.shipmentMethod, shipmentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.shipmentMethod, shipmentMethod)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(shipmentMethod) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$DeliveryCopyWith<_Delivery> get copyWith =>
      __$DeliveryCopyWithImpl<_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryToJson(this);
  }
}

abstract class _Delivery implements Delivery {
  const factory _Delivery(
      {required String provider,
      required int price,
      required String address,
      required String shipmentMethod,
      required List<dynamic> location}) = _$_Delivery;

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  String get provider => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get shipmentMethod => throw _privateConstructorUsedError;
  @override
  List<dynamic> get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryCopyWith<_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryDetail _$DeliveryDetailFromJson(Map<String, dynamic> json) {
  return _DeliveryDetail.fromJson(json);
}

/// @nodoc
class _$DeliveryDetailTearOff {
  const _$DeliveryDetailTearOff();

  _DeliveryDetail call(
      {required String orderId,
      required String distance,
      required String provider,
      required String shipmentMethod,
      required dynamic fee,
      required String bookingCode,
      required String bookingExpired,
      required String deliveryId,
      required bool isDelivered,
      required DeliverFrom from,
      required DeliverTo to,
      required List<dynamic> status,
      required bool isDelete,
      required DateTime createdDate,
      required String ownerPhone}) {
    return _DeliveryDetail(
      orderId: orderId,
      distance: distance,
      provider: provider,
      shipmentMethod: shipmentMethod,
      fee: fee,
      bookingCode: bookingCode,
      bookingExpired: bookingExpired,
      deliveryId: deliveryId,
      isDelivered: isDelivered,
      from: from,
      to: to,
      status: status,
      isDelete: isDelete,
      createdDate: createdDate,
      ownerPhone: ownerPhone,
    );
  }

  DeliveryDetail fromJson(Map<String, Object> json) {
    return DeliveryDetail.fromJson(json);
  }
}

/// @nodoc
const $DeliveryDetail = _$DeliveryDetailTearOff();

/// @nodoc
mixin _$DeliveryDetail {
  String get orderId => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get shipmentMethod => throw _privateConstructorUsedError;
  dynamic get fee => throw _privateConstructorUsedError;
  String get bookingCode => throw _privateConstructorUsedError;
  String get bookingExpired => throw _privateConstructorUsedError;
  String get deliveryId => throw _privateConstructorUsedError;
  bool get isDelivered => throw _privateConstructorUsedError;
  DeliverFrom get from => throw _privateConstructorUsedError;
  DeliverTo get to => throw _privateConstructorUsedError;
  List<dynamic> get status => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get ownerPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDetailCopyWith<DeliveryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDetailCopyWith<$Res> {
  factory $DeliveryDetailCopyWith(
          DeliveryDetail value, $Res Function(DeliveryDetail) then) =
      _$DeliveryDetailCopyWithImpl<$Res>;
  $Res call(
      {String orderId,
      String distance,
      String provider,
      String shipmentMethod,
      dynamic fee,
      String bookingCode,
      String bookingExpired,
      String deliveryId,
      bool isDelivered,
      DeliverFrom from,
      DeliverTo to,
      List<dynamic> status,
      bool isDelete,
      DateTime createdDate,
      String ownerPhone});

  $DeliverFromCopyWith<$Res> get from;
  $DeliverToCopyWith<$Res> get to;
}

/// @nodoc
class _$DeliveryDetailCopyWithImpl<$Res>
    implements $DeliveryDetailCopyWith<$Res> {
  _$DeliveryDetailCopyWithImpl(this._value, this._then);

  final DeliveryDetail _value;
  // ignore: unused_field
  final $Res Function(DeliveryDetail) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? distance = freezed,
    Object? provider = freezed,
    Object? shipmentMethod = freezed,
    Object? fee = freezed,
    Object? bookingCode = freezed,
    Object? bookingExpired = freezed,
    Object? deliveryId = freezed,
    Object? isDelivered = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
    Object? ownerPhone = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingCode: bookingCode == freezed
          ? _value.bookingCode
          : bookingCode // ignore: cast_nullable_to_non_nullable
              as String,
      bookingExpired: bookingExpired == freezed
          ? _value.bookingExpired
          : bookingExpired // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      isDelivered: isDelivered == freezed
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DeliverFrom,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DeliverTo,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DeliverFromCopyWith<$Res> get from {
    return $DeliverFromCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $DeliverToCopyWith<$Res> get to {
    return $DeliverToCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryDetailCopyWith<$Res>
    implements $DeliveryDetailCopyWith<$Res> {
  factory _$DeliveryDetailCopyWith(
          _DeliveryDetail value, $Res Function(_DeliveryDetail) then) =
      __$DeliveryDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String orderId,
      String distance,
      String provider,
      String shipmentMethod,
      dynamic fee,
      String bookingCode,
      String bookingExpired,
      String deliveryId,
      bool isDelivered,
      DeliverFrom from,
      DeliverTo to,
      List<dynamic> status,
      bool isDelete,
      DateTime createdDate,
      String ownerPhone});

  @override
  $DeliverFromCopyWith<$Res> get from;
  @override
  $DeliverToCopyWith<$Res> get to;
}

/// @nodoc
class __$DeliveryDetailCopyWithImpl<$Res>
    extends _$DeliveryDetailCopyWithImpl<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  __$DeliveryDetailCopyWithImpl(
      _DeliveryDetail _value, $Res Function(_DeliveryDetail) _then)
      : super(_value, (v) => _then(v as _DeliveryDetail));

  @override
  _DeliveryDetail get _value => super._value as _DeliveryDetail;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? distance = freezed,
    Object? provider = freezed,
    Object? shipmentMethod = freezed,
    Object? fee = freezed,
    Object? bookingCode = freezed,
    Object? bookingExpired = freezed,
    Object? deliveryId = freezed,
    Object? isDelivered = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
    Object? ownerPhone = freezed,
  }) {
    return _then(_DeliveryDetail(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingCode: bookingCode == freezed
          ? _value.bookingCode
          : bookingCode // ignore: cast_nullable_to_non_nullable
              as String,
      bookingExpired: bookingExpired == freezed
          ? _value.bookingExpired
          : bookingExpired // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      isDelivered: isDelivered == freezed
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DeliverFrom,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DeliverTo,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryDetail implements _DeliveryDetail {
  const _$_DeliveryDetail(
      {required this.orderId,
      required this.distance,
      required this.provider,
      required this.shipmentMethod,
      required this.fee,
      required this.bookingCode,
      required this.bookingExpired,
      required this.deliveryId,
      required this.isDelivered,
      required this.from,
      required this.to,
      required this.status,
      required this.isDelete,
      required this.createdDate,
      required this.ownerPhone});

  factory _$_DeliveryDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryDetailFromJson(json);

  @override
  final String orderId;
  @override
  final String distance;
  @override
  final String provider;
  @override
  final String shipmentMethod;
  @override
  final dynamic fee;
  @override
  final String bookingCode;
  @override
  final String bookingExpired;
  @override
  final String deliveryId;
  @override
  final bool isDelivered;
  @override
  final DeliverFrom from;
  @override
  final DeliverTo to;
  @override
  final List<dynamic> status;
  @override
  final bool isDelete;
  @override
  final DateTime createdDate;
  @override
  final String ownerPhone;

  @override
  String toString() {
    return 'DeliveryDetail(orderId: $orderId, distance: $distance, provider: $provider, shipmentMethod: $shipmentMethod, fee: $fee, bookingCode: $bookingCode, bookingExpired: $bookingExpired, deliveryId: $deliveryId, isDelivered: $isDelivered, from: $from, to: $to, status: $status, isDelete: $isDelete, createdDate: $createdDate, ownerPhone: $ownerPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryDetail &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.shipmentMethod, shipmentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.shipmentMethod, shipmentMethod)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.bookingCode, bookingCode) ||
                const DeepCollectionEquality()
                    .equals(other.bookingCode, bookingCode)) &&
            (identical(other.bookingExpired, bookingExpired) ||
                const DeepCollectionEquality()
                    .equals(other.bookingExpired, bookingExpired)) &&
            (identical(other.deliveryId, deliveryId) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryId, deliveryId)) &&
            (identical(other.isDelivered, isDelivered) ||
                const DeepCollectionEquality()
                    .equals(other.isDelivered, isDelivered)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isDelete, isDelete) ||
                const DeepCollectionEquality()
                    .equals(other.isDelete, isDelete)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.ownerPhone, ownerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.ownerPhone, ownerPhone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(shipmentMethod) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(bookingCode) ^
      const DeepCollectionEquality().hash(bookingExpired) ^
      const DeepCollectionEquality().hash(deliveryId) ^
      const DeepCollectionEquality().hash(isDelivered) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isDelete) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(ownerPhone);

  @JsonKey(ignore: true)
  @override
  _$DeliveryDetailCopyWith<_DeliveryDetail> get copyWith =>
      __$DeliveryDetailCopyWithImpl<_DeliveryDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryDetailToJson(this);
  }
}

abstract class _DeliveryDetail implements DeliveryDetail {
  const factory _DeliveryDetail(
      {required String orderId,
      required String distance,
      required String provider,
      required String shipmentMethod,
      required dynamic fee,
      required String bookingCode,
      required String bookingExpired,
      required String deliveryId,
      required bool isDelivered,
      required DeliverFrom from,
      required DeliverTo to,
      required List<dynamic> status,
      required bool isDelete,
      required DateTime createdDate,
      required String ownerPhone}) = _$_DeliveryDetail;

  factory _DeliveryDetail.fromJson(Map<String, dynamic> json) =
      _$_DeliveryDetail.fromJson;

  @override
  String get orderId => throw _privateConstructorUsedError;
  @override
  String get distance => throw _privateConstructorUsedError;
  @override
  String get provider => throw _privateConstructorUsedError;
  @override
  String get shipmentMethod => throw _privateConstructorUsedError;
  @override
  dynamic get fee => throw _privateConstructorUsedError;
  @override
  String get bookingCode => throw _privateConstructorUsedError;
  @override
  String get bookingExpired => throw _privateConstructorUsedError;
  @override
  String get deliveryId => throw _privateConstructorUsedError;
  @override
  bool get isDelivered => throw _privateConstructorUsedError;
  @override
  DeliverFrom get from => throw _privateConstructorUsedError;
  @override
  DeliverTo get to => throw _privateConstructorUsedError;
  @override
  List<dynamic> get status => throw _privateConstructorUsedError;
  @override
  bool get isDelete => throw _privateConstructorUsedError;
  @override
  DateTime get createdDate => throw _privateConstructorUsedError;
  @override
  String get ownerPhone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryDetailCopyWith<_DeliveryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliverFrom _$DeliverFromFromJson(Map<String, dynamic> json) {
  return _DeliverFrom.fromJson(json);
}

/// @nodoc
class _$DeliverFromTearOff {
  const _$DeliverFromTearOff();

  _DeliverFrom call(
      {required List<dynamic> location,
      required String name,
      required String address,
      required String phone}) {
    return _DeliverFrom(
      location: location,
      name: name,
      address: address,
      phone: phone,
    );
  }

  DeliverFrom fromJson(Map<String, Object> json) {
    return DeliverFrom.fromJson(json);
  }
}

/// @nodoc
const $DeliverFrom = _$DeliverFromTearOff();

/// @nodoc
mixin _$DeliverFrom {
  List<dynamic> get location => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliverFromCopyWith<DeliverFrom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverFromCopyWith<$Res> {
  factory $DeliverFromCopyWith(
          DeliverFrom value, $Res Function(DeliverFrom) then) =
      _$DeliverFromCopyWithImpl<$Res>;
  $Res call(
      {List<dynamic> location, String name, String address, String phone});
}

/// @nodoc
class _$DeliverFromCopyWithImpl<$Res> implements $DeliverFromCopyWith<$Res> {
  _$DeliverFromCopyWithImpl(this._value, this._then);

  final DeliverFrom _value;
  // ignore: unused_field
  final $Res Function(DeliverFrom) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeliverFromCopyWith<$Res>
    implements $DeliverFromCopyWith<$Res> {
  factory _$DeliverFromCopyWith(
          _DeliverFrom value, $Res Function(_DeliverFrom) then) =
      __$DeliverFromCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic> location, String name, String address, String phone});
}

/// @nodoc
class __$DeliverFromCopyWithImpl<$Res> extends _$DeliverFromCopyWithImpl<$Res>
    implements _$DeliverFromCopyWith<$Res> {
  __$DeliverFromCopyWithImpl(
      _DeliverFrom _value, $Res Function(_DeliverFrom) _then)
      : super(_value, (v) => _then(v as _DeliverFrom));

  @override
  _DeliverFrom get _value => super._value as _DeliverFrom;

  @override
  $Res call({
    Object? location = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_DeliverFrom(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliverFrom implements _DeliverFrom {
  const _$_DeliverFrom(
      {required this.location,
      required this.name,
      required this.address,
      required this.phone});

  factory _$_DeliverFrom.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliverFromFromJson(json);

  @override
  final List<dynamic> location;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;

  @override
  String toString() {
    return 'DeliverFrom(location: $location, name: $name, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliverFrom &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$DeliverFromCopyWith<_DeliverFrom> get copyWith =>
      __$DeliverFromCopyWithImpl<_DeliverFrom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliverFromToJson(this);
  }
}

abstract class _DeliverFrom implements DeliverFrom {
  const factory _DeliverFrom(
      {required List<dynamic> location,
      required String name,
      required String address,
      required String phone}) = _$_DeliverFrom;

  factory _DeliverFrom.fromJson(Map<String, dynamic> json) =
      _$_DeliverFrom.fromJson;

  @override
  List<dynamic> get location => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliverFromCopyWith<_DeliverFrom> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliverTo _$DeliverToFromJson(Map<String, dynamic> json) {
  return _DeliverTo.fromJson(json);
}

/// @nodoc
class _$DeliverToTearOff {
  const _$DeliverToTearOff();

  _DeliverTo call(
      {required List<dynamic> location,
      required String name,
      required String address,
      required String phone}) {
    return _DeliverTo(
      location: location,
      name: name,
      address: address,
      phone: phone,
    );
  }

  DeliverTo fromJson(Map<String, Object> json) {
    return DeliverTo.fromJson(json);
  }
}

/// @nodoc
const $DeliverTo = _$DeliverToTearOff();

/// @nodoc
mixin _$DeliverTo {
  List<dynamic> get location => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliverToCopyWith<DeliverTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverToCopyWith<$Res> {
  factory $DeliverToCopyWith(DeliverTo value, $Res Function(DeliverTo) then) =
      _$DeliverToCopyWithImpl<$Res>;
  $Res call(
      {List<dynamic> location, String name, String address, String phone});
}

/// @nodoc
class _$DeliverToCopyWithImpl<$Res> implements $DeliverToCopyWith<$Res> {
  _$DeliverToCopyWithImpl(this._value, this._then);

  final DeliverTo _value;
  // ignore: unused_field
  final $Res Function(DeliverTo) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeliverToCopyWith<$Res> implements $DeliverToCopyWith<$Res> {
  factory _$DeliverToCopyWith(
          _DeliverTo value, $Res Function(_DeliverTo) then) =
      __$DeliverToCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic> location, String name, String address, String phone});
}

/// @nodoc
class __$DeliverToCopyWithImpl<$Res> extends _$DeliverToCopyWithImpl<$Res>
    implements _$DeliverToCopyWith<$Res> {
  __$DeliverToCopyWithImpl(_DeliverTo _value, $Res Function(_DeliverTo) _then)
      : super(_value, (v) => _then(v as _DeliverTo));

  @override
  _DeliverTo get _value => super._value as _DeliverTo;

  @override
  $Res call({
    Object? location = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_DeliverTo(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliverTo implements _DeliverTo {
  const _$_DeliverTo(
      {required this.location,
      required this.name,
      required this.address,
      required this.phone});

  factory _$_DeliverTo.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliverToFromJson(json);

  @override
  final List<dynamic> location;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;

  @override
  String toString() {
    return 'DeliverTo(location: $location, name: $name, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliverTo &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$DeliverToCopyWith<_DeliverTo> get copyWith =>
      __$DeliverToCopyWithImpl<_DeliverTo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliverToToJson(this);
  }
}

abstract class _DeliverTo implements DeliverTo {
  const factory _DeliverTo(
      {required List<dynamic> location,
      required String name,
      required String address,
      required String phone}) = _$_DeliverTo;

  factory _DeliverTo.fromJson(Map<String, dynamic> json) =
      _$_DeliverTo.fromJson;

  @override
  List<dynamic> get location => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliverToCopyWith<_DeliverTo> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required int productId,
      required String title,
      required int price,
      required String code,
      required int cost,
      required int qty,
      required int basicWeight,
      required int weight,
      required String category,
      required int categoryId,
      required String categoryCode,
      required String? sku,
      required String note,
      required bool isPreorder,
      required int preorderPeriod,
      required int amount,
      required List<dynamic> modifiers,
      required int modifiersAmount,
      required int modifiersCost,
      required int modifiersDiscount,
      required int singleModifiersAmount,
      required int subtotal,
      required int serviceAmount,
      required int taxAmount,
      required bool isStock}) {
    return _Item(
      productId: productId,
      title: title,
      price: price,
      code: code,
      cost: cost,
      qty: qty,
      basicWeight: basicWeight,
      weight: weight,
      category: category,
      categoryId: categoryId,
      categoryCode: categoryCode,
      sku: sku,
      note: note,
      isPreorder: isPreorder,
      preorderPeriod: preorderPeriod,
      amount: amount,
      modifiers: modifiers,
      modifiersAmount: modifiersAmount,
      modifiersCost: modifiersCost,
      modifiersDiscount: modifiersDiscount,
      singleModifiersAmount: singleModifiersAmount,
      subtotal: subtotal,
      serviceAmount: serviceAmount,
      taxAmount: taxAmount,
      isStock: isStock,
    );
  }

  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  int get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get basicWeight => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get isPreorder => throw _privateConstructorUsedError;
  int get preorderPeriod => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  List<dynamic> get modifiers => throw _privateConstructorUsedError;
  int get modifiersAmount => throw _privateConstructorUsedError;
  int get modifiersCost => throw _privateConstructorUsedError;
  int get modifiersDiscount => throw _privateConstructorUsedError;
  int get singleModifiersAmount => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;
  int get serviceAmount => throw _privateConstructorUsedError;
  int get taxAmount => throw _privateConstructorUsedError;
  bool get isStock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {int productId,
      String title,
      int price,
      String code,
      int cost,
      int qty,
      int basicWeight,
      int weight,
      String category,
      int categoryId,
      String categoryCode,
      String? sku,
      String note,
      bool isPreorder,
      int preorderPeriod,
      int amount,
      List<dynamic> modifiers,
      int modifiersAmount,
      int modifiersCost,
      int modifiersDiscount,
      int singleModifiersAmount,
      int subtotal,
      int serviceAmount,
      int taxAmount,
      bool isStock});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? code = freezed,
    Object? cost = freezed,
    Object? qty = freezed,
    Object? basicWeight = freezed,
    Object? weight = freezed,
    Object? category = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? sku = freezed,
    Object? note = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? amount = freezed,
    Object? modifiers = freezed,
    Object? modifiersAmount = freezed,
    Object? modifiersCost = freezed,
    Object? modifiersDiscount = freezed,
    Object? singleModifiersAmount = freezed,
    Object? subtotal = freezed,
    Object? serviceAmount = freezed,
    Object? taxAmount = freezed,
    Object? isStock = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      basicWeight: basicWeight == freezed
          ? _value.basicWeight
          : basicWeight // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      modifiersAmount: modifiersAmount == freezed
          ? _value.modifiersAmount
          : modifiersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      modifiersCost: modifiersCost == freezed
          ? _value.modifiersCost
          : modifiersCost // ignore: cast_nullable_to_non_nullable
              as int,
      modifiersDiscount: modifiersDiscount == freezed
          ? _value.modifiersDiscount
          : modifiersDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      singleModifiersAmount: singleModifiersAmount == freezed
          ? _value.singleModifiersAmount
          : singleModifiersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      serviceAmount: serviceAmount == freezed
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      taxAmount: taxAmount == freezed
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      isStock: isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int productId,
      String title,
      int price,
      String code,
      int cost,
      int qty,
      int basicWeight,
      int weight,
      String category,
      int categoryId,
      String categoryCode,
      String? sku,
      String note,
      bool isPreorder,
      int preorderPeriod,
      int amount,
      List<dynamic> modifiers,
      int modifiersAmount,
      int modifiersCost,
      int modifiersDiscount,
      int singleModifiersAmount,
      int subtotal,
      int serviceAmount,
      int taxAmount,
      bool isStock});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? productId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? code = freezed,
    Object? cost = freezed,
    Object? qty = freezed,
    Object? basicWeight = freezed,
    Object? weight = freezed,
    Object? category = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? sku = freezed,
    Object? note = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? amount = freezed,
    Object? modifiers = freezed,
    Object? modifiersAmount = freezed,
    Object? modifiersCost = freezed,
    Object? modifiersDiscount = freezed,
    Object? singleModifiersAmount = freezed,
    Object? subtotal = freezed,
    Object? serviceAmount = freezed,
    Object? taxAmount = freezed,
    Object? isStock = freezed,
  }) {
    return _then(_Item(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      basicWeight: basicWeight == freezed
          ? _value.basicWeight
          : basicWeight // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      modifiersAmount: modifiersAmount == freezed
          ? _value.modifiersAmount
          : modifiersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      modifiersCost: modifiersCost == freezed
          ? _value.modifiersCost
          : modifiersCost // ignore: cast_nullable_to_non_nullable
              as int,
      modifiersDiscount: modifiersDiscount == freezed
          ? _value.modifiersDiscount
          : modifiersDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      singleModifiersAmount: singleModifiersAmount == freezed
          ? _value.singleModifiersAmount
          : singleModifiersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      serviceAmount: serviceAmount == freezed
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      taxAmount: taxAmount == freezed
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      isStock: isStock == freezed
          ? _value.isStock
          : isStock // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {required this.productId,
      required this.title,
      required this.price,
      required this.code,
      required this.cost,
      required this.qty,
      required this.basicWeight,
      required this.weight,
      required this.category,
      required this.categoryId,
      required this.categoryCode,
      required this.sku,
      required this.note,
      required this.isPreorder,
      required this.preorderPeriod,
      required this.amount,
      required this.modifiers,
      required this.modifiersAmount,
      required this.modifiersCost,
      required this.modifiersDiscount,
      required this.singleModifiersAmount,
      required this.subtotal,
      required this.serviceAmount,
      required this.taxAmount,
      required this.isStock});

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final int productId;
  @override
  final String title;
  @override
  final int price;
  @override
  final String code;
  @override
  final int cost;
  @override
  final int qty;
  @override
  final int basicWeight;
  @override
  final int weight;
  @override
  final String category;
  @override
  final int categoryId;
  @override
  final String categoryCode;
  @override
  final String? sku;
  @override
  final String note;
  @override
  final bool isPreorder;
  @override
  final int preorderPeriod;
  @override
  final int amount;
  @override
  final List<dynamic> modifiers;
  @override
  final int modifiersAmount;
  @override
  final int modifiersCost;
  @override
  final int modifiersDiscount;
  @override
  final int singleModifiersAmount;
  @override
  final int subtotal;
  @override
  final int serviceAmount;
  @override
  final int taxAmount;
  @override
  final bool isStock;

  @override
  String toString() {
    return 'Item(productId: $productId, title: $title, price: $price, code: $code, cost: $cost, qty: $qty, basicWeight: $basicWeight, weight: $weight, category: $category, categoryId: $categoryId, categoryCode: $categoryCode, sku: $sku, note: $note, isPreorder: $isPreorder, preorderPeriod: $preorderPeriod, amount: $amount, modifiers: $modifiers, modifiersAmount: $modifiersAmount, modifiersCost: $modifiersCost, modifiersDiscount: $modifiersDiscount, singleModifiersAmount: $singleModifiersAmount, subtotal: $subtotal, serviceAmount: $serviceAmount, taxAmount: $taxAmount, isStock: $isStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.basicWeight, basicWeight) ||
                const DeepCollectionEquality()
                    .equals(other.basicWeight, basicWeight)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.isPreorder, isPreorder) ||
                const DeepCollectionEquality()
                    .equals(other.isPreorder, isPreorder)) &&
            (identical(other.preorderPeriod, preorderPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.preorderPeriod, preorderPeriod)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.modifiers, modifiers) ||
                const DeepCollectionEquality()
                    .equals(other.modifiers, modifiers)) &&
            (identical(other.modifiersAmount, modifiersAmount) ||
                const DeepCollectionEquality()
                    .equals(other.modifiersAmount, modifiersAmount)) &&
            (identical(other.modifiersCost, modifiersCost) ||
                const DeepCollectionEquality()
                    .equals(other.modifiersCost, modifiersCost)) &&
            (identical(other.modifiersDiscount, modifiersDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.modifiersDiscount, modifiersDiscount)) &&
            (identical(other.singleModifiersAmount, singleModifiersAmount) ||
                const DeepCollectionEquality().equals(
                    other.singleModifiersAmount, singleModifiersAmount)) &&
            (identical(other.subtotal, subtotal) ||
                const DeepCollectionEquality()
                    .equals(other.subtotal, subtotal)) &&
            (identical(other.serviceAmount, serviceAmount) ||
                const DeepCollectionEquality()
                    .equals(other.serviceAmount, serviceAmount)) &&
            (identical(other.taxAmount, taxAmount) ||
                const DeepCollectionEquality()
                    .equals(other.taxAmount, taxAmount)) &&
            (identical(other.isStock, isStock) ||
                const DeepCollectionEquality().equals(other.isStock, isStock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(basicWeight) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(isPreorder) ^
      const DeepCollectionEquality().hash(preorderPeriod) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(modifiers) ^
      const DeepCollectionEquality().hash(modifiersAmount) ^
      const DeepCollectionEquality().hash(modifiersCost) ^
      const DeepCollectionEquality().hash(modifiersDiscount) ^
      const DeepCollectionEquality().hash(singleModifiersAmount) ^
      const DeepCollectionEquality().hash(subtotal) ^
      const DeepCollectionEquality().hash(serviceAmount) ^
      const DeepCollectionEquality().hash(taxAmount) ^
      const DeepCollectionEquality().hash(isStock);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required int productId,
      required String title,
      required int price,
      required String code,
      required int cost,
      required int qty,
      required int basicWeight,
      required int weight,
      required String category,
      required int categoryId,
      required String categoryCode,
      required String? sku,
      required String note,
      required bool isPreorder,
      required int preorderPeriod,
      required int amount,
      required List<dynamic> modifiers,
      required int modifiersAmount,
      required int modifiersCost,
      required int modifiersDiscount,
      required int singleModifiersAmount,
      required int subtotal,
      required int serviceAmount,
      required int taxAmount,
      required bool isStock}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  int get productId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get cost => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  int get basicWeight => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  int get categoryId => throw _privateConstructorUsedError;
  @override
  String get categoryCode => throw _privateConstructorUsedError;
  @override
  String? get sku => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  bool get isPreorder => throw _privateConstructorUsedError;
  @override
  int get preorderPeriod => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  List<dynamic> get modifiers => throw _privateConstructorUsedError;
  @override
  int get modifiersAmount => throw _privateConstructorUsedError;
  @override
  int get modifiersCost => throw _privateConstructorUsedError;
  @override
  int get modifiersDiscount => throw _privateConstructorUsedError;
  @override
  int get singleModifiersAmount => throw _privateConstructorUsedError;
  @override
  int get subtotal => throw _privateConstructorUsedError;
  @override
  int get serviceAmount => throw _privateConstructorUsedError;
  @override
  int get taxAmount => throw _privateConstructorUsedError;
  @override
  bool get isStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}

Outlet _$OutletFromJson(Map<String, dynamic> json) {
  return _Outlet.fromJson(json);
}

/// @nodoc
class _$OutletTearOff {
  const _$OutletTearOff();

  _Outlet call(
      {required String name,
      required String outletId,
      required String merchantId,
      required String cashierId,
      required String deviceId,
      required String assignId,
      required Moka quinos,
      required bool isNonSku,
      required Moka moka,
      required OutletDetail detail,
      required bool isLive,
      required OrderMethod orderMethod,
      required bool isDelete,
      required DateTime createdDate}) {
    return _Outlet(
      name: name,
      outletId: outletId,
      merchantId: merchantId,
      cashierId: cashierId,
      deviceId: deviceId,
      assignId: assignId,
      quinos: quinos,
      isNonSku: isNonSku,
      moka: moka,
      detail: detail,
      isLive: isLive,
      orderMethod: orderMethod,
      isDelete: isDelete,
      createdDate: createdDate,
    );
  }

  Outlet fromJson(Map<String, Object> json) {
    return Outlet.fromJson(json);
  }
}

/// @nodoc
const $Outlet = _$OutletTearOff();

/// @nodoc
mixin _$Outlet {
  String get name => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get cashierId => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get assignId => throw _privateConstructorUsedError;
  Moka get quinos => throw _privateConstructorUsedError;
  bool get isNonSku => throw _privateConstructorUsedError;
  Moka get moka => throw _privateConstructorUsedError;
  OutletDetail get detail => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCopyWith<Outlet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCopyWith<$Res> {
  factory $OutletCopyWith(Outlet value, $Res Function(Outlet) then) =
      _$OutletCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String outletId,
      String merchantId,
      String cashierId,
      String deviceId,
      String assignId,
      Moka quinos,
      bool isNonSku,
      Moka moka,
      OutletDetail detail,
      bool isLive,
      OrderMethod orderMethod,
      bool isDelete,
      DateTime createdDate});

  $MokaCopyWith<$Res> get quinos;
  $MokaCopyWith<$Res> get moka;
  $OutletDetailCopyWith<$Res> get detail;
  $OrderMethodCopyWith<$Res> get orderMethod;
}

/// @nodoc
class _$OutletCopyWithImpl<$Res> implements $OutletCopyWith<$Res> {
  _$OutletCopyWithImpl(this._value, this._then);

  final Outlet _value;
  // ignore: unused_field
  final $Res Function(Outlet) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? outletId = freezed,
    Object? merchantId = freezed,
    Object? cashierId = freezed,
    Object? deviceId = freezed,
    Object? assignId = freezed,
    Object? quinos = freezed,
    Object? isNonSku = freezed,
    Object? moka = freezed,
    Object? detail = freezed,
    Object? isLive = freezed,
    Object? orderMethod = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      cashierId: cashierId == freezed
          ? _value.cashierId
          : cashierId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      assignId: assignId == freezed
          ? _value.assignId
          : assignId // ignore: cast_nullable_to_non_nullable
              as String,
      quinos: quinos == freezed
          ? _value.quinos
          : quinos // ignore: cast_nullable_to_non_nullable
              as Moka,
      isNonSku: isNonSku == freezed
          ? _value.isNonSku
          : isNonSku // ignore: cast_nullable_to_non_nullable
              as bool,
      moka: moka == freezed
          ? _value.moka
          : moka // ignore: cast_nullable_to_non_nullable
              as Moka,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as OutletDetail,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      orderMethod: orderMethod == freezed
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as OrderMethod,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $MokaCopyWith<$Res> get quinos {
    return $MokaCopyWith<$Res>(_value.quinos, (value) {
      return _then(_value.copyWith(quinos: value));
    });
  }

  @override
  $MokaCopyWith<$Res> get moka {
    return $MokaCopyWith<$Res>(_value.moka, (value) {
      return _then(_value.copyWith(moka: value));
    });
  }

  @override
  $OutletDetailCopyWith<$Res> get detail {
    return $OutletDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }

  @override
  $OrderMethodCopyWith<$Res> get orderMethod {
    return $OrderMethodCopyWith<$Res>(_value.orderMethod, (value) {
      return _then(_value.copyWith(orderMethod: value));
    });
  }
}

/// @nodoc
abstract class _$OutletCopyWith<$Res> implements $OutletCopyWith<$Res> {
  factory _$OutletCopyWith(_Outlet value, $Res Function(_Outlet) then) =
      __$OutletCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String outletId,
      String merchantId,
      String cashierId,
      String deviceId,
      String assignId,
      Moka quinos,
      bool isNonSku,
      Moka moka,
      OutletDetail detail,
      bool isLive,
      OrderMethod orderMethod,
      bool isDelete,
      DateTime createdDate});

  @override
  $MokaCopyWith<$Res> get quinos;
  @override
  $MokaCopyWith<$Res> get moka;
  @override
  $OutletDetailCopyWith<$Res> get detail;
  @override
  $OrderMethodCopyWith<$Res> get orderMethod;
}

/// @nodoc
class __$OutletCopyWithImpl<$Res> extends _$OutletCopyWithImpl<$Res>
    implements _$OutletCopyWith<$Res> {
  __$OutletCopyWithImpl(_Outlet _value, $Res Function(_Outlet) _then)
      : super(_value, (v) => _then(v as _Outlet));

  @override
  _Outlet get _value => super._value as _Outlet;

  @override
  $Res call({
    Object? name = freezed,
    Object? outletId = freezed,
    Object? merchantId = freezed,
    Object? cashierId = freezed,
    Object? deviceId = freezed,
    Object? assignId = freezed,
    Object? quinos = freezed,
    Object? isNonSku = freezed,
    Object? moka = freezed,
    Object? detail = freezed,
    Object? isLive = freezed,
    Object? orderMethod = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_Outlet(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      cashierId: cashierId == freezed
          ? _value.cashierId
          : cashierId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      assignId: assignId == freezed
          ? _value.assignId
          : assignId // ignore: cast_nullable_to_non_nullable
              as String,
      quinos: quinos == freezed
          ? _value.quinos
          : quinos // ignore: cast_nullable_to_non_nullable
              as Moka,
      isNonSku: isNonSku == freezed
          ? _value.isNonSku
          : isNonSku // ignore: cast_nullable_to_non_nullable
              as bool,
      moka: moka == freezed
          ? _value.moka
          : moka // ignore: cast_nullable_to_non_nullable
              as Moka,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as OutletDetail,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      orderMethod: orderMethod == freezed
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as OrderMethod,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Outlet implements _Outlet {
  const _$_Outlet(
      {required this.name,
      required this.outletId,
      required this.merchantId,
      required this.cashierId,
      required this.deviceId,
      required this.assignId,
      required this.quinos,
      required this.isNonSku,
      required this.moka,
      required this.detail,
      required this.isLive,
      required this.orderMethod,
      required this.isDelete,
      required this.createdDate});

  factory _$_Outlet.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletFromJson(json);

  @override
  final String name;
  @override
  final String outletId;
  @override
  final String merchantId;
  @override
  final String cashierId;
  @override
  final String deviceId;
  @override
  final String assignId;
  @override
  final Moka quinos;
  @override
  final bool isNonSku;
  @override
  final Moka moka;
  @override
  final OutletDetail detail;
  @override
  final bool isLive;
  @override
  final OrderMethod orderMethod;
  @override
  final bool isDelete;
  @override
  final DateTime createdDate;

  @override
  String toString() {
    return 'Outlet(name: $name, outletId: $outletId, merchantId: $merchantId, cashierId: $cashierId, deviceId: $deviceId, assignId: $assignId, quinos: $quinos, isNonSku: $isNonSku, moka: $moka, detail: $detail, isLive: $isLive, orderMethod: $orderMethod, isDelete: $isDelete, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Outlet &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)) &&
            (identical(other.cashierId, cashierId) ||
                const DeepCollectionEquality()
                    .equals(other.cashierId, cashierId)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.assignId, assignId) ||
                const DeepCollectionEquality()
                    .equals(other.assignId, assignId)) &&
            (identical(other.quinos, quinos) ||
                const DeepCollectionEquality().equals(other.quinos, quinos)) &&
            (identical(other.isNonSku, isNonSku) ||
                const DeepCollectionEquality()
                    .equals(other.isNonSku, isNonSku)) &&
            (identical(other.moka, moka) ||
                const DeepCollectionEquality().equals(other.moka, moka)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.isLive, isLive) ||
                const DeepCollectionEquality().equals(other.isLive, isLive)) &&
            (identical(other.orderMethod, orderMethod) ||
                const DeepCollectionEquality()
                    .equals(other.orderMethod, orderMethod)) &&
            (identical(other.isDelete, isDelete) ||
                const DeepCollectionEquality()
                    .equals(other.isDelete, isDelete)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(cashierId) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(assignId) ^
      const DeepCollectionEquality().hash(quinos) ^
      const DeepCollectionEquality().hash(isNonSku) ^
      const DeepCollectionEquality().hash(moka) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(isLive) ^
      const DeepCollectionEquality().hash(orderMethod) ^
      const DeepCollectionEquality().hash(isDelete) ^
      const DeepCollectionEquality().hash(createdDate);

  @JsonKey(ignore: true)
  @override
  _$OutletCopyWith<_Outlet> get copyWith =>
      __$OutletCopyWithImpl<_Outlet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletToJson(this);
  }
}

abstract class _Outlet implements Outlet {
  const factory _Outlet(
      {required String name,
      required String outletId,
      required String merchantId,
      required String cashierId,
      required String deviceId,
      required String assignId,
      required Moka quinos,
      required bool isNonSku,
      required Moka moka,
      required OutletDetail detail,
      required bool isLive,
      required OrderMethod orderMethod,
      required bool isDelete,
      required DateTime createdDate}) = _$_Outlet;

  factory _Outlet.fromJson(Map<String, dynamic> json) = _$_Outlet.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  String get cashierId => throw _privateConstructorUsedError;
  @override
  String get deviceId => throw _privateConstructorUsedError;
  @override
  String get assignId => throw _privateConstructorUsedError;
  @override
  Moka get quinos => throw _privateConstructorUsedError;
  @override
  bool get isNonSku => throw _privateConstructorUsedError;
  @override
  Moka get moka => throw _privateConstructorUsedError;
  @override
  OutletDetail get detail => throw _privateConstructorUsedError;
  @override
  bool get isLive => throw _privateConstructorUsedError;
  @override
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  @override
  bool get isDelete => throw _privateConstructorUsedError;
  @override
  DateTime get createdDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCopyWith<_Outlet> get copyWith => throw _privateConstructorUsedError;
}

OutletDetail _$OutletDetailFromJson(Map<String, dynamic> json) {
  return _OutletDetail.fromJson(json);
}

/// @nodoc
class _$OutletDetailTearOff {
  const _$OutletDetailTearOff();

  _OutletDetail call(
      {required String name,
      required String address,
      required List<dynamic> taxesAndServices,
      required List<dynamic> location,
      required String phone,
      required dynamic kurirPrice,
      required List<String> deliveryProvider,
      required String driverPhone,
      required List<dynamic> area,
      required List<dynamic>? deliveryLocation}) {
    return _OutletDetail(
      name: name,
      address: address,
      taxesAndServices: taxesAndServices,
      location: location,
      phone: phone,
      kurirPrice: kurirPrice,
      deliveryProvider: deliveryProvider,
      driverPhone: driverPhone,
      area: area,
      deliveryLocation: deliveryLocation,
    );
  }

  OutletDetail fromJson(Map<String, Object> json) {
    return OutletDetail.fromJson(json);
  }
}

/// @nodoc
const $OutletDetail = _$OutletDetailTearOff();

/// @nodoc
mixin _$OutletDetail {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<dynamic> get taxesAndServices => throw _privateConstructorUsedError;
  List<dynamic> get location => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  dynamic get kurirPrice => throw _privateConstructorUsedError;
  List<String> get deliveryProvider => throw _privateConstructorUsedError;
  String get driverPhone => throw _privateConstructorUsedError;
  List<dynamic> get area => throw _privateConstructorUsedError;
  List<dynamic>? get deliveryLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletDetailCopyWith<OutletDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletDetailCopyWith<$Res> {
  factory $OutletDetailCopyWith(
          OutletDetail value, $Res Function(OutletDetail) then) =
      _$OutletDetailCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String address,
      List<dynamic> taxesAndServices,
      List<dynamic> location,
      String phone,
      dynamic kurirPrice,
      List<String> deliveryProvider,
      String driverPhone,
      List<dynamic> area,
      List<dynamic>? deliveryLocation});
}

/// @nodoc
class _$OutletDetailCopyWithImpl<$Res> implements $OutletDetailCopyWith<$Res> {
  _$OutletDetailCopyWithImpl(this._value, this._then);

  final OutletDetail _value;
  // ignore: unused_field
  final $Res Function(OutletDetail) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? taxesAndServices = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? kurirPrice = freezed,
    Object? deliveryProvider = freezed,
    Object? driverPhone = freezed,
    Object? area = freezed,
    Object? deliveryLocation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kurirPrice: kurirPrice == freezed
          ? _value.kurirPrice
          : kurirPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryProvider: deliveryProvider == freezed
          ? _value.deliveryProvider
          : deliveryProvider // ignore: cast_nullable_to_non_nullable
              as List<String>,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      deliveryLocation: deliveryLocation == freezed
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$OutletDetailCopyWith<$Res>
    implements $OutletDetailCopyWith<$Res> {
  factory _$OutletDetailCopyWith(
          _OutletDetail value, $Res Function(_OutletDetail) then) =
      __$OutletDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      List<dynamic> taxesAndServices,
      List<dynamic> location,
      String phone,
      dynamic kurirPrice,
      List<String> deliveryProvider,
      String driverPhone,
      List<dynamic> area,
      List<dynamic>? deliveryLocation});
}

/// @nodoc
class __$OutletDetailCopyWithImpl<$Res> extends _$OutletDetailCopyWithImpl<$Res>
    implements _$OutletDetailCopyWith<$Res> {
  __$OutletDetailCopyWithImpl(
      _OutletDetail _value, $Res Function(_OutletDetail) _then)
      : super(_value, (v) => _then(v as _OutletDetail));

  @override
  _OutletDetail get _value => super._value as _OutletDetail;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? taxesAndServices = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? kurirPrice = freezed,
    Object? deliveryProvider = freezed,
    Object? driverPhone = freezed,
    Object? area = freezed,
    Object? deliveryLocation = freezed,
  }) {
    return _then(_OutletDetail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kurirPrice: kurirPrice == freezed
          ? _value.kurirPrice
          : kurirPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryProvider: deliveryProvider == freezed
          ? _value.deliveryProvider
          : deliveryProvider // ignore: cast_nullable_to_non_nullable
              as List<String>,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      deliveryLocation: deliveryLocation == freezed
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletDetail implements _OutletDetail {
  const _$_OutletDetail(
      {required this.name,
      required this.address,
      required this.taxesAndServices,
      required this.location,
      required this.phone,
      required this.kurirPrice,
      required this.deliveryProvider,
      required this.driverPhone,
      required this.area,
      required this.deliveryLocation});

  factory _$_OutletDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletDetailFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final List<dynamic> taxesAndServices;
  @override
  final List<dynamic> location;
  @override
  final String phone;
  @override
  final dynamic kurirPrice;
  @override
  final List<String> deliveryProvider;
  @override
  final String driverPhone;
  @override
  final List<dynamic> area;
  @override
  final List<dynamic>? deliveryLocation;

  @override
  String toString() {
    return 'OutletDetail(name: $name, address: $address, taxesAndServices: $taxesAndServices, location: $location, phone: $phone, kurirPrice: $kurirPrice, deliveryProvider: $deliveryProvider, driverPhone: $driverPhone, area: $area, deliveryLocation: $deliveryLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletDetail &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.taxesAndServices, taxesAndServices) ||
                const DeepCollectionEquality()
                    .equals(other.taxesAndServices, taxesAndServices)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.kurirPrice, kurirPrice) ||
                const DeepCollectionEquality()
                    .equals(other.kurirPrice, kurirPrice)) &&
            (identical(other.deliveryProvider, deliveryProvider) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryProvider, deliveryProvider)) &&
            (identical(other.driverPhone, driverPhone) ||
                const DeepCollectionEquality()
                    .equals(other.driverPhone, driverPhone)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryLocation, deliveryLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(taxesAndServices) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(kurirPrice) ^
      const DeepCollectionEquality().hash(deliveryProvider) ^
      const DeepCollectionEquality().hash(driverPhone) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(deliveryLocation);

  @JsonKey(ignore: true)
  @override
  _$OutletDetailCopyWith<_OutletDetail> get copyWith =>
      __$OutletDetailCopyWithImpl<_OutletDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletDetailToJson(this);
  }
}

abstract class _OutletDetail implements OutletDetail {
  const factory _OutletDetail(
      {required String name,
      required String address,
      required List<dynamic> taxesAndServices,
      required List<dynamic> location,
      required String phone,
      required dynamic kurirPrice,
      required List<String> deliveryProvider,
      required String driverPhone,
      required List<dynamic> area,
      required List<dynamic>? deliveryLocation}) = _$_OutletDetail;

  factory _OutletDetail.fromJson(Map<String, dynamic> json) =
      _$_OutletDetail.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  List<dynamic> get taxesAndServices => throw _privateConstructorUsedError;
  @override
  List<dynamic> get location => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  dynamic get kurirPrice => throw _privateConstructorUsedError;
  @override
  List<String> get deliveryProvider => throw _privateConstructorUsedError;
  @override
  String get driverPhone => throw _privateConstructorUsedError;
  @override
  List<dynamic> get area => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get deliveryLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletDetailCopyWith<_OutletDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Moka _$MokaFromJson(Map<String, dynamic> json) {
  return _Moka.fromJson(json);
}

/// @nodoc
class _$MokaTearOff {
  const _$MokaTearOff();

  _Moka call() {
    return const _Moka();
  }

  Moka fromJson(Map<String, Object> json) {
    return Moka.fromJson(json);
  }
}

/// @nodoc
const $Moka = _$MokaTearOff();

/// @nodoc
mixin _$Moka {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MokaCopyWith<$Res> {
  factory $MokaCopyWith(Moka value, $Res Function(Moka) then) =
      _$MokaCopyWithImpl<$Res>;
}

/// @nodoc
class _$MokaCopyWithImpl<$Res> implements $MokaCopyWith<$Res> {
  _$MokaCopyWithImpl(this._value, this._then);

  final Moka _value;
  // ignore: unused_field
  final $Res Function(Moka) _then;
}

/// @nodoc
abstract class _$MokaCopyWith<$Res> {
  factory _$MokaCopyWith(_Moka value, $Res Function(_Moka) then) =
      __$MokaCopyWithImpl<$Res>;
}

/// @nodoc
class __$MokaCopyWithImpl<$Res> extends _$MokaCopyWithImpl<$Res>
    implements _$MokaCopyWith<$Res> {
  __$MokaCopyWithImpl(_Moka _value, $Res Function(_Moka) _then)
      : super(_value, (v) => _then(v as _Moka));

  @override
  _Moka get _value => super._value as _Moka;
}

/// @nodoc
@JsonSerializable()
class _$_Moka implements _Moka {
  const _$_Moka();

  factory _$_Moka.fromJson(Map<String, dynamic> json) =>
      _$_$_MokaFromJson(json);

  @override
  String toString() {
    return 'Moka()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Moka);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MokaToJson(this);
  }
}

abstract class _Moka implements Moka {
  const factory _Moka() = _$_Moka;

  factory _Moka.fromJson(Map<String, dynamic> json) = _$_Moka.fromJson;
}

OrderMethod _$OrderMethodFromJson(Map<String, dynamic> json) {
  return _OrderMethod.fromJson(json);
}

/// @nodoc
class _$OrderMethodTearOff {
  const _$OrderMethodTearOff();

  _OrderMethod call(
      {required bool forceSelect, required List<String> defaultList}) {
    return _OrderMethod(
      forceSelect: forceSelect,
      defaultList: defaultList,
    );
  }

  OrderMethod fromJson(Map<String, Object> json) {
    return OrderMethod.fromJson(json);
  }
}

/// @nodoc
const $OrderMethod = _$OrderMethodTearOff();

/// @nodoc
mixin _$OrderMethod {
  bool get forceSelect => throw _privateConstructorUsedError;
  List<String> get defaultList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderMethodCopyWith<OrderMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMethodCopyWith<$Res> {
  factory $OrderMethodCopyWith(
          OrderMethod value, $Res Function(OrderMethod) then) =
      _$OrderMethodCopyWithImpl<$Res>;
  $Res call({bool forceSelect, List<String> defaultList});
}

/// @nodoc
class _$OrderMethodCopyWithImpl<$Res> implements $OrderMethodCopyWith<$Res> {
  _$OrderMethodCopyWithImpl(this._value, this._then);

  final OrderMethod _value;
  // ignore: unused_field
  final $Res Function(OrderMethod) _then;

  @override
  $Res call({
    Object? forceSelect = freezed,
    Object? defaultList = freezed,
  }) {
    return _then(_value.copyWith(
      forceSelect: forceSelect == freezed
          ? _value.forceSelect
          : forceSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultList: defaultList == freezed
          ? _value.defaultList
          : defaultList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$OrderMethodCopyWith<$Res>
    implements $OrderMethodCopyWith<$Res> {
  factory _$OrderMethodCopyWith(
          _OrderMethod value, $Res Function(_OrderMethod) then) =
      __$OrderMethodCopyWithImpl<$Res>;
  @override
  $Res call({bool forceSelect, List<String> defaultList});
}

/// @nodoc
class __$OrderMethodCopyWithImpl<$Res> extends _$OrderMethodCopyWithImpl<$Res>
    implements _$OrderMethodCopyWith<$Res> {
  __$OrderMethodCopyWithImpl(
      _OrderMethod _value, $Res Function(_OrderMethod) _then)
      : super(_value, (v) => _then(v as _OrderMethod));

  @override
  _OrderMethod get _value => super._value as _OrderMethod;

  @override
  $Res call({
    Object? forceSelect = freezed,
    Object? defaultList = freezed,
  }) {
    return _then(_OrderMethod(
      forceSelect: forceSelect == freezed
          ? _value.forceSelect
          : forceSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultList: defaultList == freezed
          ? _value.defaultList
          : defaultList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderMethod implements _OrderMethod {
  const _$_OrderMethod({required this.forceSelect, required this.defaultList});

  factory _$_OrderMethod.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderMethodFromJson(json);

  @override
  final bool forceSelect;
  @override
  final List<String> defaultList;

  @override
  String toString() {
    return 'OrderMethod(forceSelect: $forceSelect, defaultList: $defaultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderMethod &&
            (identical(other.forceSelect, forceSelect) ||
                const DeepCollectionEquality()
                    .equals(other.forceSelect, forceSelect)) &&
            (identical(other.defaultList, defaultList) ||
                const DeepCollectionEquality()
                    .equals(other.defaultList, defaultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forceSelect) ^
      const DeepCollectionEquality().hash(defaultList);

  @JsonKey(ignore: true)
  @override
  _$OrderMethodCopyWith<_OrderMethod> get copyWith =>
      __$OrderMethodCopyWithImpl<_OrderMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderMethodToJson(this);
  }
}

abstract class _OrderMethod implements OrderMethod {
  const factory _OrderMethod(
      {required bool forceSelect,
      required List<String> defaultList}) = _$_OrderMethod;

  factory _OrderMethod.fromJson(Map<String, dynamic> json) =
      _$_OrderMethod.fromJson;

  @override
  bool get forceSelect => throw _privateConstructorUsedError;
  @override
  List<String> get defaultList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderMethodCopyWith<_OrderMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
class _$PaymentTearOff {
  const _$PaymentTearOff();

  _Payment call(
      {required int amount,
      required int change,
      required String method,
      required String companyPaymentMethodId,
      required DateTime timestamp,
      required String title}) {
    return _Payment(
      amount: amount,
      change: change,
      method: method,
      companyPaymentMethodId: companyPaymentMethodId,
      timestamp: timestamp,
      title: title,
    );
  }

  Payment fromJson(Map<String, Object> json) {
    return Payment.fromJson(json);
  }
}

/// @nodoc
const $Payment = _$PaymentTearOff();

/// @nodoc
mixin _$Payment {
  int get amount => throw _privateConstructorUsedError;
  int get change => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get companyPaymentMethodId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res>;
  $Res call(
      {int amount,
      int change,
      String method,
      String companyPaymentMethodId,
      DateTime timestamp,
      String title});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res> implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  final Payment _value;
  // ignore: unused_field
  final $Res Function(Payment) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? change = freezed,
    Object? method = freezed,
    Object? companyPaymentMethodId = freezed,
    Object? timestamp = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      companyPaymentMethodId: companyPaymentMethodId == freezed
          ? _value.companyPaymentMethodId
          : companyPaymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) then) =
      __$PaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int amount,
      int change,
      String method,
      String companyPaymentMethodId,
      DateTime timestamp,
      String title});
}

/// @nodoc
class __$PaymentCopyWithImpl<$Res> extends _$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(_Payment _value, $Res Function(_Payment) _then)
      : super(_value, (v) => _then(v as _Payment));

  @override
  _Payment get _value => super._value as _Payment;

  @override
  $Res call({
    Object? amount = freezed,
    Object? change = freezed,
    Object? method = freezed,
    Object? companyPaymentMethodId = freezed,
    Object? timestamp = freezed,
    Object? title = freezed,
  }) {
    return _then(_Payment(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as int,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      companyPaymentMethodId: companyPaymentMethodId == freezed
          ? _value.companyPaymentMethodId
          : companyPaymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  const _$_Payment(
      {required this.amount,
      required this.change,
      required this.method,
      required this.companyPaymentMethodId,
      required this.timestamp,
      required this.title});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentFromJson(json);

  @override
  final int amount;
  @override
  final int change;
  @override
  final String method;
  @override
  final String companyPaymentMethodId;
  @override
  final DateTime timestamp;
  @override
  final String title;

  @override
  String toString() {
    return 'Payment(amount: $amount, change: $change, method: $method, companyPaymentMethodId: $companyPaymentMethodId, timestamp: $timestamp, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payment &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.change, change) ||
                const DeepCollectionEquality().equals(other.change, change)) &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)) &&
            (identical(other.companyPaymentMethodId, companyPaymentMethodId) ||
                const DeepCollectionEquality().equals(
                    other.companyPaymentMethodId, companyPaymentMethodId)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(change) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(companyPaymentMethodId) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$PaymentCopyWith<_Payment> get copyWith =>
      __$PaymentCopyWithImpl<_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentToJson(this);
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required int amount,
      required int change,
      required String method,
      required String companyPaymentMethodId,
      required DateTime timestamp,
      required String title}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get change => throw _privateConstructorUsedError;
  @override
  String get method => throw _privateConstructorUsedError;
  @override
  String get companyPaymentMethodId => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentCopyWith<_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxesAndService _$TaxesAndServiceFromJson(Map<String, dynamic> json) {
  return _TaxesAndService.fromJson(json);
}

/// @nodoc
class _$TaxesAndServiceTearOff {
  const _$TaxesAndServiceTearOff();

  _TaxesAndService call(
      {required int id,
      required String code,
      required String name,
      required String type,
      required int amount,
      required List<String> salesTypes,
      required List<String> paymentTypes,
      required String title}) {
    return _TaxesAndService(
      id: id,
      code: code,
      name: name,
      type: type,
      amount: amount,
      salesTypes: salesTypes,
      paymentTypes: paymentTypes,
      title: title,
    );
  }

  TaxesAndService fromJson(Map<String, Object> json) {
    return TaxesAndService.fromJson(json);
  }
}

/// @nodoc
const $TaxesAndService = _$TaxesAndServiceTearOff();

/// @nodoc
mixin _$TaxesAndService {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  List<String> get salesTypes => throw _privateConstructorUsedError;
  List<String> get paymentTypes => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxesAndServiceCopyWith<TaxesAndService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxesAndServiceCopyWith<$Res> {
  factory $TaxesAndServiceCopyWith(
          TaxesAndService value, $Res Function(TaxesAndService) then) =
      _$TaxesAndServiceCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String code,
      String name,
      String type,
      int amount,
      List<String> salesTypes,
      List<String> paymentTypes,
      String title});
}

/// @nodoc
class _$TaxesAndServiceCopyWithImpl<$Res>
    implements $TaxesAndServiceCopyWith<$Res> {
  _$TaxesAndServiceCopyWithImpl(this._value, this._then);

  final TaxesAndService _value;
  // ignore: unused_field
  final $Res Function(TaxesAndService) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? salesTypes = freezed,
    Object? paymentTypes = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentTypes: paymentTypes == freezed
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TaxesAndServiceCopyWith<$Res>
    implements $TaxesAndServiceCopyWith<$Res> {
  factory _$TaxesAndServiceCopyWith(
          _TaxesAndService value, $Res Function(_TaxesAndService) then) =
      __$TaxesAndServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String code,
      String name,
      String type,
      int amount,
      List<String> salesTypes,
      List<String> paymentTypes,
      String title});
}

/// @nodoc
class __$TaxesAndServiceCopyWithImpl<$Res>
    extends _$TaxesAndServiceCopyWithImpl<$Res>
    implements _$TaxesAndServiceCopyWith<$Res> {
  __$TaxesAndServiceCopyWithImpl(
      _TaxesAndService _value, $Res Function(_TaxesAndService) _then)
      : super(_value, (v) => _then(v as _TaxesAndService));

  @override
  _TaxesAndService get _value => super._value as _TaxesAndService;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? salesTypes = freezed,
    Object? paymentTypes = freezed,
    Object? title = freezed,
  }) {
    return _then(_TaxesAndService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentTypes: paymentTypes == freezed
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxesAndService implements _TaxesAndService {
  const _$_TaxesAndService(
      {required this.id,
      required this.code,
      required this.name,
      required this.type,
      required this.amount,
      required this.salesTypes,
      required this.paymentTypes,
      required this.title});

  factory _$_TaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$_$_TaxesAndServiceFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final String type;
  @override
  final int amount;
  @override
  final List<String> salesTypes;
  @override
  final List<String> paymentTypes;
  @override
  final String title;

  @override
  String toString() {
    return 'TaxesAndService(id: $id, code: $code, name: $name, type: $type, amount: $amount, salesTypes: $salesTypes, paymentTypes: $paymentTypes, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaxesAndService &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.salesTypes, salesTypes) ||
                const DeepCollectionEquality()
                    .equals(other.salesTypes, salesTypes)) &&
            (identical(other.paymentTypes, paymentTypes) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTypes, paymentTypes)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(salesTypes) ^
      const DeepCollectionEquality().hash(paymentTypes) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TaxesAndServiceCopyWith<_TaxesAndService> get copyWith =>
      __$TaxesAndServiceCopyWithImpl<_TaxesAndService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaxesAndServiceToJson(this);
  }
}

abstract class _TaxesAndService implements TaxesAndService {
  const factory _TaxesAndService(
      {required int id,
      required String code,
      required String name,
      required String type,
      required int amount,
      required List<String> salesTypes,
      required List<String> paymentTypes,
      required String title}) = _$_TaxesAndService;

  factory _TaxesAndService.fromJson(Map<String, dynamic> json) =
      _$_TaxesAndService.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  List<String> get salesTypes => throw _privateConstructorUsedError;
  @override
  List<String> get paymentTypes => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaxesAndServiceCopyWith<_TaxesAndService> get copyWith =>
      throw _privateConstructorUsedError;
}
