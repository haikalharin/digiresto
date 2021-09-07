// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_mobile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionMobileResponse _$TransactionMobileResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionMobileResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileResponseTearOff {
  const _$TransactionMobileResponseTearOff();

  _TransactionMobileResponse call(
      {required StatusResponse response,
      required TransactionMobileDataResponse data,
      required MetaResponse meta}) {
    return _TransactionMobileResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  TransactionMobileResponse fromJson(Map<String, Object> json) {
    return TransactionMobileResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileResponse = _$TransactionMobileResponseTearOff();

/// @nodoc
mixin _$TransactionMobileResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  TransactionMobileDataResponse get data => throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileResponseCopyWith<TransactionMobileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileResponseCopyWith<$Res> {
  factory $TransactionMobileResponseCopyWith(TransactionMobileResponse value,
          $Res Function(TransactionMobileResponse) then) =
      _$TransactionMobileResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      TransactionMobileDataResponse data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $TransactionMobileDataResponseCopyWith<$Res> get data;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$TransactionMobileResponseCopyWithImpl<$Res>
    implements $TransactionMobileResponseCopyWith<$Res> {
  _$TransactionMobileResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileResponse) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }

  @override
  $StatusResponseCopyWith<$Res> get response {
    return $StatusResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }

  @override
  $TransactionMobileDataResponseCopyWith<$Res> get data {
    return $TransactionMobileDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $MetaResponseCopyWith<$Res> get meta {
    return $MetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionMobileResponseCopyWith<$Res>
    implements $TransactionMobileResponseCopyWith<$Res> {
  factory _$TransactionMobileResponseCopyWith(_TransactionMobileResponse value,
          $Res Function(_TransactionMobileResponse) then) =
      __$TransactionMobileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      TransactionMobileDataResponse data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $TransactionMobileDataResponseCopyWith<$Res> get data;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$TransactionMobileResponseCopyWithImpl<$Res>
    extends _$TransactionMobileResponseCopyWithImpl<$Res>
    implements _$TransactionMobileResponseCopyWith<$Res> {
  __$TransactionMobileResponseCopyWithImpl(_TransactionMobileResponse _value,
      $Res Function(_TransactionMobileResponse) _then)
      : super(_value, (v) => _then(v as _TransactionMobileResponse));

  @override
  _TransactionMobileResponse get _value =>
      super._value as _TransactionMobileResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_TransactionMobileResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileResponse implements _TransactionMobileResponse {
  const _$_TransactionMobileResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_TransactionMobileResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionMobileResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final TransactionMobileDataResponse data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'TransactionMobileResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileResponse &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileResponseCopyWith<_TransactionMobileResponse>
      get copyWith =>
          __$TransactionMobileResponseCopyWithImpl<_TransactionMobileResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileResponseToJson(this);
  }
}

abstract class _TransactionMobileResponse implements TransactionMobileResponse {
  const factory _TransactionMobileResponse(
      {required StatusResponse response,
      required TransactionMobileDataResponse data,
      required MetaResponse meta}) = _$_TransactionMobileResponse;

  factory _TransactionMobileResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionMobileResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  TransactionMobileDataResponse get data => throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileResponseCopyWith<_TransactionMobileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataResponse _$TransactionMobileDataResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionMobileDataResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataResponseTearOff {
  const _$TransactionMobileDataResponseTearOff();

  _TransactionMobileDataResponse call(
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
      required int deliveryAmount,
      required int totalPayment,
      required String salesType,
      required List<TransactionDataItemResponse> items,
      required int itemWeight,
      required bool isUseVoucher,
      required List<TransactionMobileDataPromoResponse> promos,
      required List<TransactionMobileDataPaymentListResponse> paymentList,
      required List<TransactionTaxesAndService>? taxesAndServices,
      required int itemTotalAmount,
      required String note,
      required int? originalDeliveryAmount,
      required String? deviceTimestamp,
      required String receiptCode,
      required List<TransactionMobileDataPaymentResponse>? payments,
      required TransactionMobileDataOutletResponse? outlet,
      required String? orderId,
      required String? status,
      required TransactionMobileDataDeliveryDetailResponse? deliveryDetail,
      required TransactionMobileDataRatingResponse? rating,
      required TransactionMobileDataBillingDetailResponse? billingDetail,
      required TransactionMobileDataDeliveryResponse? delivery}) {
    return _TransactionMobileDataResponse(
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
      deliveryAmount: deliveryAmount,
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
      originalDeliveryAmount: originalDeliveryAmount,
      deviceTimestamp: deviceTimestamp,
      receiptCode: receiptCode,
      payments: payments,
      outlet: outlet,
      orderId: orderId,
      status: status,
      deliveryDetail: deliveryDetail,
      rating: rating,
      billingDetail: billingDetail,
      delivery: delivery,
    );
  }

  TransactionMobileDataResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataResponse = _$TransactionMobileDataResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataResponse {
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
  int get deliveryAmount => throw _privateConstructorUsedError;
  int get totalPayment => throw _privateConstructorUsedError;
  String get salesType => throw _privateConstructorUsedError;
  List<TransactionDataItemResponse> get items =>
      throw _privateConstructorUsedError;
  int get itemWeight => throw _privateConstructorUsedError;
  bool get isUseVoucher => throw _privateConstructorUsedError;
  List<TransactionMobileDataPromoResponse> get promos =>
      throw _privateConstructorUsedError;
  List<TransactionMobileDataPaymentListResponse> get paymentList =>
      throw _privateConstructorUsedError;
  List<TransactionTaxesAndService>? get taxesAndServices =>
      throw _privateConstructorUsedError;
  int get itemTotalAmount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  int? get originalDeliveryAmount => throw _privateConstructorUsedError;
  String? get deviceTimestamp => throw _privateConstructorUsedError;
  String get receiptCode => throw _privateConstructorUsedError;
  List<TransactionMobileDataPaymentResponse>? get payments =>
      throw _privateConstructorUsedError;
  TransactionMobileDataOutletResponse? get outlet =>
      throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  TransactionMobileDataDeliveryDetailResponse? get deliveryDetail =>
      throw _privateConstructorUsedError;
  TransactionMobileDataRatingResponse? get rating =>
      throw _privateConstructorUsedError;
  TransactionMobileDataBillingDetailResponse? get billingDetail =>
      throw _privateConstructorUsedError;
  TransactionMobileDataDeliveryResponse? get delivery =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataResponseCopyWith<TransactionMobileDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataResponseCopyWith<$Res> {
  factory $TransactionMobileDataResponseCopyWith(
          TransactionMobileDataResponse value,
          $Res Function(TransactionMobileDataResponse) then) =
      _$TransactionMobileDataResponseCopyWithImpl<$Res>;
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
      int deliveryAmount,
      int totalPayment,
      String salesType,
      List<TransactionDataItemResponse> items,
      int itemWeight,
      bool isUseVoucher,
      List<TransactionMobileDataPromoResponse> promos,
      List<TransactionMobileDataPaymentListResponse> paymentList,
      List<TransactionTaxesAndService>? taxesAndServices,
      int itemTotalAmount,
      String note,
      int? originalDeliveryAmount,
      String? deviceTimestamp,
      String receiptCode,
      List<TransactionMobileDataPaymentResponse>? payments,
      TransactionMobileDataOutletResponse? outlet,
      String? orderId,
      String? status,
      TransactionMobileDataDeliveryDetailResponse? deliveryDetail,
      TransactionMobileDataRatingResponse? rating,
      TransactionMobileDataBillingDetailResponse? billingDetail,
      TransactionMobileDataDeliveryResponse? delivery});

  $TransactionMobileDataOutletResponseCopyWith<$Res>? get outlet;
  $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res>?
      get deliveryDetail;
  $TransactionMobileDataRatingResponseCopyWith<$Res>? get rating;
  $TransactionMobileDataBillingDetailResponseCopyWith<$Res>? get billingDetail;
  $TransactionMobileDataDeliveryResponseCopyWith<$Res>? get delivery;
}

/// @nodoc
class _$TransactionMobileDataResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataResponseCopyWith<$Res> {
  _$TransactionMobileDataResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileDataResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataResponse) _then;

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
    Object? deliveryAmount = freezed,
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
    Object? originalDeliveryAmount = freezed,
    Object? deviceTimestamp = freezed,
    Object? receiptCode = freezed,
    Object? payments = freezed,
    Object? outlet = freezed,
    Object? orderId = freezed,
    Object? status = freezed,
    Object? deliveryDetail = freezed,
    Object? rating = freezed,
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
      deliveryAmount: deliveryAmount == freezed
          ? _value.deliveryAmount
          : deliveryAmount // ignore: cast_nullable_to_non_nullable
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
              as List<TransactionDataItemResponse>,
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
              as List<TransactionMobileDataPromoResponse>,
      paymentList: paymentList == freezed
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as List<TransactionMobileDataPaymentListResponse>,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<TransactionTaxesAndService>?,
      itemTotalAmount: itemTotalAmount == freezed
          ? _value.itemTotalAmount
          : itemTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      originalDeliveryAmount: originalDeliveryAmount == freezed
          ? _value.originalDeliveryAmount
          : originalDeliveryAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceTimestamp: deviceTimestamp == freezed
          ? _value.deviceTimestamp
          : deviceTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<TransactionMobileDataPaymentResponse>?,
      outlet: outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataOutletResponse?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryDetail: deliveryDetail == freezed
          ? _value.deliveryDetail
          : deliveryDetail // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryDetailResponse?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataRatingResponse?,
      billingDetail: billingDetail == freezed
          ? _value.billingDetail
          : billingDetail // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataBillingDetailResponse?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryResponse?,
    ));
  }

  @override
  $TransactionMobileDataOutletResponseCopyWith<$Res>? get outlet {
    if (_value.outlet == null) {
      return null;
    }

    return $TransactionMobileDataOutletResponseCopyWith<$Res>(_value.outlet!,
        (value) {
      return _then(_value.copyWith(outlet: value));
    });
  }

  @override
  $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res>?
      get deliveryDetail {
    if (_value.deliveryDetail == null) {
      return null;
    }

    return $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res>(
        _value.deliveryDetail!, (value) {
      return _then(_value.copyWith(deliveryDetail: value));
    });
  }

  @override
  $TransactionMobileDataRatingResponseCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $TransactionMobileDataRatingResponseCopyWith<$Res>(_value.rating!,
        (value) {
      return _then(_value.copyWith(rating: value));
    });
  }

  @override
  $TransactionMobileDataBillingDetailResponseCopyWith<$Res>? get billingDetail {
    if (_value.billingDetail == null) {
      return null;
    }

    return $TransactionMobileDataBillingDetailResponseCopyWith<$Res>(
        _value.billingDetail!, (value) {
      return _then(_value.copyWith(billingDetail: value));
    });
  }

  @override
  $TransactionMobileDataDeliveryResponseCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $TransactionMobileDataDeliveryResponseCopyWith<$Res>(
        _value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionMobileDataResponseCopyWith<$Res>
    implements $TransactionMobileDataResponseCopyWith<$Res> {
  factory _$TransactionMobileDataResponseCopyWith(
          _TransactionMobileDataResponse value,
          $Res Function(_TransactionMobileDataResponse) then) =
      __$TransactionMobileDataResponseCopyWithImpl<$Res>;
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
      int deliveryAmount,
      int totalPayment,
      String salesType,
      List<TransactionDataItemResponse> items,
      int itemWeight,
      bool isUseVoucher,
      List<TransactionMobileDataPromoResponse> promos,
      List<TransactionMobileDataPaymentListResponse> paymentList,
      List<TransactionTaxesAndService>? taxesAndServices,
      int itemTotalAmount,
      String note,
      int? originalDeliveryAmount,
      String? deviceTimestamp,
      String receiptCode,
      List<TransactionMobileDataPaymentResponse>? payments,
      TransactionMobileDataOutletResponse? outlet,
      String? orderId,
      String? status,
      TransactionMobileDataDeliveryDetailResponse? deliveryDetail,
      TransactionMobileDataRatingResponse? rating,
      TransactionMobileDataBillingDetailResponse? billingDetail,
      TransactionMobileDataDeliveryResponse? delivery});

  @override
  $TransactionMobileDataOutletResponseCopyWith<$Res>? get outlet;
  @override
  $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res>?
      get deliveryDetail;
  @override
  $TransactionMobileDataRatingResponseCopyWith<$Res>? get rating;
  @override
  $TransactionMobileDataBillingDetailResponseCopyWith<$Res>? get billingDetail;
  @override
  $TransactionMobileDataDeliveryResponseCopyWith<$Res>? get delivery;
}

/// @nodoc
class __$TransactionMobileDataResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataResponseCopyWith<$Res> {
  __$TransactionMobileDataResponseCopyWithImpl(
      _TransactionMobileDataResponse _value,
      $Res Function(_TransactionMobileDataResponse) _then)
      : super(_value, (v) => _then(v as _TransactionMobileDataResponse));

  @override
  _TransactionMobileDataResponse get _value =>
      super._value as _TransactionMobileDataResponse;

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
    Object? deliveryAmount = freezed,
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
    Object? originalDeliveryAmount = freezed,
    Object? deviceTimestamp = freezed,
    Object? receiptCode = freezed,
    Object? payments = freezed,
    Object? outlet = freezed,
    Object? orderId = freezed,
    Object? status = freezed,
    Object? deliveryDetail = freezed,
    Object? rating = freezed,
    Object? billingDetail = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_TransactionMobileDataResponse(
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
      deliveryAmount: deliveryAmount == freezed
          ? _value.deliveryAmount
          : deliveryAmount // ignore: cast_nullable_to_non_nullable
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
              as List<TransactionDataItemResponse>,
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
              as List<TransactionMobileDataPromoResponse>,
      paymentList: paymentList == freezed
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as List<TransactionMobileDataPaymentListResponse>,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<TransactionTaxesAndService>?,
      itemTotalAmount: itemTotalAmount == freezed
          ? _value.itemTotalAmount
          : itemTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      originalDeliveryAmount: originalDeliveryAmount == freezed
          ? _value.originalDeliveryAmount
          : originalDeliveryAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceTimestamp: deviceTimestamp == freezed
          ? _value.deviceTimestamp
          : deviceTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<TransactionMobileDataPaymentResponse>?,
      outlet: outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataOutletResponse?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryDetail: deliveryDetail == freezed
          ? _value.deliveryDetail
          : deliveryDetail // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryDetailResponse?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataRatingResponse?,
      billingDetail: billingDetail == freezed
          ? _value.billingDetail
          : billingDetail // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataBillingDetailResponse?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataResponse
    implements _TransactionMobileDataResponse {
  const _$_TransactionMobileDataResponse(
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
      required this.deliveryAmount,
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
      required this.originalDeliveryAmount,
      required this.deviceTimestamp,
      required this.receiptCode,
      required this.payments,
      required this.outlet,
      required this.orderId,
      required this.status,
      required this.deliveryDetail,
      required this.rating,
      required this.billingDetail,
      required this.delivery});

  factory _$_TransactionMobileDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataResponseFromJson(json);

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
  final int deliveryAmount;
  @override
  final int totalPayment;
  @override
  final String salesType;
  @override
  final List<TransactionDataItemResponse> items;
  @override
  final int itemWeight;
  @override
  final bool isUseVoucher;
  @override
  final List<TransactionMobileDataPromoResponse> promos;
  @override
  final List<TransactionMobileDataPaymentListResponse> paymentList;
  @override
  final List<TransactionTaxesAndService>? taxesAndServices;
  @override
  final int itemTotalAmount;
  @override
  final String note;
  @override
  final int? originalDeliveryAmount;
  @override
  final String? deviceTimestamp;
  @override
  final String receiptCode;
  @override
  final List<TransactionMobileDataPaymentResponse>? payments;
  @override
  final TransactionMobileDataOutletResponse? outlet;
  @override
  final String? orderId;
  @override
  final String? status;
  @override
  final TransactionMobileDataDeliveryDetailResponse? deliveryDetail;
  @override
  final TransactionMobileDataRatingResponse? rating;
  @override
  final TransactionMobileDataBillingDetailResponse? billingDetail;
  @override
  final TransactionMobileDataDeliveryResponse? delivery;

  @override
  String toString() {
    return 'TransactionMobileDataResponse(outletName: $outletName, outletId: $outletId, customerName: $customerName, customerEmail: $customerEmail, customerPhone: $customerPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, customerTableNumber: $customerTableNumber, customerSmoking: $customerSmoking, customerPax: $customerPax, customerNote: $customerNote, customerCarType: $customerCarType, customerCarColor: $customerCarColor, customerCarNumber: $customerCarNumber, eta: $eta, totalChange: $totalChange, discountAmount: $discountAmount, discountPercentage: $discountPercentage, finalAmount: $finalAmount, receiptTotalDiscount: $receiptTotalDiscount, roundAmount: $roundAmount, subtotal: $subtotal, totalDiscount: $totalDiscount, totalItemAmount: $totalItemAmount, totalItemCost: $totalItemCost, totalItemDiscount: $totalItemDiscount, totalService: $totalService, totalTax: $totalTax, voucherAmount: $voucherAmount, deliveryAmount: $deliveryAmount, totalPayment: $totalPayment, salesType: $salesType, items: $items, itemWeight: $itemWeight, isUseVoucher: $isUseVoucher, promos: $promos, paymentList: $paymentList, taxesAndServices: $taxesAndServices, itemTotalAmount: $itemTotalAmount, note: $note, originalDeliveryAmount: $originalDeliveryAmount, deviceTimestamp: $deviceTimestamp, receiptCode: $receiptCode, payments: $payments, outlet: $outlet, orderId: $orderId, status: $status, deliveryDetail: $deliveryDetail, rating: $rating, billingDetail: $billingDetail, delivery: $delivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataResponse &&
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
            (identical(other.subtotal, subtotal) ||
                const DeepCollectionEquality()
                    .equals(other.subtotal, subtotal)) &&
            (identical(other.totalDiscount, totalDiscount) || const DeepCollectionEquality().equals(other.totalDiscount, totalDiscount)) &&
            (identical(other.totalItemAmount, totalItemAmount) || const DeepCollectionEquality().equals(other.totalItemAmount, totalItemAmount)) &&
            (identical(other.totalItemCost, totalItemCost) || const DeepCollectionEquality().equals(other.totalItemCost, totalItemCost)) &&
            (identical(other.totalItemDiscount, totalItemDiscount) || const DeepCollectionEquality().equals(other.totalItemDiscount, totalItemDiscount)) &&
            (identical(other.totalService, totalService) || const DeepCollectionEquality().equals(other.totalService, totalService)) &&
            (identical(other.totalTax, totalTax) || const DeepCollectionEquality().equals(other.totalTax, totalTax)) &&
            (identical(other.voucherAmount, voucherAmount) || const DeepCollectionEquality().equals(other.voucherAmount, voucherAmount)) &&
            (identical(other.deliveryAmount, deliveryAmount) || const DeepCollectionEquality().equals(other.deliveryAmount, deliveryAmount)) &&
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
            (identical(other.originalDeliveryAmount, originalDeliveryAmount) || const DeepCollectionEquality().equals(other.originalDeliveryAmount, originalDeliveryAmount)) &&
            (identical(other.deviceTimestamp, deviceTimestamp) || const DeepCollectionEquality().equals(other.deviceTimestamp, deviceTimestamp)) &&
            (identical(other.receiptCode, receiptCode) || const DeepCollectionEquality().equals(other.receiptCode, receiptCode)) &&
            (identical(other.payments, payments) || const DeepCollectionEquality().equals(other.payments, payments)) &&
            (identical(other.outlet, outlet) || const DeepCollectionEquality().equals(other.outlet, outlet)) &&
            (identical(other.orderId, orderId) || const DeepCollectionEquality().equals(other.orderId, orderId)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryDetail, deliveryDetail) || const DeepCollectionEquality().equals(other.deliveryDetail, deliveryDetail)) &&
            (identical(other.rating, rating) || const DeepCollectionEquality().equals(other.rating, rating)) &&
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
      const DeepCollectionEquality().hash(deliveryAmount) ^
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
      const DeepCollectionEquality().hash(originalDeliveryAmount) ^
      const DeepCollectionEquality().hash(deviceTimestamp) ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(payments) ^
      const DeepCollectionEquality().hash(outlet) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deliveryDetail) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(billingDetail) ^
      const DeepCollectionEquality().hash(delivery);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataResponseCopyWith<_TransactionMobileDataResponse>
      get copyWith => __$TransactionMobileDataResponseCopyWithImpl<
          _TransactionMobileDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataResponseToJson(this);
  }
}

abstract class _TransactionMobileDataResponse
    implements TransactionMobileDataResponse {
  const factory _TransactionMobileDataResponse(
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
          required int deliveryAmount,
          required int totalPayment,
          required String salesType,
          required List<TransactionDataItemResponse> items,
          required int itemWeight,
          required bool isUseVoucher,
          required List<TransactionMobileDataPromoResponse> promos,
          required List<TransactionMobileDataPaymentListResponse> paymentList,
          required List<TransactionTaxesAndService>? taxesAndServices,
          required int itemTotalAmount,
          required String note,
          required int? originalDeliveryAmount,
          required String? deviceTimestamp,
          required String receiptCode,
          required List<TransactionMobileDataPaymentResponse>? payments,
          required TransactionMobileDataOutletResponse? outlet,
          required String? orderId,
          required String? status,
          required TransactionMobileDataDeliveryDetailResponse? deliveryDetail,
          required TransactionMobileDataRatingResponse? rating,
          required TransactionMobileDataBillingDetailResponse? billingDetail,
          required TransactionMobileDataDeliveryResponse? delivery}) =
      _$_TransactionMobileDataResponse;

  factory _TransactionMobileDataResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionMobileDataResponse.fromJson;

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
  int get deliveryAmount => throw _privateConstructorUsedError;
  @override
  int get totalPayment => throw _privateConstructorUsedError;
  @override
  String get salesType => throw _privateConstructorUsedError;
  @override
  List<TransactionDataItemResponse> get items =>
      throw _privateConstructorUsedError;
  @override
  int get itemWeight => throw _privateConstructorUsedError;
  @override
  bool get isUseVoucher => throw _privateConstructorUsedError;
  @override
  List<TransactionMobileDataPromoResponse> get promos =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionMobileDataPaymentListResponse> get paymentList =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionTaxesAndService>? get taxesAndServices =>
      throw _privateConstructorUsedError;
  @override
  int get itemTotalAmount => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  int? get originalDeliveryAmount => throw _privateConstructorUsedError;
  @override
  String? get deviceTimestamp => throw _privateConstructorUsedError;
  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  List<TransactionMobileDataPaymentResponse>? get payments =>
      throw _privateConstructorUsedError;
  @override
  TransactionMobileDataOutletResponse? get outlet =>
      throw _privateConstructorUsedError;
  @override
  String? get orderId => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  TransactionMobileDataDeliveryDetailResponse? get deliveryDetail =>
      throw _privateConstructorUsedError;
  @override
  TransactionMobileDataRatingResponse? get rating =>
      throw _privateConstructorUsedError;
  @override
  TransactionMobileDataBillingDetailResponse? get billingDetail =>
      throw _privateConstructorUsedError;
  @override
  TransactionMobileDataDeliveryResponse? get delivery =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataResponseCopyWith<_TransactionMobileDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataBillingDetailResponse
    _$TransactionMobileDataBillingDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _TransactionMobileDataBillingDetailResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataBillingDetailResponseTearOff {
  const _$TransactionMobileDataBillingDetailResponseTearOff();

  _TransactionMobileDataBillingDetailResponse call(
      {required String? title,
      required int? amount,
      required String? vaNumber,
      required String? expires,
      required String? expiresAt}) {
    return _TransactionMobileDataBillingDetailResponse(
      title: title,
      amount: amount,
      vaNumber: vaNumber,
      expires: expires,
      expiresAt: expiresAt,
    );
  }

  TransactionMobileDataBillingDetailResponse fromJson(
      Map<String, Object> json) {
    return TransactionMobileDataBillingDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataBillingDetailResponse =
    _$TransactionMobileDataBillingDetailResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataBillingDetailResponse {
  String? get title => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get vaNumber => throw _privateConstructorUsedError;
  String? get expires => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataBillingDetailResponseCopyWith<
          TransactionMobileDataBillingDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataBillingDetailResponseCopyWith<$Res> {
  factory $TransactionMobileDataBillingDetailResponseCopyWith(
          TransactionMobileDataBillingDetailResponse value,
          $Res Function(TransactionMobileDataBillingDetailResponse) then) =
      _$TransactionMobileDataBillingDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      int? amount,
      String? vaNumber,
      String? expires,
      String? expiresAt});
}

/// @nodoc
class _$TransactionMobileDataBillingDetailResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataBillingDetailResponseCopyWith<$Res> {
  _$TransactionMobileDataBillingDetailResponseCopyWithImpl(
      this._value, this._then);

  final TransactionMobileDataBillingDetailResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataBillingDetailResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? vaNumber = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMobileDataBillingDetailResponseCopyWith<$Res>
    implements $TransactionMobileDataBillingDetailResponseCopyWith<$Res> {
  factory _$TransactionMobileDataBillingDetailResponseCopyWith(
          _TransactionMobileDataBillingDetailResponse value,
          $Res Function(_TransactionMobileDataBillingDetailResponse) then) =
      __$TransactionMobileDataBillingDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      int? amount,
      String? vaNumber,
      String? expires,
      String? expiresAt});
}

/// @nodoc
class __$TransactionMobileDataBillingDetailResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataBillingDetailResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataBillingDetailResponseCopyWith<$Res> {
  __$TransactionMobileDataBillingDetailResponseCopyWithImpl(
      _TransactionMobileDataBillingDetailResponse _value,
      $Res Function(_TransactionMobileDataBillingDetailResponse) _then)
      : super(_value,
            (v) => _then(v as _TransactionMobileDataBillingDetailResponse));

  @override
  _TransactionMobileDataBillingDetailResponse get _value =>
      super._value as _TransactionMobileDataBillingDetailResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? vaNumber = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_TransactionMobileDataBillingDetailResponse(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataBillingDetailResponse
    implements _TransactionMobileDataBillingDetailResponse {
  const _$_TransactionMobileDataBillingDetailResponse(
      {required this.title,
      required this.amount,
      required this.vaNumber,
      required this.expires,
      required this.expiresAt});

  factory _$_TransactionMobileDataBillingDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataBillingDetailResponseFromJson(json);

  @override
  final String? title;
  @override
  final int? amount;
  @override
  final String? vaNumber;
  @override
  final String? expires;
  @override
  final String? expiresAt;

  @override
  String toString() {
    return 'TransactionMobileDataBillingDetailResponse(title: $title, amount: $amount, vaNumber: $vaNumber, expires: $expires, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataBillingDetailResponse &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.vaNumber, vaNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vaNumber, vaNumber)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality()
                    .equals(other.expires, expires)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(vaNumber) ^
      const DeepCollectionEquality().hash(expires) ^
      const DeepCollectionEquality().hash(expiresAt);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataBillingDetailResponseCopyWith<
          _TransactionMobileDataBillingDetailResponse>
      get copyWith => __$TransactionMobileDataBillingDetailResponseCopyWithImpl<
          _TransactionMobileDataBillingDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataBillingDetailResponseToJson(this);
  }
}

abstract class _TransactionMobileDataBillingDetailResponse
    implements TransactionMobileDataBillingDetailResponse {
  const factory _TransactionMobileDataBillingDetailResponse(
          {required String? title,
          required int? amount,
          required String? vaNumber,
          required String? expires,
          required String? expiresAt}) =
      _$_TransactionMobileDataBillingDetailResponse;

  factory _TransactionMobileDataBillingDetailResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataBillingDetailResponse.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  String? get vaNumber => throw _privateConstructorUsedError;
  @override
  String? get expires => throw _privateConstructorUsedError;
  @override
  String? get expiresAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataBillingDetailResponseCopyWith<
          _TransactionMobileDataBillingDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataDeliveryResponse
    _$TransactionMobileDataDeliveryResponseFromJson(Map<String, dynamic> json) {
  return _TransactionMobileDataDeliveryResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataDeliveryResponseTearOff {
  const _$TransactionMobileDataDeliveryResponseTearOff();

  _TransactionMobileDataDeliveryResponse call(
      {required String provider,
      required int price,
      required String address,
      required String shipmentMethod,
      required List<String> location}) {
    return _TransactionMobileDataDeliveryResponse(
      provider: provider,
      price: price,
      address: address,
      shipmentMethod: shipmentMethod,
      location: location,
    );
  }

  TransactionMobileDataDeliveryResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataDeliveryResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataDeliveryResponse =
    _$TransactionMobileDataDeliveryResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataDeliveryResponse {
  String get provider => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get shipmentMethod => throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataDeliveryResponseCopyWith<
          TransactionMobileDataDeliveryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataDeliveryResponseCopyWith<$Res> {
  factory $TransactionMobileDataDeliveryResponseCopyWith(
          TransactionMobileDataDeliveryResponse value,
          $Res Function(TransactionMobileDataDeliveryResponse) then) =
      _$TransactionMobileDataDeliveryResponseCopyWithImpl<$Res>;
  $Res call(
      {String provider,
      int price,
      String address,
      String shipmentMethod,
      List<String> location});
}

/// @nodoc
class _$TransactionMobileDataDeliveryResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataDeliveryResponseCopyWith<$Res> {
  _$TransactionMobileDataDeliveryResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileDataDeliveryResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataDeliveryResponse) _then;

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
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMobileDataDeliveryResponseCopyWith<$Res>
    implements $TransactionMobileDataDeliveryResponseCopyWith<$Res> {
  factory _$TransactionMobileDataDeliveryResponseCopyWith(
          _TransactionMobileDataDeliveryResponse value,
          $Res Function(_TransactionMobileDataDeliveryResponse) then) =
      __$TransactionMobileDataDeliveryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String provider,
      int price,
      String address,
      String shipmentMethod,
      List<String> location});
}

/// @nodoc
class __$TransactionMobileDataDeliveryResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataDeliveryResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataDeliveryResponseCopyWith<$Res> {
  __$TransactionMobileDataDeliveryResponseCopyWithImpl(
      _TransactionMobileDataDeliveryResponse _value,
      $Res Function(_TransactionMobileDataDeliveryResponse) _then)
      : super(
            _value, (v) => _then(v as _TransactionMobileDataDeliveryResponse));

  @override
  _TransactionMobileDataDeliveryResponse get _value =>
      super._value as _TransactionMobileDataDeliveryResponse;

  @override
  $Res call({
    Object? provider = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? shipmentMethod = freezed,
    Object? location = freezed,
  }) {
    return _then(_TransactionMobileDataDeliveryResponse(
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
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataDeliveryResponse
    implements _TransactionMobileDataDeliveryResponse {
  const _$_TransactionMobileDataDeliveryResponse(
      {required this.provider,
      required this.price,
      required this.address,
      required this.shipmentMethod,
      required this.location});

  factory _$_TransactionMobileDataDeliveryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataDeliveryResponseFromJson(json);

  @override
  final String provider;
  @override
  final int price;
  @override
  final String address;
  @override
  final String shipmentMethod;
  @override
  final List<String> location;

  @override
  String toString() {
    return 'TransactionMobileDataDeliveryResponse(provider: $provider, price: $price, address: $address, shipmentMethod: $shipmentMethod, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataDeliveryResponse &&
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
  _$TransactionMobileDataDeliveryResponseCopyWith<
          _TransactionMobileDataDeliveryResponse>
      get copyWith => __$TransactionMobileDataDeliveryResponseCopyWithImpl<
          _TransactionMobileDataDeliveryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataDeliveryResponseToJson(this);
  }
}

abstract class _TransactionMobileDataDeliveryResponse
    implements TransactionMobileDataDeliveryResponse {
  const factory _TransactionMobileDataDeliveryResponse(
          {required String provider,
          required int price,
          required String address,
          required String shipmentMethod,
          required List<String> location}) =
      _$_TransactionMobileDataDeliveryResponse;

  factory _TransactionMobileDataDeliveryResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataDeliveryResponse.fromJson;

  @override
  String get provider => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get shipmentMethod => throw _privateConstructorUsedError;
  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataDeliveryResponseCopyWith<
          _TransactionMobileDataDeliveryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataDeliveryDetailResponse
    _$TransactionMobileDataDeliveryDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _TransactionMobileDataDeliveryDetailResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataDeliveryDetailResponseTearOff {
  const _$TransactionMobileDataDeliveryDetailResponseTearOff();

  _TransactionMobileDataDeliveryDetailResponse call(
      {required String? orderId,
      required String? distance,
      required String? provider,
      required String? shipmentMethod,
      required dynamic fee,
      required String? bookingCode,
      required String? bookingExpired,
      required String? deliveryId,
      required bool? isDelivered,
      required TransactionMobileDataDeliveryDetailFromToResponse? from,
      required TransactionMobileDataDeliveryDetailFromToResponse? to,
      required List<dynamic>? status,
      required bool? isDelete,
      required String? createdDate,
      required String? ownerPhone,
      required String? driverName,
      required String? driverPhone}) {
    return _TransactionMobileDataDeliveryDetailResponse(
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
      driverName: driverName,
      driverPhone: driverPhone,
    );
  }

  TransactionMobileDataDeliveryDetailResponse fromJson(
      Map<String, Object> json) {
    return TransactionMobileDataDeliveryDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataDeliveryDetailResponse =
    _$TransactionMobileDataDeliveryDetailResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataDeliveryDetailResponse {
  String? get orderId => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  String? get shipmentMethod => throw _privateConstructorUsedError;
  dynamic get fee => throw _privateConstructorUsedError;
  String? get bookingCode => throw _privateConstructorUsedError;
  String? get bookingExpired => throw _privateConstructorUsedError;
  String? get deliveryId => throw _privateConstructorUsedError;
  bool? get isDelivered => throw _privateConstructorUsedError;
  TransactionMobileDataDeliveryDetailFromToResponse? get from =>
      throw _privateConstructorUsedError;
  TransactionMobileDataDeliveryDetailFromToResponse? get to =>
      throw _privateConstructorUsedError;
  List<dynamic>? get status => throw _privateConstructorUsedError;
  bool? get isDelete => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  String? get ownerPhone => throw _privateConstructorUsedError;
  String? get driverName => throw _privateConstructorUsedError;
  String? get driverPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataDeliveryDetailResponseCopyWith<
          TransactionMobileDataDeliveryDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res> {
  factory $TransactionMobileDataDeliveryDetailResponseCopyWith(
          TransactionMobileDataDeliveryDetailResponse value,
          $Res Function(TransactionMobileDataDeliveryDetailResponse) then) =
      _$TransactionMobileDataDeliveryDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String? orderId,
      String? distance,
      String? provider,
      String? shipmentMethod,
      dynamic fee,
      String? bookingCode,
      String? bookingExpired,
      String? deliveryId,
      bool? isDelivered,
      TransactionMobileDataDeliveryDetailFromToResponse? from,
      TransactionMobileDataDeliveryDetailFromToResponse? to,
      List<dynamic>? status,
      bool? isDelete,
      String? createdDate,
      String? ownerPhone,
      String? driverName,
      String? driverPhone});

  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>? get from;
  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>? get to;
}

/// @nodoc
class _$TransactionMobileDataDeliveryDetailResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res> {
  _$TransactionMobileDataDeliveryDetailResponseCopyWithImpl(
      this._value, this._then);

  final TransactionMobileDataDeliveryDetailResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataDeliveryDetailResponse) _then;

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
    Object? driverName = freezed,
    Object? driverPhone = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingCode: bookingCode == freezed
          ? _value.bookingCode
          : bookingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingExpired: bookingExpired == freezed
          ? _value.bookingExpired
          : bookingExpired // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDelivered: isDelivered == freezed
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryDetailFromToResponse?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryDetailFromToResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>(
        _value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>(
        _value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionMobileDataDeliveryDetailResponseCopyWith<$Res>
    implements $TransactionMobileDataDeliveryDetailResponseCopyWith<$Res> {
  factory _$TransactionMobileDataDeliveryDetailResponseCopyWith(
          _TransactionMobileDataDeliveryDetailResponse value,
          $Res Function(_TransactionMobileDataDeliveryDetailResponse) then) =
      __$TransactionMobileDataDeliveryDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? orderId,
      String? distance,
      String? provider,
      String? shipmentMethod,
      dynamic fee,
      String? bookingCode,
      String? bookingExpired,
      String? deliveryId,
      bool? isDelivered,
      TransactionMobileDataDeliveryDetailFromToResponse? from,
      TransactionMobileDataDeliveryDetailFromToResponse? to,
      List<dynamic>? status,
      bool? isDelete,
      String? createdDate,
      String? ownerPhone,
      String? driverName,
      String? driverPhone});

  @override
  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>? get from;
  @override
  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>? get to;
}

/// @nodoc
class __$TransactionMobileDataDeliveryDetailResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataDeliveryDetailResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataDeliveryDetailResponseCopyWith<$Res> {
  __$TransactionMobileDataDeliveryDetailResponseCopyWithImpl(
      _TransactionMobileDataDeliveryDetailResponse _value,
      $Res Function(_TransactionMobileDataDeliveryDetailResponse) _then)
      : super(_value,
            (v) => _then(v as _TransactionMobileDataDeliveryDetailResponse));

  @override
  _TransactionMobileDataDeliveryDetailResponse get _value =>
      super._value as _TransactionMobileDataDeliveryDetailResponse;

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
    Object? driverName = freezed,
    Object? driverPhone = freezed,
  }) {
    return _then(_TransactionMobileDataDeliveryDetailResponse(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingCode: bookingCode == freezed
          ? _value.bookingCode
          : bookingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingExpired: bookingExpired == freezed
          ? _value.bookingExpired
          : bookingExpired // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDelivered: isDelivered == freezed
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryDetailFromToResponse?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TransactionMobileDataDeliveryDetailFromToResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataDeliveryDetailResponse
    implements _TransactionMobileDataDeliveryDetailResponse {
  const _$_TransactionMobileDataDeliveryDetailResponse(
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
      required this.ownerPhone,
      required this.driverName,
      required this.driverPhone});

  factory _$_TransactionMobileDataDeliveryDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataDeliveryDetailResponseFromJson(json);

  @override
  final String? orderId;
  @override
  final String? distance;
  @override
  final String? provider;
  @override
  final String? shipmentMethod;
  @override
  final dynamic fee;
  @override
  final String? bookingCode;
  @override
  final String? bookingExpired;
  @override
  final String? deliveryId;
  @override
  final bool? isDelivered;
  @override
  final TransactionMobileDataDeliveryDetailFromToResponse? from;
  @override
  final TransactionMobileDataDeliveryDetailFromToResponse? to;
  @override
  final List<dynamic>? status;
  @override
  final bool? isDelete;
  @override
  final String? createdDate;
  @override
  final String? ownerPhone;
  @override
  final String? driverName;
  @override
  final String? driverPhone;

  @override
  String toString() {
    return 'TransactionMobileDataDeliveryDetailResponse(orderId: $orderId, distance: $distance, provider: $provider, shipmentMethod: $shipmentMethod, fee: $fee, bookingCode: $bookingCode, bookingExpired: $bookingExpired, deliveryId: $deliveryId, isDelivered: $isDelivered, from: $from, to: $to, status: $status, isDelete: $isDelete, createdDate: $createdDate, ownerPhone: $ownerPhone, driverName: $driverName, driverPhone: $driverPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataDeliveryDetailResponse &&
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
                    .equals(other.ownerPhone, ownerPhone)) &&
            (identical(other.driverName, driverName) ||
                const DeepCollectionEquality()
                    .equals(other.driverName, driverName)) &&
            (identical(other.driverPhone, driverPhone) ||
                const DeepCollectionEquality()
                    .equals(other.driverPhone, driverPhone)));
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
      const DeepCollectionEquality().hash(ownerPhone) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(driverPhone);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataDeliveryDetailResponseCopyWith<
          _TransactionMobileDataDeliveryDetailResponse>
      get copyWith =>
          __$TransactionMobileDataDeliveryDetailResponseCopyWithImpl<
              _TransactionMobileDataDeliveryDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataDeliveryDetailResponseToJson(this);
  }
}

abstract class _TransactionMobileDataDeliveryDetailResponse
    implements TransactionMobileDataDeliveryDetailResponse {
  const factory _TransactionMobileDataDeliveryDetailResponse(
          {required String? orderId,
          required String? distance,
          required String? provider,
          required String? shipmentMethod,
          required dynamic fee,
          required String? bookingCode,
          required String? bookingExpired,
          required String? deliveryId,
          required bool? isDelivered,
          required TransactionMobileDataDeliveryDetailFromToResponse? from,
          required TransactionMobileDataDeliveryDetailFromToResponse? to,
          required List<dynamic>? status,
          required bool? isDelete,
          required String? createdDate,
          required String? ownerPhone,
          required String? driverName,
          required String? driverPhone}) =
      _$_TransactionMobileDataDeliveryDetailResponse;

  factory _TransactionMobileDataDeliveryDetailResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataDeliveryDetailResponse.fromJson;

  @override
  String? get orderId => throw _privateConstructorUsedError;
  @override
  String? get distance => throw _privateConstructorUsedError;
  @override
  String? get provider => throw _privateConstructorUsedError;
  @override
  String? get shipmentMethod => throw _privateConstructorUsedError;
  @override
  dynamic get fee => throw _privateConstructorUsedError;
  @override
  String? get bookingCode => throw _privateConstructorUsedError;
  @override
  String? get bookingExpired => throw _privateConstructorUsedError;
  @override
  String? get deliveryId => throw _privateConstructorUsedError;
  @override
  bool? get isDelivered => throw _privateConstructorUsedError;
  @override
  TransactionMobileDataDeliveryDetailFromToResponse? get from =>
      throw _privateConstructorUsedError;
  @override
  TransactionMobileDataDeliveryDetailFromToResponse? get to =>
      throw _privateConstructorUsedError;
  @override
  List<dynamic>? get status => throw _privateConstructorUsedError;
  @override
  bool? get isDelete => throw _privateConstructorUsedError;
  @override
  String? get createdDate => throw _privateConstructorUsedError;
  @override
  String? get ownerPhone => throw _privateConstructorUsedError;
  @override
  String? get driverName => throw _privateConstructorUsedError;
  @override
  String? get driverPhone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataDeliveryDetailResponseCopyWith<
          _TransactionMobileDataDeliveryDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataDeliveryDetailFromToResponse
    _$TransactionMobileDataDeliveryDetailFromToResponseFromJson(
        Map<String, dynamic> json) {
  return _TransactionMobileDataDeliveryDetailFromToResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataDeliveryDetailFromToResponseTearOff {
  const _$TransactionMobileDataDeliveryDetailFromToResponseTearOff();

  _TransactionMobileDataDeliveryDetailFromToResponse call(
      {required List<String> location,
      required String name,
      required String address,
      required String phone}) {
    return _TransactionMobileDataDeliveryDetailFromToResponse(
      location: location,
      name: name,
      address: address,
      phone: phone,
    );
  }

  TransactionMobileDataDeliveryDetailFromToResponse fromJson(
      Map<String, Object> json) {
    return TransactionMobileDataDeliveryDetailFromToResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataDeliveryDetailFromToResponse =
    _$TransactionMobileDataDeliveryDetailFromToResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataDeliveryDetailFromToResponse {
  List<String> get location => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<
          TransactionMobileDataDeliveryDetailFromToResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<
    $Res> {
  factory $TransactionMobileDataDeliveryDetailFromToResponseCopyWith(
          TransactionMobileDataDeliveryDetailFromToResponse value,
          $Res Function(TransactionMobileDataDeliveryDetailFromToResponse)
              then) =
      _$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl<$Res>;
  $Res call({List<String> location, String name, String address, String phone});
}

/// @nodoc
class _$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl<$Res>
    implements
        $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res> {
  _$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl(
      this._value, this._then);

  final TransactionMobileDataDeliveryDetailFromToResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataDeliveryDetailFromToResponse) _then;

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
              as List<String>,
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
abstract class _$TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res>
    implements
        $TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res> {
  factory _$TransactionMobileDataDeliveryDetailFromToResponseCopyWith(
          _TransactionMobileDataDeliveryDetailFromToResponse value,
          $Res Function(_TransactionMobileDataDeliveryDetailFromToResponse)
              then) =
      __$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<String> location, String name, String address, String phone});
}

/// @nodoc
class __$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl<
        $Res>
    implements
        _$TransactionMobileDataDeliveryDetailFromToResponseCopyWith<$Res> {
  __$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl(
      _TransactionMobileDataDeliveryDetailFromToResponse _value,
      $Res Function(_TransactionMobileDataDeliveryDetailFromToResponse) _then)
      : super(
            _value,
            (v) =>
                _then(v as _TransactionMobileDataDeliveryDetailFromToResponse));

  @override
  _TransactionMobileDataDeliveryDetailFromToResponse get _value =>
      super._value as _TransactionMobileDataDeliveryDetailFromToResponse;

  @override
  $Res call({
    Object? location = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_TransactionMobileDataDeliveryDetailFromToResponse(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$_TransactionMobileDataDeliveryDetailFromToResponse
    implements _TransactionMobileDataDeliveryDetailFromToResponse {
  const _$_TransactionMobileDataDeliveryDetailFromToResponse(
      {required this.location,
      required this.name,
      required this.address,
      required this.phone});

  factory _$_TransactionMobileDataDeliveryDetailFromToResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataDeliveryDetailFromToResponseFromJson(json);

  @override
  final List<String> location;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;

  @override
  String toString() {
    return 'TransactionMobileDataDeliveryDetailFromToResponse(location: $location, name: $name, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataDeliveryDetailFromToResponse &&
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
  _$TransactionMobileDataDeliveryDetailFromToResponseCopyWith<
          _TransactionMobileDataDeliveryDetailFromToResponse>
      get copyWith =>
          __$TransactionMobileDataDeliveryDetailFromToResponseCopyWithImpl<
                  _TransactionMobileDataDeliveryDetailFromToResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataDeliveryDetailFromToResponseToJson(this);
  }
}

abstract class _TransactionMobileDataDeliveryDetailFromToResponse
    implements TransactionMobileDataDeliveryDetailFromToResponse {
  const factory _TransactionMobileDataDeliveryDetailFromToResponse(
          {required List<String> location,
          required String name,
          required String address,
          required String phone}) =
      _$_TransactionMobileDataDeliveryDetailFromToResponse;

  factory _TransactionMobileDataDeliveryDetailFromToResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataDeliveryDetailFromToResponse.fromJson;

  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataDeliveryDetailFromToResponseCopyWith<
          _TransactionMobileDataDeliveryDetailFromToResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataOutletResponse
    _$TransactionMobileDataOutletResponseFromJson(Map<String, dynamic> json) {
  return _TransactionMobileDataOutletResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataOutletResponseTearOff {
  const _$TransactionMobileDataOutletResponseTearOff();

  _TransactionMobileDataOutletResponse call(
      {required String name,
      required String outletId,
      required String merchantId,
      required String cashierId,
      required String deviceId,
      required String assignId,
      required Moka quinos,
      required bool isNonSku,
      required Moka moka,
      required TransactionMobileDataOutletDetailResponse detail,
      required dynamic roundingDigit,
      required dynamic roundingType,
      required bool isLive,
      required OrderMethod orderMethod,
      required bool isDelete,
      required String createdDate,
      required String poCutoff}) {
    return _TransactionMobileDataOutletResponse(
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
      roundingDigit: roundingDigit,
      roundingType: roundingType,
      isLive: isLive,
      orderMethod: orderMethod,
      isDelete: isDelete,
      createdDate: createdDate,
      poCutoff: poCutoff,
    );
  }

  TransactionMobileDataOutletResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataOutletResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataOutletResponse =
    _$TransactionMobileDataOutletResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataOutletResponse {
  String get name => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get cashierId => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get assignId => throw _privateConstructorUsedError;
  Moka get quinos => throw _privateConstructorUsedError;
  bool get isNonSku => throw _privateConstructorUsedError;
  Moka get moka => throw _privateConstructorUsedError;
  TransactionMobileDataOutletDetailResponse get detail =>
      throw _privateConstructorUsedError;
  dynamic get roundingDigit => throw _privateConstructorUsedError;
  dynamic get roundingType => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get poCutoff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataOutletResponseCopyWith<
          TransactionMobileDataOutletResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataOutletResponseCopyWith<$Res> {
  factory $TransactionMobileDataOutletResponseCopyWith(
          TransactionMobileDataOutletResponse value,
          $Res Function(TransactionMobileDataOutletResponse) then) =
      _$TransactionMobileDataOutletResponseCopyWithImpl<$Res>;
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
      TransactionMobileDataOutletDetailResponse detail,
      dynamic roundingDigit,
      dynamic roundingType,
      bool isLive,
      OrderMethod orderMethod,
      bool isDelete,
      String createdDate,
      String poCutoff});

  $MokaCopyWith<$Res> get quinos;
  $MokaCopyWith<$Res> get moka;
  $TransactionMobileDataOutletDetailResponseCopyWith<$Res> get detail;
  $OrderMethodCopyWith<$Res> get orderMethod;
}

/// @nodoc
class _$TransactionMobileDataOutletResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataOutletResponseCopyWith<$Res> {
  _$TransactionMobileDataOutletResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileDataOutletResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataOutletResponse) _then;

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
    Object? roundingDigit = freezed,
    Object? roundingType = freezed,
    Object? isLive = freezed,
    Object? orderMethod = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
    Object? poCutoff = freezed,
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
              as TransactionMobileDataOutletDetailResponse,
      roundingDigit: roundingDigit == freezed
          ? _value.roundingDigit
          : roundingDigit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roundingType: roundingType == freezed
          ? _value.roundingType
          : roundingType // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as String,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String,
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
  $TransactionMobileDataOutletDetailResponseCopyWith<$Res> get detail {
    return $TransactionMobileDataOutletDetailResponseCopyWith<$Res>(
        _value.detail, (value) {
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
abstract class _$TransactionMobileDataOutletResponseCopyWith<$Res>
    implements $TransactionMobileDataOutletResponseCopyWith<$Res> {
  factory _$TransactionMobileDataOutletResponseCopyWith(
          _TransactionMobileDataOutletResponse value,
          $Res Function(_TransactionMobileDataOutletResponse) then) =
      __$TransactionMobileDataOutletResponseCopyWithImpl<$Res>;
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
      TransactionMobileDataOutletDetailResponse detail,
      dynamic roundingDigit,
      dynamic roundingType,
      bool isLive,
      OrderMethod orderMethod,
      bool isDelete,
      String createdDate,
      String poCutoff});

  @override
  $MokaCopyWith<$Res> get quinos;
  @override
  $MokaCopyWith<$Res> get moka;
  @override
  $TransactionMobileDataOutletDetailResponseCopyWith<$Res> get detail;
  @override
  $OrderMethodCopyWith<$Res> get orderMethod;
}

/// @nodoc
class __$TransactionMobileDataOutletResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataOutletResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataOutletResponseCopyWith<$Res> {
  __$TransactionMobileDataOutletResponseCopyWithImpl(
      _TransactionMobileDataOutletResponse _value,
      $Res Function(_TransactionMobileDataOutletResponse) _then)
      : super(_value, (v) => _then(v as _TransactionMobileDataOutletResponse));

  @override
  _TransactionMobileDataOutletResponse get _value =>
      super._value as _TransactionMobileDataOutletResponse;

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
    Object? roundingDigit = freezed,
    Object? roundingType = freezed,
    Object? isLive = freezed,
    Object? orderMethod = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
    Object? poCutoff = freezed,
  }) {
    return _then(_TransactionMobileDataOutletResponse(
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
              as TransactionMobileDataOutletDetailResponse,
      roundingDigit: roundingDigit == freezed
          ? _value.roundingDigit
          : roundingDigit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roundingType: roundingType == freezed
          ? _value.roundingType
          : roundingType // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as String,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataOutletResponse
    implements _TransactionMobileDataOutletResponse {
  const _$_TransactionMobileDataOutletResponse(
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
      required this.roundingDigit,
      required this.roundingType,
      required this.isLive,
      required this.orderMethod,
      required this.isDelete,
      required this.createdDate,
      required this.poCutoff});

  factory _$_TransactionMobileDataOutletResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataOutletResponseFromJson(json);

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
  final TransactionMobileDataOutletDetailResponse detail;
  @override
  final dynamic roundingDigit;
  @override
  final dynamic roundingType;
  @override
  final bool isLive;
  @override
  final OrderMethod orderMethod;
  @override
  final bool isDelete;
  @override
  final String createdDate;
  @override
  final String poCutoff;

  @override
  String toString() {
    return 'TransactionMobileDataOutletResponse(name: $name, outletId: $outletId, merchantId: $merchantId, cashierId: $cashierId, deviceId: $deviceId, assignId: $assignId, quinos: $quinos, isNonSku: $isNonSku, moka: $moka, detail: $detail, roundingDigit: $roundingDigit, roundingType: $roundingType, isLive: $isLive, orderMethod: $orderMethod, isDelete: $isDelete, createdDate: $createdDate, poCutoff: $poCutoff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataOutletResponse &&
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
            (identical(other.roundingDigit, roundingDigit) ||
                const DeepCollectionEquality()
                    .equals(other.roundingDigit, roundingDigit)) &&
            (identical(other.roundingType, roundingType) ||
                const DeepCollectionEquality()
                    .equals(other.roundingType, roundingType)) &&
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
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.poCutoff, poCutoff) ||
                const DeepCollectionEquality()
                    .equals(other.poCutoff, poCutoff)));
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
      const DeepCollectionEquality().hash(roundingDigit) ^
      const DeepCollectionEquality().hash(roundingType) ^
      const DeepCollectionEquality().hash(isLive) ^
      const DeepCollectionEquality().hash(orderMethod) ^
      const DeepCollectionEquality().hash(isDelete) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(poCutoff);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataOutletResponseCopyWith<
          _TransactionMobileDataOutletResponse>
      get copyWith => __$TransactionMobileDataOutletResponseCopyWithImpl<
          _TransactionMobileDataOutletResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataOutletResponseToJson(this);
  }
}

abstract class _TransactionMobileDataOutletResponse
    implements TransactionMobileDataOutletResponse {
  const factory _TransactionMobileDataOutletResponse(
      {required String name,
      required String outletId,
      required String merchantId,
      required String cashierId,
      required String deviceId,
      required String assignId,
      required Moka quinos,
      required bool isNonSku,
      required Moka moka,
      required TransactionMobileDataOutletDetailResponse detail,
      required dynamic roundingDigit,
      required dynamic roundingType,
      required bool isLive,
      required OrderMethod orderMethod,
      required bool isDelete,
      required String createdDate,
      required String poCutoff}) = _$_TransactionMobileDataOutletResponse;

  factory _TransactionMobileDataOutletResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataOutletResponse.fromJson;

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
  TransactionMobileDataOutletDetailResponse get detail =>
      throw _privateConstructorUsedError;
  @override
  dynamic get roundingDigit => throw _privateConstructorUsedError;
  @override
  dynamic get roundingType => throw _privateConstructorUsedError;
  @override
  bool get isLive => throw _privateConstructorUsedError;
  @override
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  @override
  bool get isDelete => throw _privateConstructorUsedError;
  @override
  String get createdDate => throw _privateConstructorUsedError;
  @override
  String get poCutoff => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataOutletResponseCopyWith<
          _TransactionMobileDataOutletResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataOutletDetailResponse
    _$TransactionMobileDataOutletDetailResponseFromJson(
        Map<String, dynamic> json) {
  return _TransactionMobileDataOutletDetailResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataOutletDetailResponseTearOff {
  const _$TransactionMobileDataOutletDetailResponseTearOff();

  _TransactionMobileDataOutletDetailResponse call(
      {required String name,
      required String address,
      required List<TransactionTaxesAndService> taxesAndServices,
      required List<String> location,
      required String phone,
      required String kurirPrice,
      required String deliveryType,
      required String maxRadius,
      required String driverPhone,
      required List<dynamic> area,
      required List<String>? deliveryProvider,
      required List<dynamic>? deliveryLocation}) {
    return _TransactionMobileDataOutletDetailResponse(
      name: name,
      address: address,
      taxesAndServices: taxesAndServices,
      location: location,
      phone: phone,
      kurirPrice: kurirPrice,
      deliveryType: deliveryType,
      maxRadius: maxRadius,
      driverPhone: driverPhone,
      area: area,
      deliveryProvider: deliveryProvider,
      deliveryLocation: deliveryLocation,
    );
  }

  TransactionMobileDataOutletDetailResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataOutletDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataOutletDetailResponse =
    _$TransactionMobileDataOutletDetailResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataOutletDetailResponse {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<TransactionTaxesAndService> get taxesAndServices =>
      throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get kurirPrice => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get maxRadius => throw _privateConstructorUsedError;
  String get driverPhone => throw _privateConstructorUsedError;
  List<dynamic> get area => throw _privateConstructorUsedError;
  List<String>? get deliveryProvider => throw _privateConstructorUsedError;
  List<dynamic>? get deliveryLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataOutletDetailResponseCopyWith<
          TransactionMobileDataOutletDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataOutletDetailResponseCopyWith<$Res> {
  factory $TransactionMobileDataOutletDetailResponseCopyWith(
          TransactionMobileDataOutletDetailResponse value,
          $Res Function(TransactionMobileDataOutletDetailResponse) then) =
      _$TransactionMobileDataOutletDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String address,
      List<TransactionTaxesAndService> taxesAndServices,
      List<String> location,
      String phone,
      String kurirPrice,
      String deliveryType,
      String maxRadius,
      String driverPhone,
      List<dynamic> area,
      List<String>? deliveryProvider,
      List<dynamic>? deliveryLocation});
}

/// @nodoc
class _$TransactionMobileDataOutletDetailResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataOutletDetailResponseCopyWith<$Res> {
  _$TransactionMobileDataOutletDetailResponseCopyWithImpl(
      this._value, this._then);

  final TransactionMobileDataOutletDetailResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataOutletDetailResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? taxesAndServices = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? kurirPrice = freezed,
    Object? deliveryType = freezed,
    Object? maxRadius = freezed,
    Object? driverPhone = freezed,
    Object? area = freezed,
    Object? deliveryProvider = freezed,
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
              as List<TransactionTaxesAndService>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kurirPrice: kurirPrice == freezed
          ? _value.kurirPrice
          : kurirPrice // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      maxRadius: maxRadius == freezed
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as String,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      deliveryProvider: deliveryProvider == freezed
          ? _value.deliveryProvider
          : deliveryProvider // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deliveryLocation: deliveryLocation == freezed
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMobileDataOutletDetailResponseCopyWith<$Res>
    implements $TransactionMobileDataOutletDetailResponseCopyWith<$Res> {
  factory _$TransactionMobileDataOutletDetailResponseCopyWith(
          _TransactionMobileDataOutletDetailResponse value,
          $Res Function(_TransactionMobileDataOutletDetailResponse) then) =
      __$TransactionMobileDataOutletDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      List<TransactionTaxesAndService> taxesAndServices,
      List<String> location,
      String phone,
      String kurirPrice,
      String deliveryType,
      String maxRadius,
      String driverPhone,
      List<dynamic> area,
      List<String>? deliveryProvider,
      List<dynamic>? deliveryLocation});
}

/// @nodoc
class __$TransactionMobileDataOutletDetailResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataOutletDetailResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataOutletDetailResponseCopyWith<$Res> {
  __$TransactionMobileDataOutletDetailResponseCopyWithImpl(
      _TransactionMobileDataOutletDetailResponse _value,
      $Res Function(_TransactionMobileDataOutletDetailResponse) _then)
      : super(_value,
            (v) => _then(v as _TransactionMobileDataOutletDetailResponse));

  @override
  _TransactionMobileDataOutletDetailResponse get _value =>
      super._value as _TransactionMobileDataOutletDetailResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? taxesAndServices = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? kurirPrice = freezed,
    Object? deliveryType = freezed,
    Object? maxRadius = freezed,
    Object? driverPhone = freezed,
    Object? area = freezed,
    Object? deliveryProvider = freezed,
    Object? deliveryLocation = freezed,
  }) {
    return _then(_TransactionMobileDataOutletDetailResponse(
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
              as List<TransactionTaxesAndService>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kurirPrice: kurirPrice == freezed
          ? _value.kurirPrice
          : kurirPrice // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      maxRadius: maxRadius == freezed
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as String,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      deliveryProvider: deliveryProvider == freezed
          ? _value.deliveryProvider
          : deliveryProvider // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deliveryLocation: deliveryLocation == freezed
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataOutletDetailResponse
    implements _TransactionMobileDataOutletDetailResponse {
  const _$_TransactionMobileDataOutletDetailResponse(
      {required this.name,
      required this.address,
      required this.taxesAndServices,
      required this.location,
      required this.phone,
      required this.kurirPrice,
      required this.deliveryType,
      required this.maxRadius,
      required this.driverPhone,
      required this.area,
      required this.deliveryProvider,
      required this.deliveryLocation});

  factory _$_TransactionMobileDataOutletDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataOutletDetailResponseFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final List<TransactionTaxesAndService> taxesAndServices;
  @override
  final List<String> location;
  @override
  final String phone;
  @override
  final String kurirPrice;
  @override
  final String deliveryType;
  @override
  final String maxRadius;
  @override
  final String driverPhone;
  @override
  final List<dynamic> area;
  @override
  final List<String>? deliveryProvider;
  @override
  final List<dynamic>? deliveryLocation;

  @override
  String toString() {
    return 'TransactionMobileDataOutletDetailResponse(name: $name, address: $address, taxesAndServices: $taxesAndServices, location: $location, phone: $phone, kurirPrice: $kurirPrice, deliveryType: $deliveryType, maxRadius: $maxRadius, driverPhone: $driverPhone, area: $area, deliveryProvider: $deliveryProvider, deliveryLocation: $deliveryLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataOutletDetailResponse &&
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
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.maxRadius, maxRadius) ||
                const DeepCollectionEquality()
                    .equals(other.maxRadius, maxRadius)) &&
            (identical(other.driverPhone, driverPhone) ||
                const DeepCollectionEquality()
                    .equals(other.driverPhone, driverPhone)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.deliveryProvider, deliveryProvider) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryProvider, deliveryProvider)) &&
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
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(maxRadius) ^
      const DeepCollectionEquality().hash(driverPhone) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(deliveryProvider) ^
      const DeepCollectionEquality().hash(deliveryLocation);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataOutletDetailResponseCopyWith<
          _TransactionMobileDataOutletDetailResponse>
      get copyWith => __$TransactionMobileDataOutletDetailResponseCopyWithImpl<
          _TransactionMobileDataOutletDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataOutletDetailResponseToJson(this);
  }
}

abstract class _TransactionMobileDataOutletDetailResponse
    implements TransactionMobileDataOutletDetailResponse {
  const factory _TransactionMobileDataOutletDetailResponse(
          {required String name,
          required String address,
          required List<TransactionTaxesAndService> taxesAndServices,
          required List<String> location,
          required String phone,
          required String kurirPrice,
          required String deliveryType,
          required String maxRadius,
          required String driverPhone,
          required List<dynamic> area,
          required List<String>? deliveryProvider,
          required List<dynamic>? deliveryLocation}) =
      _$_TransactionMobileDataOutletDetailResponse;

  factory _TransactionMobileDataOutletDetailResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataOutletDetailResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  List<TransactionTaxesAndService> get taxesAndServices =>
      throw _privateConstructorUsedError;
  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get kurirPrice => throw _privateConstructorUsedError;
  @override
  String get deliveryType => throw _privateConstructorUsedError;
  @override
  String get maxRadius => throw _privateConstructorUsedError;
  @override
  String get driverPhone => throw _privateConstructorUsedError;
  @override
  List<dynamic> get area => throw _privateConstructorUsedError;
  @override
  List<String>? get deliveryProvider => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get deliveryLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataOutletDetailResponseCopyWith<
          _TransactionMobileDataOutletDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionTaxesAndService _$TransactionTaxesAndServiceFromJson(
    Map<String, dynamic> json) {
  return _TransactionTaxesAndService.fromJson(json);
}

/// @nodoc
class _$TransactionTaxesAndServiceTearOff {
  const _$TransactionTaxesAndServiceTearOff();

  _TransactionTaxesAndService call(
      {required int id,
      required String name,
      required String title,
      required int amount,
      required dynamic type}) {
    return _TransactionTaxesAndService(
      id: id,
      name: name,
      title: title,
      amount: amount,
      type: type,
    );
  }

  TransactionTaxesAndService fromJson(Map<String, Object> json) {
    return TransactionTaxesAndService.fromJson(json);
  }
}

/// @nodoc
const $TransactionTaxesAndService = _$TransactionTaxesAndServiceTearOff();

/// @nodoc
mixin _$TransactionTaxesAndService {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionTaxesAndServiceCopyWith<TransactionTaxesAndService>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionTaxesAndServiceCopyWith<$Res> {
  factory $TransactionTaxesAndServiceCopyWith(TransactionTaxesAndService value,
          $Res Function(TransactionTaxesAndService) then) =
      _$TransactionTaxesAndServiceCopyWithImpl<$Res>;
  $Res call({int id, String name, String title, int amount, dynamic type});
}

/// @nodoc
class _$TransactionTaxesAndServiceCopyWithImpl<$Res>
    implements $TransactionTaxesAndServiceCopyWith<$Res> {
  _$TransactionTaxesAndServiceCopyWithImpl(this._value, this._then);

  final TransactionTaxesAndService _value;
  // ignore: unused_field
  final $Res Function(TransactionTaxesAndService) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$TransactionTaxesAndServiceCopyWith<$Res>
    implements $TransactionTaxesAndServiceCopyWith<$Res> {
  factory _$TransactionTaxesAndServiceCopyWith(
          _TransactionTaxesAndService value,
          $Res Function(_TransactionTaxesAndService) then) =
      __$TransactionTaxesAndServiceCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String title, int amount, dynamic type});
}

/// @nodoc
class __$TransactionTaxesAndServiceCopyWithImpl<$Res>
    extends _$TransactionTaxesAndServiceCopyWithImpl<$Res>
    implements _$TransactionTaxesAndServiceCopyWith<$Res> {
  __$TransactionTaxesAndServiceCopyWithImpl(_TransactionTaxesAndService _value,
      $Res Function(_TransactionTaxesAndService) _then)
      : super(_value, (v) => _then(v as _TransactionTaxesAndService));

  @override
  _TransactionTaxesAndService get _value =>
      super._value as _TransactionTaxesAndService;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? type = freezed,
  }) {
    return _then(_TransactionTaxesAndService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionTaxesAndService implements _TransactionTaxesAndService {
  const _$_TransactionTaxesAndService(
      {required this.id,
      required this.name,
      required this.title,
      required this.amount,
      required this.type});

  factory _$_TransactionTaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionTaxesAndServiceFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String title;
  @override
  final int amount;
  @override
  final dynamic type;

  @override
  String toString() {
    return 'TransactionTaxesAndService(id: $id, name: $name, title: $title, amount: $amount, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionTaxesAndService &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TransactionTaxesAndServiceCopyWith<_TransactionTaxesAndService>
      get copyWith => __$TransactionTaxesAndServiceCopyWithImpl<
          _TransactionTaxesAndService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionTaxesAndServiceToJson(this);
  }
}

abstract class _TransactionTaxesAndService
    implements TransactionTaxesAndService {
  const factory _TransactionTaxesAndService(
      {required int id,
      required String name,
      required String title,
      required int amount,
      required dynamic type}) = _$_TransactionTaxesAndService;

  factory _TransactionTaxesAndService.fromJson(Map<String, dynamic> json) =
      _$_TransactionTaxesAndService.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  dynamic get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionTaxesAndServiceCopyWith<_TransactionTaxesAndService>
      get copyWith => throw _privateConstructorUsedError;
}

Moka _$MokaFromJson(Map<String, dynamic> json) {
  return _Moka.fromJson(json);
}

/// @nodoc
class _$MokaTearOff {
  const _$MokaTearOff();

  _Moka call({required dynamic outletId}) {
    return _Moka(
      outletId: outletId,
    );
  }

  Moka fromJson(Map<String, Object> json) {
    return Moka.fromJson(json);
  }
}

/// @nodoc
const $Moka = _$MokaTearOff();

/// @nodoc
mixin _$Moka {
  dynamic get outletId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MokaCopyWith<Moka> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MokaCopyWith<$Res> {
  factory $MokaCopyWith(Moka value, $Res Function(Moka) then) =
      _$MokaCopyWithImpl<$Res>;
  $Res call({dynamic outletId});
}

/// @nodoc
class _$MokaCopyWithImpl<$Res> implements $MokaCopyWith<$Res> {
  _$MokaCopyWithImpl(this._value, this._then);

  final Moka _value;
  // ignore: unused_field
  final $Res Function(Moka) _then;

  @override
  $Res call({
    Object? outletId = freezed,
  }) {
    return _then(_value.copyWith(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$MokaCopyWith<$Res> implements $MokaCopyWith<$Res> {
  factory _$MokaCopyWith(_Moka value, $Res Function(_Moka) then) =
      __$MokaCopyWithImpl<$Res>;
  @override
  $Res call({dynamic outletId});
}

/// @nodoc
class __$MokaCopyWithImpl<$Res> extends _$MokaCopyWithImpl<$Res>
    implements _$MokaCopyWith<$Res> {
  __$MokaCopyWithImpl(_Moka _value, $Res Function(_Moka) _then)
      : super(_value, (v) => _then(v as _Moka));

  @override
  _Moka get _value => super._value as _Moka;

  @override
  $Res call({
    Object? outletId = freezed,
  }) {
    return _then(_Moka(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Moka implements _Moka {
  const _$_Moka({required this.outletId});

  factory _$_Moka.fromJson(Map<String, dynamic> json) =>
      _$_$_MokaFromJson(json);

  @override
  final dynamic outletId;

  @override
  String toString() {
    return 'Moka(outletId: $outletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Moka &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outletId);

  @JsonKey(ignore: true)
  @override
  _$MokaCopyWith<_Moka> get copyWith =>
      __$MokaCopyWithImpl<_Moka>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MokaToJson(this);
  }
}

abstract class _Moka implements Moka {
  const factory _Moka({required dynamic outletId}) = _$_Moka;

  factory _Moka.fromJson(Map<String, dynamic> json) = _$_Moka.fromJson;

  @override
  dynamic get outletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MokaCopyWith<_Moka> get copyWith => throw _privateConstructorUsedError;
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

TransactionMobileDataPaymentListResponse
    _$TransactionMobileDataPaymentListResponseFromJson(
        Map<String, dynamic> json) {
  return _TransactionMobileDataPaymentListResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataPaymentListResponseTearOff {
  const _$TransactionMobileDataPaymentListResponseTearOff();

  _TransactionMobileDataPaymentListResponse call(
      {required int? amount,
      required String? method,
      required String? voucherRefNumber}) {
    return _TransactionMobileDataPaymentListResponse(
      amount: amount,
      method: method,
      voucherRefNumber: voucherRefNumber,
    );
  }

  TransactionMobileDataPaymentListResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataPaymentListResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataPaymentListResponse =
    _$TransactionMobileDataPaymentListResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataPaymentListResponse {
  int? get amount => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get voucherRefNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataPaymentListResponseCopyWith<
          TransactionMobileDataPaymentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataPaymentListResponseCopyWith<$Res> {
  factory $TransactionMobileDataPaymentListResponseCopyWith(
          TransactionMobileDataPaymentListResponse value,
          $Res Function(TransactionMobileDataPaymentListResponse) then) =
      _$TransactionMobileDataPaymentListResponseCopyWithImpl<$Res>;
  $Res call({int? amount, String? method, String? voucherRefNumber});
}

/// @nodoc
class _$TransactionMobileDataPaymentListResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataPaymentListResponseCopyWith<$Res> {
  _$TransactionMobileDataPaymentListResponseCopyWithImpl(
      this._value, this._then);

  final TransactionMobileDataPaymentListResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataPaymentListResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? method = freezed,
    Object? voucherRefNumber = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherRefNumber: voucherRefNumber == freezed
          ? _value.voucherRefNumber
          : voucherRefNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMobileDataPaymentListResponseCopyWith<$Res>
    implements $TransactionMobileDataPaymentListResponseCopyWith<$Res> {
  factory _$TransactionMobileDataPaymentListResponseCopyWith(
          _TransactionMobileDataPaymentListResponse value,
          $Res Function(_TransactionMobileDataPaymentListResponse) then) =
      __$TransactionMobileDataPaymentListResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? amount, String? method, String? voucherRefNumber});
}

/// @nodoc
class __$TransactionMobileDataPaymentListResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataPaymentListResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataPaymentListResponseCopyWith<$Res> {
  __$TransactionMobileDataPaymentListResponseCopyWithImpl(
      _TransactionMobileDataPaymentListResponse _value,
      $Res Function(_TransactionMobileDataPaymentListResponse) _then)
      : super(_value,
            (v) => _then(v as _TransactionMobileDataPaymentListResponse));

  @override
  _TransactionMobileDataPaymentListResponse get _value =>
      super._value as _TransactionMobileDataPaymentListResponse;

  @override
  $Res call({
    Object? amount = freezed,
    Object? method = freezed,
    Object? voucherRefNumber = freezed,
  }) {
    return _then(_TransactionMobileDataPaymentListResponse(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherRefNumber: voucherRefNumber == freezed
          ? _value.voucherRefNumber
          : voucherRefNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataPaymentListResponse
    implements _TransactionMobileDataPaymentListResponse {
  const _$_TransactionMobileDataPaymentListResponse(
      {required this.amount,
      required this.method,
      required this.voucherRefNumber});

  factory _$_TransactionMobileDataPaymentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataPaymentListResponseFromJson(json);

  @override
  final int? amount;
  @override
  final String? method;
  @override
  final String? voucherRefNumber;

  @override
  String toString() {
    return 'TransactionMobileDataPaymentListResponse(amount: $amount, method: $method, voucherRefNumber: $voucherRefNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataPaymentListResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)) &&
            (identical(other.voucherRefNumber, voucherRefNumber) ||
                const DeepCollectionEquality()
                    .equals(other.voucherRefNumber, voucherRefNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(voucherRefNumber);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataPaymentListResponseCopyWith<
          _TransactionMobileDataPaymentListResponse>
      get copyWith => __$TransactionMobileDataPaymentListResponseCopyWithImpl<
          _TransactionMobileDataPaymentListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataPaymentListResponseToJson(this);
  }
}

abstract class _TransactionMobileDataPaymentListResponse
    implements TransactionMobileDataPaymentListResponse {
  const factory _TransactionMobileDataPaymentListResponse(
          {required int? amount,
          required String? method,
          required String? voucherRefNumber}) =
      _$_TransactionMobileDataPaymentListResponse;

  factory _TransactionMobileDataPaymentListResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataPaymentListResponse.fromJson;

  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  String? get method => throw _privateConstructorUsedError;
  @override
  String? get voucherRefNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataPaymentListResponseCopyWith<
          _TransactionMobileDataPaymentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataPaymentResponse
    _$TransactionMobileDataPaymentResponseFromJson(Map<String, dynamic> json) {
  return _TransactionMobileDataPaymentResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataPaymentResponseTearOff {
  const _$TransactionMobileDataPaymentResponseTearOff();

  _TransactionMobileDataPaymentResponse call(
      {required int amount,
      required int change,
      required String method,
      required String companyPaymentMethodId,
      required String timestamp,
      required String title,
      required String? status}) {
    return _TransactionMobileDataPaymentResponse(
      amount: amount,
      change: change,
      method: method,
      companyPaymentMethodId: companyPaymentMethodId,
      timestamp: timestamp,
      title: title,
      status: status,
    );
  }

  TransactionMobileDataPaymentResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataPaymentResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataPaymentResponse =
    _$TransactionMobileDataPaymentResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataPaymentResponse {
  int get amount => throw _privateConstructorUsedError;
  int get change => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get companyPaymentMethodId => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataPaymentResponseCopyWith<
          TransactionMobileDataPaymentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataPaymentResponseCopyWith<$Res> {
  factory $TransactionMobileDataPaymentResponseCopyWith(
          TransactionMobileDataPaymentResponse value,
          $Res Function(TransactionMobileDataPaymentResponse) then) =
      _$TransactionMobileDataPaymentResponseCopyWithImpl<$Res>;
  $Res call(
      {int amount,
      int change,
      String method,
      String companyPaymentMethodId,
      String timestamp,
      String title,
      String? status});
}

/// @nodoc
class _$TransactionMobileDataPaymentResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataPaymentResponseCopyWith<$Res> {
  _$TransactionMobileDataPaymentResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileDataPaymentResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataPaymentResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? change = freezed,
    Object? method = freezed,
    Object? companyPaymentMethodId = freezed,
    Object? timestamp = freezed,
    Object? title = freezed,
    Object? status = freezed,
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
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMobileDataPaymentResponseCopyWith<$Res>
    implements $TransactionMobileDataPaymentResponseCopyWith<$Res> {
  factory _$TransactionMobileDataPaymentResponseCopyWith(
          _TransactionMobileDataPaymentResponse value,
          $Res Function(_TransactionMobileDataPaymentResponse) then) =
      __$TransactionMobileDataPaymentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int amount,
      int change,
      String method,
      String companyPaymentMethodId,
      String timestamp,
      String title,
      String? status});
}

/// @nodoc
class __$TransactionMobileDataPaymentResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataPaymentResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataPaymentResponseCopyWith<$Res> {
  __$TransactionMobileDataPaymentResponseCopyWithImpl(
      _TransactionMobileDataPaymentResponse _value,
      $Res Function(_TransactionMobileDataPaymentResponse) _then)
      : super(_value, (v) => _then(v as _TransactionMobileDataPaymentResponse));

  @override
  _TransactionMobileDataPaymentResponse get _value =>
      super._value as _TransactionMobileDataPaymentResponse;

  @override
  $Res call({
    Object? amount = freezed,
    Object? change = freezed,
    Object? method = freezed,
    Object? companyPaymentMethodId = freezed,
    Object? timestamp = freezed,
    Object? title = freezed,
    Object? status = freezed,
  }) {
    return _then(_TransactionMobileDataPaymentResponse(
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
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataPaymentResponse
    implements _TransactionMobileDataPaymentResponse {
  const _$_TransactionMobileDataPaymentResponse(
      {required this.amount,
      required this.change,
      required this.method,
      required this.companyPaymentMethodId,
      required this.timestamp,
      required this.title,
      required this.status});

  factory _$_TransactionMobileDataPaymentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataPaymentResponseFromJson(json);

  @override
  final int amount;
  @override
  final int change;
  @override
  final String method;
  @override
  final String companyPaymentMethodId;
  @override
  final String timestamp;
  @override
  final String title;
  @override
  final String? status;

  @override
  String toString() {
    return 'TransactionMobileDataPaymentResponse(amount: $amount, change: $change, method: $method, companyPaymentMethodId: $companyPaymentMethodId, timestamp: $timestamp, title: $title, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataPaymentResponse &&
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
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(change) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(companyPaymentMethodId) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataPaymentResponseCopyWith<
          _TransactionMobileDataPaymentResponse>
      get copyWith => __$TransactionMobileDataPaymentResponseCopyWithImpl<
          _TransactionMobileDataPaymentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataPaymentResponseToJson(this);
  }
}

abstract class _TransactionMobileDataPaymentResponse
    implements TransactionMobileDataPaymentResponse {
  const factory _TransactionMobileDataPaymentResponse(
      {required int amount,
      required int change,
      required String method,
      required String companyPaymentMethodId,
      required String timestamp,
      required String title,
      required String? status}) = _$_TransactionMobileDataPaymentResponse;

  factory _TransactionMobileDataPaymentResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataPaymentResponse.fromJson;

  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get change => throw _privateConstructorUsedError;
  @override
  String get method => throw _privateConstructorUsedError;
  @override
  String get companyPaymentMethodId => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataPaymentResponseCopyWith<
          _TransactionMobileDataPaymentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataPromoResponse _$TransactionMobileDataPromoResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionMobileDataPromoResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataPromoResponseTearOff {
  const _$TransactionMobileDataPromoResponseTearOff();

  _TransactionMobileDataPromoResponse call(
      {required List<String>? paymentTypes,
      required String? title,
      required String? promoType,
      required String? type,
      required int? discount,
      required int? minPurchase,
      required int? promoId,
      required String? voucherRefNumber,
      required String? voucherCode,
      required int amount}) {
    return _TransactionMobileDataPromoResponse(
      paymentTypes: paymentTypes,
      title: title,
      promoType: promoType,
      type: type,
      discount: discount,
      minPurchase: minPurchase,
      promoId: promoId,
      voucherRefNumber: voucherRefNumber,
      voucherCode: voucherCode,
      amount: amount,
    );
  }

  TransactionMobileDataPromoResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataPromoResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataPromoResponse =
    _$TransactionMobileDataPromoResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataPromoResponse {
  List<String>? get paymentTypes => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get promoType => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get minPurchase => throw _privateConstructorUsedError;
  int? get promoId => throw _privateConstructorUsedError;
  String? get voucherRefNumber => throw _privateConstructorUsedError;
  String? get voucherCode => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMobileDataPromoResponseCopyWith<
          TransactionMobileDataPromoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataPromoResponseCopyWith<$Res> {
  factory $TransactionMobileDataPromoResponseCopyWith(
          TransactionMobileDataPromoResponse value,
          $Res Function(TransactionMobileDataPromoResponse) then) =
      _$TransactionMobileDataPromoResponseCopyWithImpl<$Res>;
  $Res call(
      {List<String>? paymentTypes,
      String? title,
      String? promoType,
      String? type,
      int? discount,
      int? minPurchase,
      int? promoId,
      String? voucherRefNumber,
      String? voucherCode,
      int amount});
}

/// @nodoc
class _$TransactionMobileDataPromoResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataPromoResponseCopyWith<$Res> {
  _$TransactionMobileDataPromoResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileDataPromoResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataPromoResponse) _then;

  @override
  $Res call({
    Object? paymentTypes = freezed,
    Object? title = freezed,
    Object? promoType = freezed,
    Object? type = freezed,
    Object? discount = freezed,
    Object? minPurchase = freezed,
    Object? promoId = freezed,
    Object? voucherRefNumber = freezed,
    Object? voucherCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      paymentTypes: paymentTypes == freezed
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      promoType: promoType == freezed
          ? _value.promoType
          : promoType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      minPurchase: minPurchase == freezed
          ? _value.minPurchase
          : minPurchase // ignore: cast_nullable_to_non_nullable
              as int?,
      promoId: promoId == freezed
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as int?,
      voucherRefNumber: voucherRefNumber == freezed
          ? _value.voucherRefNumber
          : voucherRefNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherCode: voucherCode == freezed
          ? _value.voucherCode
          : voucherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMobileDataPromoResponseCopyWith<$Res>
    implements $TransactionMobileDataPromoResponseCopyWith<$Res> {
  factory _$TransactionMobileDataPromoResponseCopyWith(
          _TransactionMobileDataPromoResponse value,
          $Res Function(_TransactionMobileDataPromoResponse) then) =
      __$TransactionMobileDataPromoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? paymentTypes,
      String? title,
      String? promoType,
      String? type,
      int? discount,
      int? minPurchase,
      int? promoId,
      String? voucherRefNumber,
      String? voucherCode,
      int amount});
}

/// @nodoc
class __$TransactionMobileDataPromoResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataPromoResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataPromoResponseCopyWith<$Res> {
  __$TransactionMobileDataPromoResponseCopyWithImpl(
      _TransactionMobileDataPromoResponse _value,
      $Res Function(_TransactionMobileDataPromoResponse) _then)
      : super(_value, (v) => _then(v as _TransactionMobileDataPromoResponse));

  @override
  _TransactionMobileDataPromoResponse get _value =>
      super._value as _TransactionMobileDataPromoResponse;

  @override
  $Res call({
    Object? paymentTypes = freezed,
    Object? title = freezed,
    Object? promoType = freezed,
    Object? type = freezed,
    Object? discount = freezed,
    Object? minPurchase = freezed,
    Object? promoId = freezed,
    Object? voucherRefNumber = freezed,
    Object? voucherCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(_TransactionMobileDataPromoResponse(
      paymentTypes: paymentTypes == freezed
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      promoType: promoType == freezed
          ? _value.promoType
          : promoType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      minPurchase: minPurchase == freezed
          ? _value.minPurchase
          : minPurchase // ignore: cast_nullable_to_non_nullable
              as int?,
      promoId: promoId == freezed
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as int?,
      voucherRefNumber: voucherRefNumber == freezed
          ? _value.voucherRefNumber
          : voucherRefNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherCode: voucherCode == freezed
          ? _value.voucherCode
          : voucherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataPromoResponse
    implements _TransactionMobileDataPromoResponse {
  const _$_TransactionMobileDataPromoResponse(
      {required this.paymentTypes,
      required this.title,
      required this.promoType,
      required this.type,
      required this.discount,
      required this.minPurchase,
      required this.promoId,
      required this.voucherRefNumber,
      required this.voucherCode,
      required this.amount});

  factory _$_TransactionMobileDataPromoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataPromoResponseFromJson(json);

  @override
  final List<String>? paymentTypes;
  @override
  final String? title;
  @override
  final String? promoType;
  @override
  final String? type;
  @override
  final int? discount;
  @override
  final int? minPurchase;
  @override
  final int? promoId;
  @override
  final String? voucherRefNumber;
  @override
  final String? voucherCode;
  @override
  final int amount;

  @override
  String toString() {
    return 'TransactionMobileDataPromoResponse(paymentTypes: $paymentTypes, title: $title, promoType: $promoType, type: $type, discount: $discount, minPurchase: $minPurchase, promoId: $promoId, voucherRefNumber: $voucherRefNumber, voucherCode: $voucherCode, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataPromoResponse &&
            (identical(other.paymentTypes, paymentTypes) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTypes, paymentTypes)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.promoType, promoType) ||
                const DeepCollectionEquality()
                    .equals(other.promoType, promoType)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.minPurchase, minPurchase) ||
                const DeepCollectionEquality()
                    .equals(other.minPurchase, minPurchase)) &&
            (identical(other.promoId, promoId) ||
                const DeepCollectionEquality()
                    .equals(other.promoId, promoId)) &&
            (identical(other.voucherRefNumber, voucherRefNumber) ||
                const DeepCollectionEquality()
                    .equals(other.voucherRefNumber, voucherRefNumber)) &&
            (identical(other.voucherCode, voucherCode) ||
                const DeepCollectionEquality()
                    .equals(other.voucherCode, voucherCode)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentTypes) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(promoType) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(minPurchase) ^
      const DeepCollectionEquality().hash(promoId) ^
      const DeepCollectionEquality().hash(voucherRefNumber) ^
      const DeepCollectionEquality().hash(voucherCode) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$TransactionMobileDataPromoResponseCopyWith<
          _TransactionMobileDataPromoResponse>
      get copyWith => __$TransactionMobileDataPromoResponseCopyWithImpl<
          _TransactionMobileDataPromoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataPromoResponseToJson(this);
  }
}

abstract class _TransactionMobileDataPromoResponse
    implements TransactionMobileDataPromoResponse {
  const factory _TransactionMobileDataPromoResponse(
      {required List<String>? paymentTypes,
      required String? title,
      required String? promoType,
      required String? type,
      required int? discount,
      required int? minPurchase,
      required int? promoId,
      required String? voucherRefNumber,
      required String? voucherCode,
      required int amount}) = _$_TransactionMobileDataPromoResponse;

  factory _TransactionMobileDataPromoResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataPromoResponse.fromJson;

  @override
  List<String>? get paymentTypes => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get promoType => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get discount => throw _privateConstructorUsedError;
  @override
  int? get minPurchase => throw _privateConstructorUsedError;
  @override
  int? get promoId => throw _privateConstructorUsedError;
  @override
  String? get voucherRefNumber => throw _privateConstructorUsedError;
  @override
  String? get voucherCode => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMobileDataPromoResponseCopyWith<
          _TransactionMobileDataPromoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionMobileDataRatingResponse
    _$TransactionMobileDataRatingResponseFromJson(Map<String, dynamic> json) {
  return _TransactionMobileDataRatingResponse.fromJson(json);
}

/// @nodoc
class _$TransactionMobileDataRatingResponseTearOff {
  const _$TransactionMobileDataRatingResponseTearOff();

  _TransactionMobileDataRatingResponse call() {
    return const _TransactionMobileDataRatingResponse();
  }

  TransactionMobileDataRatingResponse fromJson(Map<String, Object> json) {
    return TransactionMobileDataRatingResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionMobileDataRatingResponse =
    _$TransactionMobileDataRatingResponseTearOff();

/// @nodoc
mixin _$TransactionMobileDataRatingResponse {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMobileDataRatingResponseCopyWith<$Res> {
  factory $TransactionMobileDataRatingResponseCopyWith(
          TransactionMobileDataRatingResponse value,
          $Res Function(TransactionMobileDataRatingResponse) then) =
      _$TransactionMobileDataRatingResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionMobileDataRatingResponseCopyWithImpl<$Res>
    implements $TransactionMobileDataRatingResponseCopyWith<$Res> {
  _$TransactionMobileDataRatingResponseCopyWithImpl(this._value, this._then);

  final TransactionMobileDataRatingResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionMobileDataRatingResponse) _then;
}

/// @nodoc
abstract class _$TransactionMobileDataRatingResponseCopyWith<$Res> {
  factory _$TransactionMobileDataRatingResponseCopyWith(
          _TransactionMobileDataRatingResponse value,
          $Res Function(_TransactionMobileDataRatingResponse) then) =
      __$TransactionMobileDataRatingResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$TransactionMobileDataRatingResponseCopyWithImpl<$Res>
    extends _$TransactionMobileDataRatingResponseCopyWithImpl<$Res>
    implements _$TransactionMobileDataRatingResponseCopyWith<$Res> {
  __$TransactionMobileDataRatingResponseCopyWithImpl(
      _TransactionMobileDataRatingResponse _value,
      $Res Function(_TransactionMobileDataRatingResponse) _then)
      : super(_value, (v) => _then(v as _TransactionMobileDataRatingResponse));

  @override
  _TransactionMobileDataRatingResponse get _value =>
      super._value as _TransactionMobileDataRatingResponse;
}

/// @nodoc
@JsonSerializable()
class _$_TransactionMobileDataRatingResponse
    implements _TransactionMobileDataRatingResponse {
  const _$_TransactionMobileDataRatingResponse();

  factory _$_TransactionMobileDataRatingResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_TransactionMobileDataRatingResponseFromJson(json);

  @override
  String toString() {
    return 'TransactionMobileDataRatingResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMobileDataRatingResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMobileDataRatingResponseToJson(this);
  }
}

abstract class _TransactionMobileDataRatingResponse
    implements TransactionMobileDataRatingResponse {
  const factory _TransactionMobileDataRatingResponse() =
      _$_TransactionMobileDataRatingResponse;

  factory _TransactionMobileDataRatingResponse.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionMobileDataRatingResponse.fromJson;
}
