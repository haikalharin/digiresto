// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartSessionResponseApi _$CartSessionResponseApiFromJson(
    Map<String, dynamic> json) {
  return _CartSessionResponseApi.fromJson(json);
}

/// @nodoc
class _$CartSessionResponseApiTearOff {
  const _$CartSessionResponseApiTearOff();

  _CartSessionResponseApi call(
      {required StatusResponse response,
      required CartSessionResponse data,
      required MetaResponse meta}) {
    return _CartSessionResponseApi(
      response: response,
      data: data,
      meta: meta,
    );
  }

  CartSessionResponseApi fromJson(Map<String, Object> json) {
    return CartSessionResponseApi.fromJson(json);
  }
}

/// @nodoc
const $CartSessionResponseApi = _$CartSessionResponseApiTearOff();

/// @nodoc
mixin _$CartSessionResponseApi {
  StatusResponse get response => throw _privateConstructorUsedError;
  CartSessionResponse get data => throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartSessionResponseApiCopyWith<CartSessionResponseApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartSessionResponseApiCopyWith<$Res> {
  factory $CartSessionResponseApiCopyWith(CartSessionResponseApi value,
          $Res Function(CartSessionResponseApi) then) =
      _$CartSessionResponseApiCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response, CartSessionResponse data, MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $CartSessionResponseCopyWith<$Res> get data;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$CartSessionResponseApiCopyWithImpl<$Res>
    implements $CartSessionResponseApiCopyWith<$Res> {
  _$CartSessionResponseApiCopyWithImpl(this._value, this._then);

  final CartSessionResponseApi _value;
  // ignore: unused_field
  final $Res Function(CartSessionResponseApi) _then;

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
              as CartSessionResponse,
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
  $CartSessionResponseCopyWith<$Res> get data {
    return $CartSessionResponseCopyWith<$Res>(_value.data, (value) {
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
abstract class _$CartSessionResponseApiCopyWith<$Res>
    implements $CartSessionResponseApiCopyWith<$Res> {
  factory _$CartSessionResponseApiCopyWith(_CartSessionResponseApi value,
          $Res Function(_CartSessionResponseApi) then) =
      __$CartSessionResponseApiCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response, CartSessionResponse data, MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $CartSessionResponseCopyWith<$Res> get data;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$CartSessionResponseApiCopyWithImpl<$Res>
    extends _$CartSessionResponseApiCopyWithImpl<$Res>
    implements _$CartSessionResponseApiCopyWith<$Res> {
  __$CartSessionResponseApiCopyWithImpl(_CartSessionResponseApi _value,
      $Res Function(_CartSessionResponseApi) _then)
      : super(_value, (v) => _then(v as _CartSessionResponseApi));

  @override
  _CartSessionResponseApi get _value => super._value as _CartSessionResponseApi;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_CartSessionResponseApi(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartSessionResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartSessionResponseApi implements _CartSessionResponseApi {
  const _$_CartSessionResponseApi(
      {required this.response, required this.data, required this.meta});

  factory _$_CartSessionResponseApi.fromJson(Map<String, dynamic> json) =>
      _$_$_CartSessionResponseApiFromJson(json);

  @override
  final StatusResponse response;
  @override
  final CartSessionResponse data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'CartSessionResponseApi(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartSessionResponseApi &&
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
  _$CartSessionResponseApiCopyWith<_CartSessionResponseApi> get copyWith =>
      __$CartSessionResponseApiCopyWithImpl<_CartSessionResponseApi>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartSessionResponseApiToJson(this);
  }
}

abstract class _CartSessionResponseApi implements CartSessionResponseApi {
  const factory _CartSessionResponseApi(
      {required StatusResponse response,
      required CartSessionResponse data,
      required MetaResponse meta}) = _$_CartSessionResponseApi;

  factory _CartSessionResponseApi.fromJson(Map<String, dynamic> json) =
      _$_CartSessionResponseApi.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  CartSessionResponse get data => throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartSessionResponseApiCopyWith<_CartSessionResponseApi> get copyWith =>
      throw _privateConstructorUsedError;
}

CartSessionResponse _$CartSessionResponseFromJson(Map<String, dynamic> json) {
  return _CartSessionResponse.fromJson(json);
}

/// @nodoc
class _$CartSessionResponseTearOff {
  const _$CartSessionResponseTearOff();

  _CartSessionResponse call(
      {required String? channel,
      required String? sessionId,
      required TransactionData? transactionData}) {
    return _CartSessionResponse(
      channel: channel,
      sessionId: sessionId,
      transactionData: transactionData,
    );
  }

  CartSessionResponse fromJson(Map<String, Object> json) {
    return CartSessionResponse.fromJson(json);
  }
}

/// @nodoc
const $CartSessionResponse = _$CartSessionResponseTearOff();

/// @nodoc
mixin _$CartSessionResponse {
  String? get channel => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  TransactionData? get transactionData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartSessionResponseCopyWith<CartSessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartSessionResponseCopyWith<$Res> {
  factory $CartSessionResponseCopyWith(
          CartSessionResponse value, $Res Function(CartSessionResponse) then) =
      _$CartSessionResponseCopyWithImpl<$Res>;
  $Res call(
      {String? channel, String? sessionId, TransactionData? transactionData});

  $TransactionDataCopyWith<$Res>? get transactionData;
}

/// @nodoc
class _$CartSessionResponseCopyWithImpl<$Res>
    implements $CartSessionResponseCopyWith<$Res> {
  _$CartSessionResponseCopyWithImpl(this._value, this._then);

  final CartSessionResponse _value;
  // ignore: unused_field
  final $Res Function(CartSessionResponse) _then;

  @override
  $Res call({
    Object? channel = freezed,
    Object? sessionId = freezed,
    Object? transactionData = freezed,
  }) {
    return _then(_value.copyWith(
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionData: transactionData == freezed
          ? _value.transactionData
          : transactionData // ignore: cast_nullable_to_non_nullable
              as TransactionData?,
    ));
  }

  @override
  $TransactionDataCopyWith<$Res>? get transactionData {
    if (_value.transactionData == null) {
      return null;
    }

    return $TransactionDataCopyWith<$Res>(_value.transactionData!, (value) {
      return _then(_value.copyWith(transactionData: value));
    });
  }
}

/// @nodoc
abstract class _$CartSessionResponseCopyWith<$Res>
    implements $CartSessionResponseCopyWith<$Res> {
  factory _$CartSessionResponseCopyWith(_CartSessionResponse value,
          $Res Function(_CartSessionResponse) then) =
      __$CartSessionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? channel, String? sessionId, TransactionData? transactionData});

  @override
  $TransactionDataCopyWith<$Res>? get transactionData;
}

/// @nodoc
class __$CartSessionResponseCopyWithImpl<$Res>
    extends _$CartSessionResponseCopyWithImpl<$Res>
    implements _$CartSessionResponseCopyWith<$Res> {
  __$CartSessionResponseCopyWithImpl(
      _CartSessionResponse _value, $Res Function(_CartSessionResponse) _then)
      : super(_value, (v) => _then(v as _CartSessionResponse));

  @override
  _CartSessionResponse get _value => super._value as _CartSessionResponse;

  @override
  $Res call({
    Object? channel = freezed,
    Object? sessionId = freezed,
    Object? transactionData = freezed,
  }) {
    return _then(_CartSessionResponse(
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionData: transactionData == freezed
          ? _value.transactionData
          : transactionData // ignore: cast_nullable_to_non_nullable
              as TransactionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartSessionResponse implements _CartSessionResponse {
  const _$_CartSessionResponse(
      {required this.channel,
      required this.sessionId,
      required this.transactionData});

  factory _$_CartSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CartSessionResponseFromJson(json);

  @override
  final String? channel;
  @override
  final String? sessionId;
  @override
  final TransactionData? transactionData;

  @override
  String toString() {
    return 'CartSessionResponse(channel: $channel, sessionId: $sessionId, transactionData: $transactionData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartSessionResponse &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.transactionData, transactionData) ||
                const DeepCollectionEquality()
                    .equals(other.transactionData, transactionData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(transactionData);

  @JsonKey(ignore: true)
  @override
  _$CartSessionResponseCopyWith<_CartSessionResponse> get copyWith =>
      __$CartSessionResponseCopyWithImpl<_CartSessionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartSessionResponseToJson(this);
  }
}

abstract class _CartSessionResponse implements CartSessionResponse {
  const factory _CartSessionResponse(
      {required String? channel,
      required String? sessionId,
      required TransactionData? transactionData}) = _$_CartSessionResponse;

  factory _CartSessionResponse.fromJson(Map<String, dynamic> json) =
      _$_CartSessionResponse.fromJson;

  @override
  String? get channel => throw _privateConstructorUsedError;
  @override
  String? get sessionId => throw _privateConstructorUsedError;
  @override
  TransactionData? get transactionData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartSessionResponseCopyWith<_CartSessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
class _$TransactionDataTearOff {
  const _$TransactionDataTearOff();

  _TransactionData call(
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
      required dynamic paymentType,
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
      required List<dynamic> promos,
      required List<dynamic> paymentList,
      required List<TaxesAndService> taxesAndServices,
      required int itemTotalAmount}) {
    return _TransactionData(
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
      paymentType: paymentType,
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
    );
  }

  TransactionData fromJson(Map<String, Object> json) {
    return TransactionData.fromJson(json);
  }
}

/// @nodoc
const $TransactionData = _$TransactionDataTearOff();

/// @nodoc
mixin _$TransactionData {
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
  dynamic get paymentType => throw _privateConstructorUsedError;
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
  List<dynamic> get promos => throw _privateConstructorUsedError;
  List<dynamic> get paymentList => throw _privateConstructorUsedError;
  List<TaxesAndService> get taxesAndServices =>
      throw _privateConstructorUsedError;
  int get itemTotalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res>;
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
      dynamic paymentType,
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
      List<dynamic> promos,
      List<dynamic> paymentList,
      List<TaxesAndService> taxesAndServices,
      int itemTotalAmount});
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  final TransactionData _value;
  // ignore: unused_field
  final $Res Function(TransactionData) _then;

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
    Object? paymentType = freezed,
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
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ));
  }
}

/// @nodoc
abstract class _$TransactionDataCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$TransactionDataCopyWith(
          _TransactionData value, $Res Function(_TransactionData) then) =
      __$TransactionDataCopyWithImpl<$Res>;
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
      dynamic paymentType,
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
      List<dynamic> promos,
      List<dynamic> paymentList,
      List<TaxesAndService> taxesAndServices,
      int itemTotalAmount});
}

/// @nodoc
class __$TransactionDataCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res>
    implements _$TransactionDataCopyWith<$Res> {
  __$TransactionDataCopyWithImpl(
      _TransactionData _value, $Res Function(_TransactionData) _then)
      : super(_value, (v) => _then(v as _TransactionData));

  @override
  _TransactionData get _value => super._value as _TransactionData;

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
    Object? paymentType = freezed,
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
  }) {
    return _then(_TransactionData(
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
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionData implements _TransactionData {
  const _$_TransactionData(
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
      required this.paymentType,
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
      required this.itemTotalAmount});

  factory _$_TransactionData.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDataFromJson(json);

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
  final dynamic paymentType;
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
  final List<dynamic> promos;
  @override
  final List<dynamic> paymentList;
  @override
  final List<TaxesAndService> taxesAndServices;
  @override
  final int itemTotalAmount;

  @override
  String toString() {
    return 'TransactionData(outletName: $outletName, outletId: $outletId, customerName: $customerName, customerEmail: $customerEmail, customerPhone: $customerPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, customerTableNumber: $customerTableNumber, customerSmoking: $customerSmoking, customerPax: $customerPax, customerNote: $customerNote, customerCarType: $customerCarType, customerCarColor: $customerCarColor, customerCarNumber: $customerCarNumber, eta: $eta, paymentType: $paymentType, totalChange: $totalChange, discountAmount: $discountAmount, discountPercentage: $discountPercentage, finalAmount: $finalAmount, receiptTotalDiscount: $receiptTotalDiscount, roundAmount: $roundAmount, subtotal: $subtotal, totalDiscount: $totalDiscount, totalItemAmount: $totalItemAmount, totalItemCost: $totalItemCost, totalItemDiscount: $totalItemDiscount, totalService: $totalService, totalTax: $totalTax, voucherAmount: $voucherAmount, deliveryAmount: $deliveryAmount, totalPayment: $totalPayment, salesType: $salesType, items: $items, itemWeight: $itemWeight, isUseVoucher: $isUseVoucher, promos: $promos, paymentList: $paymentList, taxesAndServices: $taxesAndServices, itemTotalAmount: $itemTotalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionData &&
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
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
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
            (identical(other.deliveryAmount, deliveryAmount) || const DeepCollectionEquality().equals(other.deliveryAmount, deliveryAmount)) &&
            (identical(other.totalPayment, totalPayment) || const DeepCollectionEquality().equals(other.totalPayment, totalPayment)) &&
            (identical(other.salesType, salesType) || const DeepCollectionEquality().equals(other.salesType, salesType)) &&
            (identical(other.items, items) || const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.itemWeight, itemWeight) || const DeepCollectionEquality().equals(other.itemWeight, itemWeight)) &&
            (identical(other.isUseVoucher, isUseVoucher) || const DeepCollectionEquality().equals(other.isUseVoucher, isUseVoucher)) &&
            (identical(other.promos, promos) || const DeepCollectionEquality().equals(other.promos, promos)) &&
            (identical(other.paymentList, paymentList) || const DeepCollectionEquality().equals(other.paymentList, paymentList)) &&
            (identical(other.taxesAndServices, taxesAndServices) || const DeepCollectionEquality().equals(other.taxesAndServices, taxesAndServices)) &&
            (identical(other.itemTotalAmount, itemTotalAmount) || const DeepCollectionEquality().equals(other.itemTotalAmount, itemTotalAmount)));
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
      const DeepCollectionEquality().hash(paymentType) ^
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
      const DeepCollectionEquality().hash(itemTotalAmount);

  @JsonKey(ignore: true)
  @override
  _$TransactionDataCopyWith<_TransactionData> get copyWith =>
      __$TransactionDataCopyWithImpl<_TransactionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionDataToJson(this);
  }
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
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
      required dynamic paymentType,
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
      required List<dynamic> promos,
      required List<dynamic> paymentList,
      required List<TaxesAndService> taxesAndServices,
      required int itemTotalAmount}) = _$_TransactionData;

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$_TransactionData.fromJson;

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
  dynamic get paymentType => throw _privateConstructorUsedError;
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
  List<dynamic> get promos => throw _privateConstructorUsedError;
  @override
  List<dynamic> get paymentList => throw _privateConstructorUsedError;
  @override
  List<TaxesAndService> get taxesAndServices =>
      throw _privateConstructorUsedError;
  @override
  int get itemTotalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionDataCopyWith<_TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDataItemResponse _$TransactionDataItemResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionDataItemResponse.fromJson(json);
}

/// @nodoc
class _$TransactionDataItemResponseTearOff {
  const _$TransactionDataItemResponseTearOff();

  _TransactionDataItemResponse call(
      {required int productId,
      required String title,
      required int price,
      required String? code,
      required int cost,
      required int qty,
      required int basicWeight,
      required int weight,
      required String category,
      required int categoryId,
      required String categoryCode,
      required String sku,
      required String note,
      required bool isPreorder,
      required int preorderPeriod,
      required int amount,
      required List<Modifier>? modifiers,
      required int? modifiersAmount,
      required int? modifiersCost,
      required int? modifiersDiscount,
      required int? singleModifiersAmount,
      required int subtotal,
      required int serviceAmount,
      required int taxAmount}) {
    return _TransactionDataItemResponse(
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
    );
  }

  TransactionDataItemResponse fromJson(Map<String, Object> json) {
    return TransactionDataItemResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionDataItemResponse = _$TransactionDataItemResponseTearOff();

/// @nodoc
mixin _$TransactionDataItemResponse {
  int get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get basicWeight => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get isPreorder => throw _privateConstructorUsedError;
  int get preorderPeriod => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  List<Modifier>? get modifiers => throw _privateConstructorUsedError;
  int? get modifiersAmount => throw _privateConstructorUsedError;
  int? get modifiersCost => throw _privateConstructorUsedError;
  int? get modifiersDiscount => throw _privateConstructorUsedError;
  int? get singleModifiersAmount => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;
  int get serviceAmount => throw _privateConstructorUsedError;
  int get taxAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataItemResponseCopyWith<TransactionDataItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataItemResponseCopyWith<$Res> {
  factory $TransactionDataItemResponseCopyWith(
          TransactionDataItemResponse value,
          $Res Function(TransactionDataItemResponse) then) =
      _$TransactionDataItemResponseCopyWithImpl<$Res>;
  $Res call(
      {int productId,
      String title,
      int price,
      String? code,
      int cost,
      int qty,
      int basicWeight,
      int weight,
      String category,
      int categoryId,
      String categoryCode,
      String sku,
      String note,
      bool isPreorder,
      int preorderPeriod,
      int amount,
      List<Modifier>? modifiers,
      int? modifiersAmount,
      int? modifiersCost,
      int? modifiersDiscount,
      int? singleModifiersAmount,
      int subtotal,
      int serviceAmount,
      int taxAmount});
}

/// @nodoc
class _$TransactionDataItemResponseCopyWithImpl<$Res>
    implements $TransactionDataItemResponseCopyWith<$Res> {
  _$TransactionDataItemResponseCopyWithImpl(this._value, this._then);

  final TransactionDataItemResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionDataItemResponse) _then;

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
              as String?,
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
              as String,
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
              as List<Modifier>?,
      modifiersAmount: modifiersAmount == freezed
          ? _value.modifiersAmount
          : modifiersAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiersCost: modifiersCost == freezed
          ? _value.modifiersCost
          : modifiersCost // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiersDiscount: modifiersDiscount == freezed
          ? _value.modifiersDiscount
          : modifiersDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      singleModifiersAmount: singleModifiersAmount == freezed
          ? _value.singleModifiersAmount
          : singleModifiersAmount // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
abstract class _$TransactionDataItemResponseCopyWith<$Res>
    implements $TransactionDataItemResponseCopyWith<$Res> {
  factory _$TransactionDataItemResponseCopyWith(
          _TransactionDataItemResponse value,
          $Res Function(_TransactionDataItemResponse) then) =
      __$TransactionDataItemResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int productId,
      String title,
      int price,
      String? code,
      int cost,
      int qty,
      int basicWeight,
      int weight,
      String category,
      int categoryId,
      String categoryCode,
      String sku,
      String note,
      bool isPreorder,
      int preorderPeriod,
      int amount,
      List<Modifier>? modifiers,
      int? modifiersAmount,
      int? modifiersCost,
      int? modifiersDiscount,
      int? singleModifiersAmount,
      int subtotal,
      int serviceAmount,
      int taxAmount});
}

/// @nodoc
class __$TransactionDataItemResponseCopyWithImpl<$Res>
    extends _$TransactionDataItemResponseCopyWithImpl<$Res>
    implements _$TransactionDataItemResponseCopyWith<$Res> {
  __$TransactionDataItemResponseCopyWithImpl(
      _TransactionDataItemResponse _value,
      $Res Function(_TransactionDataItemResponse) _then)
      : super(_value, (v) => _then(v as _TransactionDataItemResponse));

  @override
  _TransactionDataItemResponse get _value =>
      super._value as _TransactionDataItemResponse;

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
  }) {
    return _then(_TransactionDataItemResponse(
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
              as String?,
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
              as String,
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
              as List<Modifier>?,
      modifiersAmount: modifiersAmount == freezed
          ? _value.modifiersAmount
          : modifiersAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiersCost: modifiersCost == freezed
          ? _value.modifiersCost
          : modifiersCost // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiersDiscount: modifiersDiscount == freezed
          ? _value.modifiersDiscount
          : modifiersDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      singleModifiersAmount: singleModifiersAmount == freezed
          ? _value.singleModifiersAmount
          : singleModifiersAmount // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDataItemResponse implements _TransactionDataItemResponse {
  const _$_TransactionDataItemResponse(
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
      required this.taxAmount});

  factory _$_TransactionDataItemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDataItemResponseFromJson(json);

  @override
  final int productId;
  @override
  final String title;
  @override
  final int price;
  @override
  final String? code;
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
  final String sku;
  @override
  final String note;
  @override
  final bool isPreorder;
  @override
  final int preorderPeriod;
  @override
  final int amount;
  @override
  final List<Modifier>? modifiers;
  @override
  final int? modifiersAmount;
  @override
  final int? modifiersCost;
  @override
  final int? modifiersDiscount;
  @override
  final int? singleModifiersAmount;
  @override
  final int subtotal;
  @override
  final int serviceAmount;
  @override
  final int taxAmount;

  @override
  String toString() {
    return 'TransactionDataItemResponse(productId: $productId, title: $title, price: $price, code: $code, cost: $cost, qty: $qty, basicWeight: $basicWeight, weight: $weight, category: $category, categoryId: $categoryId, categoryCode: $categoryCode, sku: $sku, note: $note, isPreorder: $isPreorder, preorderPeriod: $preorderPeriod, amount: $amount, modifiers: $modifiers, modifiersAmount: $modifiersAmount, modifiersCost: $modifiersCost, modifiersDiscount: $modifiersDiscount, singleModifiersAmount: $singleModifiersAmount, subtotal: $subtotal, serviceAmount: $serviceAmount, taxAmount: $taxAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDataItemResponse &&
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
                    .equals(other.taxAmount, taxAmount)));
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
      const DeepCollectionEquality().hash(taxAmount);

  @JsonKey(ignore: true)
  @override
  _$TransactionDataItemResponseCopyWith<_TransactionDataItemResponse>
      get copyWith => __$TransactionDataItemResponseCopyWithImpl<
          _TransactionDataItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionDataItemResponseToJson(this);
  }
}

abstract class _TransactionDataItemResponse
    implements TransactionDataItemResponse {
  const factory _TransactionDataItemResponse(
      {required int productId,
      required String title,
      required int price,
      required String? code,
      required int cost,
      required int qty,
      required int basicWeight,
      required int weight,
      required String category,
      required int categoryId,
      required String categoryCode,
      required String sku,
      required String note,
      required bool isPreorder,
      required int preorderPeriod,
      required int amount,
      required List<Modifier>? modifiers,
      required int? modifiersAmount,
      required int? modifiersCost,
      required int? modifiersDiscount,
      required int? singleModifiersAmount,
      required int subtotal,
      required int serviceAmount,
      required int taxAmount}) = _$_TransactionDataItemResponse;

  factory _TransactionDataItemResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionDataItemResponse.fromJson;

  @override
  int get productId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
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
  String get sku => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  bool get isPreorder => throw _privateConstructorUsedError;
  @override
  int get preorderPeriod => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  List<Modifier>? get modifiers => throw _privateConstructorUsedError;
  @override
  int? get modifiersAmount => throw _privateConstructorUsedError;
  @override
  int? get modifiersCost => throw _privateConstructorUsedError;
  @override
  int? get modifiersDiscount => throw _privateConstructorUsedError;
  @override
  int? get singleModifiersAmount => throw _privateConstructorUsedError;
  @override
  int get subtotal => throw _privateConstructorUsedError;
  @override
  int get serviceAmount => throw _privateConstructorUsedError;
  @override
  int get taxAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionDataItemResponseCopyWith<_TransactionDataItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Modifier _$ModifierFromJson(Map<String, dynamic> json) {
  return _Modifier.fromJson(json);
}

/// @nodoc
class _$ModifierTearOff {
  const _$ModifierTearOff();

  _Modifier call(
      {required String modifierGroupId,
      required String modifierGroupName,
      required String modifierGroupCode,
      required int id,
      required int modifierId,
      required String modifierCode,
      required String title,
      required int basicWeight,
      required int price,
      required int qty,
      required int amount,
      required int discountAmount,
      required int discountPercentage}) {
    return _Modifier(
      modifierGroupId: modifierGroupId,
      modifierGroupName: modifierGroupName,
      modifierGroupCode: modifierGroupCode,
      id: id,
      modifierId: modifierId,
      modifierCode: modifierCode,
      title: title,
      basicWeight: basicWeight,
      price: price,
      qty: qty,
      amount: amount,
      discountAmount: discountAmount,
      discountPercentage: discountPercentage,
    );
  }

  Modifier fromJson(Map<String, Object> json) {
    return Modifier.fromJson(json);
  }
}

/// @nodoc
const $Modifier = _$ModifierTearOff();

/// @nodoc
mixin _$Modifier {
  String get modifierGroupId => throw _privateConstructorUsedError;
  String get modifierGroupName => throw _privateConstructorUsedError;
  String get modifierGroupCode => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get modifierId => throw _privateConstructorUsedError;
  String get modifierCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get basicWeight => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get discountAmount => throw _privateConstructorUsedError;
  int get discountPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifierCopyWith<Modifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierCopyWith<$Res> {
  factory $ModifierCopyWith(Modifier value, $Res Function(Modifier) then) =
      _$ModifierCopyWithImpl<$Res>;
  $Res call(
      {String modifierGroupId,
      String modifierGroupName,
      String modifierGroupCode,
      int id,
      int modifierId,
      String modifierCode,
      String title,
      int basicWeight,
      int price,
      int qty,
      int amount,
      int discountAmount,
      int discountPercentage});
}

/// @nodoc
class _$ModifierCopyWithImpl<$Res> implements $ModifierCopyWith<$Res> {
  _$ModifierCopyWithImpl(this._value, this._then);

  final Modifier _value;
  // ignore: unused_field
  final $Res Function(Modifier) _then;

  @override
  $Res call({
    Object? modifierGroupId = freezed,
    Object? modifierGroupName = freezed,
    Object? modifierGroupCode = freezed,
    Object? id = freezed,
    Object? modifierId = freezed,
    Object? modifierCode = freezed,
    Object? title = freezed,
    Object? basicWeight = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? amount = freezed,
    Object? discountAmount = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      modifierGroupId: modifierGroupId == freezed
          ? _value.modifierGroupId
          : modifierGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      modifierGroupName: modifierGroupName == freezed
          ? _value.modifierGroupName
          : modifierGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      modifierGroupCode: modifierGroupCode == freezed
          ? _value.modifierGroupCode
          : modifierGroupCode // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      modifierId: modifierId == freezed
          ? _value.modifierId
          : modifierId // ignore: cast_nullable_to_non_nullable
              as int,
      modifierCode: modifierCode == freezed
          ? _value.modifierCode
          : modifierCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      basicWeight: basicWeight == freezed
          ? _value.basicWeight
          : basicWeight // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ModifierCopyWith<$Res> implements $ModifierCopyWith<$Res> {
  factory _$ModifierCopyWith(_Modifier value, $Res Function(_Modifier) then) =
      __$ModifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {String modifierGroupId,
      String modifierGroupName,
      String modifierGroupCode,
      int id,
      int modifierId,
      String modifierCode,
      String title,
      int basicWeight,
      int price,
      int qty,
      int amount,
      int discountAmount,
      int discountPercentage});
}

/// @nodoc
class __$ModifierCopyWithImpl<$Res> extends _$ModifierCopyWithImpl<$Res>
    implements _$ModifierCopyWith<$Res> {
  __$ModifierCopyWithImpl(_Modifier _value, $Res Function(_Modifier) _then)
      : super(_value, (v) => _then(v as _Modifier));

  @override
  _Modifier get _value => super._value as _Modifier;

  @override
  $Res call({
    Object? modifierGroupId = freezed,
    Object? modifierGroupName = freezed,
    Object? modifierGroupCode = freezed,
    Object? id = freezed,
    Object? modifierId = freezed,
    Object? modifierCode = freezed,
    Object? title = freezed,
    Object? basicWeight = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? amount = freezed,
    Object? discountAmount = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(_Modifier(
      modifierGroupId: modifierGroupId == freezed
          ? _value.modifierGroupId
          : modifierGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      modifierGroupName: modifierGroupName == freezed
          ? _value.modifierGroupName
          : modifierGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      modifierGroupCode: modifierGroupCode == freezed
          ? _value.modifierGroupCode
          : modifierGroupCode // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      modifierId: modifierId == freezed
          ? _value.modifierId
          : modifierId // ignore: cast_nullable_to_non_nullable
              as int,
      modifierCode: modifierCode == freezed
          ? _value.modifierCode
          : modifierCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      basicWeight: basicWeight == freezed
          ? _value.basicWeight
          : basicWeight // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Modifier implements _Modifier {
  const _$_Modifier(
      {required this.modifierGroupId,
      required this.modifierGroupName,
      required this.modifierGroupCode,
      required this.id,
      required this.modifierId,
      required this.modifierCode,
      required this.title,
      required this.basicWeight,
      required this.price,
      required this.qty,
      required this.amount,
      required this.discountAmount,
      required this.discountPercentage});

  factory _$_Modifier.fromJson(Map<String, dynamic> json) =>
      _$_$_ModifierFromJson(json);

  @override
  final String modifierGroupId;
  @override
  final String modifierGroupName;
  @override
  final String modifierGroupCode;
  @override
  final int id;
  @override
  final int modifierId;
  @override
  final String modifierCode;
  @override
  final String title;
  @override
  final int basicWeight;
  @override
  final int price;
  @override
  final int qty;
  @override
  final int amount;
  @override
  final int discountAmount;
  @override
  final int discountPercentage;

  @override
  String toString() {
    return 'Modifier(modifierGroupId: $modifierGroupId, modifierGroupName: $modifierGroupName, modifierGroupCode: $modifierGroupCode, id: $id, modifierId: $modifierId, modifierCode: $modifierCode, title: $title, basicWeight: $basicWeight, price: $price, qty: $qty, amount: $amount, discountAmount: $discountAmount, discountPercentage: $discountPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Modifier &&
            (identical(other.modifierGroupId, modifierGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.modifierGroupId, modifierGroupId)) &&
            (identical(other.modifierGroupName, modifierGroupName) ||
                const DeepCollectionEquality()
                    .equals(other.modifierGroupName, modifierGroupName)) &&
            (identical(other.modifierGroupCode, modifierGroupCode) ||
                const DeepCollectionEquality()
                    .equals(other.modifierGroupCode, modifierGroupCode)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.modifierId, modifierId) ||
                const DeepCollectionEquality()
                    .equals(other.modifierId, modifierId)) &&
            (identical(other.modifierCode, modifierCode) ||
                const DeepCollectionEquality()
                    .equals(other.modifierCode, modifierCode)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.basicWeight, basicWeight) ||
                const DeepCollectionEquality()
                    .equals(other.basicWeight, basicWeight)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.discountAmount, discountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.discountAmount, discountAmount)) &&
            (identical(other.discountPercentage, discountPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.discountPercentage, discountPercentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(modifierGroupId) ^
      const DeepCollectionEquality().hash(modifierGroupName) ^
      const DeepCollectionEquality().hash(modifierGroupCode) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(modifierId) ^
      const DeepCollectionEquality().hash(modifierCode) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(basicWeight) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(discountAmount) ^
      const DeepCollectionEquality().hash(discountPercentage);

  @JsonKey(ignore: true)
  @override
  _$ModifierCopyWith<_Modifier> get copyWith =>
      __$ModifierCopyWithImpl<_Modifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ModifierToJson(this);
  }
}

abstract class _Modifier implements Modifier {
  const factory _Modifier(
      {required String modifierGroupId,
      required String modifierGroupName,
      required String modifierGroupCode,
      required int id,
      required int modifierId,
      required String modifierCode,
      required String title,
      required int basicWeight,
      required int price,
      required int qty,
      required int amount,
      required int discountAmount,
      required int discountPercentage}) = _$_Modifier;

  factory _Modifier.fromJson(Map<String, dynamic> json) = _$_Modifier.fromJson;

  @override
  String get modifierGroupId => throw _privateConstructorUsedError;
  @override
  String get modifierGroupName => throw _privateConstructorUsedError;
  @override
  String get modifierGroupCode => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get modifierId => throw _privateConstructorUsedError;
  @override
  String get modifierCode => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get basicWeight => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get discountAmount => throw _privateConstructorUsedError;
  @override
  int get discountPercentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModifierCopyWith<_Modifier> get copyWith =>
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
      required String? code,
      required String? name,
      required String? type,
      required int? percentage,
      required List<String>? salesTypes,
      required String? title,
      required int? amount}) {
    return _TaxesAndService(
      id: id,
      code: code,
      name: name,
      type: type,
      percentage: percentage,
      salesTypes: salesTypes,
      title: title,
      amount: amount,
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
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get percentage => throw _privateConstructorUsedError;
  List<String>? get salesTypes => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;

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
      String? code,
      String? name,
      String? type,
      int? percentage,
      List<String>? salesTypes,
      String? title,
      int? amount});
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
    Object? percentage = freezed,
    Object? salesTypes = freezed,
    Object? title = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      String? code,
      String? name,
      String? type,
      int? percentage,
      List<String>? salesTypes,
      String? title,
      int? amount});
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
    Object? percentage = freezed,
    Object? salesTypes = freezed,
    Object? title = freezed,
    Object? amount = freezed,
  }) {
    return _then(_TaxesAndService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      required this.percentage,
      required this.salesTypes,
      required this.title,
      required this.amount});

  factory _$_TaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$_$_TaxesAndServiceFromJson(json);

  @override
  final int id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final int? percentage;
  @override
  final List<String>? salesTypes;
  @override
  final String? title;
  @override
  final int? amount;

  @override
  String toString() {
    return 'TaxesAndService(id: $id, code: $code, name: $name, type: $type, percentage: $percentage, salesTypes: $salesTypes, title: $title, amount: $amount)';
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
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)) &&
            (identical(other.salesTypes, salesTypes) ||
                const DeepCollectionEquality()
                    .equals(other.salesTypes, salesTypes)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(percentage) ^
      const DeepCollectionEquality().hash(salesTypes) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(amount);

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
      required String? code,
      required String? name,
      required String? type,
      required int? percentage,
      required List<String>? salesTypes,
      required String? title,
      required int? amount}) = _$_TaxesAndService;

  factory _TaxesAndService.fromJson(Map<String, dynamic> json) =
      _$_TaxesAndService.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get percentage => throw _privateConstructorUsedError;
  @override
  List<String>? get salesTypes => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaxesAndServiceCopyWith<_TaxesAndService> get copyWith =>
      throw _privateConstructorUsedError;
}
