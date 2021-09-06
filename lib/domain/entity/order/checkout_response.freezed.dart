// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutResponse.fromJson(json);
}

/// @nodoc
class _$CheckoutResponseTearOff {
  const _$CheckoutResponseTearOff();

  _CheckoutResponse call(
      {required StatusResponse response,
      required CheckoutDataResponse data,
      required MetaResponse meta}) {
    return _CheckoutResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  CheckoutResponse fromJson(Map<String, Object> json) {
    return CheckoutResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckoutResponse = _$CheckoutResponseTearOff();

/// @nodoc
mixin _$CheckoutResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  CheckoutDataResponse get data => throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutResponseCopyWith<CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseCopyWith<$Res> {
  factory $CheckoutResponseCopyWith(
          CheckoutResponse value, $Res Function(CheckoutResponse) then) =
      _$CheckoutResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response, CheckoutDataResponse data, MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $CheckoutDataResponseCopyWith<$Res> get data;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._value, this._then);

  final CheckoutResponse _value;
  // ignore: unused_field
  final $Res Function(CheckoutResponse) _then;

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
              as CheckoutDataResponse,
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
  $CheckoutDataResponseCopyWith<$Res> get data {
    return $CheckoutDataResponseCopyWith<$Res>(_value.data, (value) {
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
abstract class _$CheckoutResponseCopyWith<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  factory _$CheckoutResponseCopyWith(
          _CheckoutResponse value, $Res Function(_CheckoutResponse) then) =
      __$CheckoutResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response, CheckoutDataResponse data, MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $CheckoutDataResponseCopyWith<$Res> get data;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$CheckoutResponseCopyWithImpl<$Res>
    extends _$CheckoutResponseCopyWithImpl<$Res>
    implements _$CheckoutResponseCopyWith<$Res> {
  __$CheckoutResponseCopyWithImpl(
      _CheckoutResponse _value, $Res Function(_CheckoutResponse) _then)
      : super(_value, (v) => _then(v as _CheckoutResponse));

  @override
  _CheckoutResponse get _value => super._value as _CheckoutResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_CheckoutResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutResponse implements _CheckoutResponse {
  const _$_CheckoutResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final CheckoutDataResponse data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'CheckoutResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutResponse &&
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
  _$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith =>
      __$CheckoutResponseCopyWithImpl<_CheckoutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutResponseToJson(this);
  }
}

abstract class _CheckoutResponse implements CheckoutResponse {
  const factory _CheckoutResponse(
      {required StatusResponse response,
      required CheckoutDataResponse data,
      required MetaResponse meta}) = _$_CheckoutResponse;

  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckoutResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  CheckoutDataResponse get data => throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutDataResponse _$CheckoutDataResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutDataResponse.fromJson(json);
}

/// @nodoc
class _$CheckoutDataResponseTearOff {
  const _$CheckoutDataResponseTearOff();

  _CheckoutDataResponse call(
      {required String orderId,
      required dynamic qr,
      required String receiptCode,
      required String sessionId,
      required CheckoutDataPaymentResponse payment}) {
    return _CheckoutDataResponse(
      orderId: orderId,
      qr: qr,
      receiptCode: receiptCode,
      sessionId: sessionId,
      payment: payment,
    );
  }

  CheckoutDataResponse fromJson(Map<String, Object> json) {
    return CheckoutDataResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckoutDataResponse = _$CheckoutDataResponseTearOff();

/// @nodoc
mixin _$CheckoutDataResponse {
  String get orderId => throw _privateConstructorUsedError;
  dynamic get qr => throw _privateConstructorUsedError;
  String get receiptCode => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  CheckoutDataPaymentResponse get payment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutDataResponseCopyWith<CheckoutDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDataResponseCopyWith<$Res> {
  factory $CheckoutDataResponseCopyWith(CheckoutDataResponse value,
          $Res Function(CheckoutDataResponse) then) =
      _$CheckoutDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String orderId,
      dynamic qr,
      String receiptCode,
      String sessionId,
      CheckoutDataPaymentResponse payment});

  $CheckoutDataPaymentResponseCopyWith<$Res> get payment;
}

/// @nodoc
class _$CheckoutDataResponseCopyWithImpl<$Res>
    implements $CheckoutDataResponseCopyWith<$Res> {
  _$CheckoutDataResponseCopyWithImpl(this._value, this._then);

  final CheckoutDataResponse _value;
  // ignore: unused_field
  final $Res Function(CheckoutDataResponse) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? qr = freezed,
    Object? receiptCode = freezed,
    Object? sessionId = freezed,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      qr: qr == freezed
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as CheckoutDataPaymentResponse,
    ));
  }

  @override
  $CheckoutDataPaymentResponseCopyWith<$Res> get payment {
    return $CheckoutDataPaymentResponseCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutDataResponseCopyWith<$Res>
    implements $CheckoutDataResponseCopyWith<$Res> {
  factory _$CheckoutDataResponseCopyWith(_CheckoutDataResponse value,
          $Res Function(_CheckoutDataResponse) then) =
      __$CheckoutDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String orderId,
      dynamic qr,
      String receiptCode,
      String sessionId,
      CheckoutDataPaymentResponse payment});

  @override
  $CheckoutDataPaymentResponseCopyWith<$Res> get payment;
}

/// @nodoc
class __$CheckoutDataResponseCopyWithImpl<$Res>
    extends _$CheckoutDataResponseCopyWithImpl<$Res>
    implements _$CheckoutDataResponseCopyWith<$Res> {
  __$CheckoutDataResponseCopyWithImpl(
      _CheckoutDataResponse _value, $Res Function(_CheckoutDataResponse) _then)
      : super(_value, (v) => _then(v as _CheckoutDataResponse));

  @override
  _CheckoutDataResponse get _value => super._value as _CheckoutDataResponse;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? qr = freezed,
    Object? receiptCode = freezed,
    Object? sessionId = freezed,
    Object? payment = freezed,
  }) {
    return _then(_CheckoutDataResponse(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      qr: qr == freezed
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as CheckoutDataPaymentResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutDataResponse implements _CheckoutDataResponse {
  const _$_CheckoutDataResponse(
      {required this.orderId,
      required this.qr,
      required this.receiptCode,
      required this.sessionId,
      required this.payment});

  factory _$_CheckoutDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutDataResponseFromJson(json);

  @override
  final String orderId;
  @override
  final dynamic qr;
  @override
  final String receiptCode;
  @override
  final String sessionId;
  @override
  final CheckoutDataPaymentResponse payment;

  @override
  String toString() {
    return 'CheckoutDataResponse(orderId: $orderId, qr: $qr, receiptCode: $receiptCode, sessionId: $sessionId, payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutDataResponse &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.qr, qr) ||
                const DeepCollectionEquality().equals(other.qr, qr)) &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(qr) ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(payment);

  @JsonKey(ignore: true)
  @override
  _$CheckoutDataResponseCopyWith<_CheckoutDataResponse> get copyWith =>
      __$CheckoutDataResponseCopyWithImpl<_CheckoutDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutDataResponseToJson(this);
  }
}

abstract class _CheckoutDataResponse implements CheckoutDataResponse {
  const factory _CheckoutDataResponse(
      {required String orderId,
      required dynamic qr,
      required String receiptCode,
      required String sessionId,
      required CheckoutDataPaymentResponse payment}) = _$_CheckoutDataResponse;

  factory _CheckoutDataResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckoutDataResponse.fromJson;

  @override
  String get orderId => throw _privateConstructorUsedError;
  @override
  dynamic get qr => throw _privateConstructorUsedError;
  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  String get sessionId => throw _privateConstructorUsedError;
  @override
  CheckoutDataPaymentResponse get payment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutDataResponseCopyWith<_CheckoutDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutDataPaymentResponse _$CheckoutDataPaymentResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckoutDataPaymentResponse.fromJson(json);
}

/// @nodoc
class _$CheckoutDataPaymentResponseTearOff {
  const _$CheckoutDataPaymentResponseTearOff();

  _CheckoutDataPaymentResponse call(
      {required String? url,
      required String? deeplink,
      required CheckoutDataPaymentCodeResponse? paymentCode,
      required bool isCredit,
      required bool isDeeplink,
      required bool isWebView,
      required bool isSingleBilling}) {
    return _CheckoutDataPaymentResponse(
      url: url,
      deeplink: deeplink,
      paymentCode: paymentCode,
      isCredit: isCredit,
      isDeeplink: isDeeplink,
      isWebView: isWebView,
      isSingleBilling: isSingleBilling,
    );
  }

  CheckoutDataPaymentResponse fromJson(Map<String, Object> json) {
    return CheckoutDataPaymentResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckoutDataPaymentResponse = _$CheckoutDataPaymentResponseTearOff();

/// @nodoc
mixin _$CheckoutDataPaymentResponse {
  String? get url => throw _privateConstructorUsedError;
  String? get deeplink => throw _privateConstructorUsedError;
  CheckoutDataPaymentCodeResponse? get paymentCode =>
      throw _privateConstructorUsedError;
  bool get isCredit => throw _privateConstructorUsedError;
  bool get isDeeplink => throw _privateConstructorUsedError;
  bool get isWebView => throw _privateConstructorUsedError;
  bool get isSingleBilling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutDataPaymentResponseCopyWith<CheckoutDataPaymentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDataPaymentResponseCopyWith<$Res> {
  factory $CheckoutDataPaymentResponseCopyWith(
          CheckoutDataPaymentResponse value,
          $Res Function(CheckoutDataPaymentResponse) then) =
      _$CheckoutDataPaymentResponseCopyWithImpl<$Res>;
  $Res call(
      {String? url,
      String? deeplink,
      CheckoutDataPaymentCodeResponse? paymentCode,
      bool isCredit,
      bool isDeeplink,
      bool isWebView,
      bool isSingleBilling});

  $CheckoutDataPaymentCodeResponseCopyWith<$Res>? get paymentCode;
}

/// @nodoc
class _$CheckoutDataPaymentResponseCopyWithImpl<$Res>
    implements $CheckoutDataPaymentResponseCopyWith<$Res> {
  _$CheckoutDataPaymentResponseCopyWithImpl(this._value, this._then);

  final CheckoutDataPaymentResponse _value;
  // ignore: unused_field
  final $Res Function(CheckoutDataPaymentResponse) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? deeplink = freezed,
    Object? paymentCode = freezed,
    Object? isCredit = freezed,
    Object? isDeeplink = freezed,
    Object? isWebView = freezed,
    Object? isSingleBilling = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      deeplink: deeplink == freezed
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as CheckoutDataPaymentCodeResponse?,
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

  @override
  $CheckoutDataPaymentCodeResponseCopyWith<$Res>? get paymentCode {
    if (_value.paymentCode == null) {
      return null;
    }

    return $CheckoutDataPaymentCodeResponseCopyWith<$Res>(_value.paymentCode!,
        (value) {
      return _then(_value.copyWith(paymentCode: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutDataPaymentResponseCopyWith<$Res>
    implements $CheckoutDataPaymentResponseCopyWith<$Res> {
  factory _$CheckoutDataPaymentResponseCopyWith(
          _CheckoutDataPaymentResponse value,
          $Res Function(_CheckoutDataPaymentResponse) then) =
      __$CheckoutDataPaymentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? url,
      String? deeplink,
      CheckoutDataPaymentCodeResponse? paymentCode,
      bool isCredit,
      bool isDeeplink,
      bool isWebView,
      bool isSingleBilling});

  @override
  $CheckoutDataPaymentCodeResponseCopyWith<$Res>? get paymentCode;
}

/// @nodoc
class __$CheckoutDataPaymentResponseCopyWithImpl<$Res>
    extends _$CheckoutDataPaymentResponseCopyWithImpl<$Res>
    implements _$CheckoutDataPaymentResponseCopyWith<$Res> {
  __$CheckoutDataPaymentResponseCopyWithImpl(
      _CheckoutDataPaymentResponse _value,
      $Res Function(_CheckoutDataPaymentResponse) _then)
      : super(_value, (v) => _then(v as _CheckoutDataPaymentResponse));

  @override
  _CheckoutDataPaymentResponse get _value =>
      super._value as _CheckoutDataPaymentResponse;

  @override
  $Res call({
    Object? url = freezed,
    Object? deeplink = freezed,
    Object? paymentCode = freezed,
    Object? isCredit = freezed,
    Object? isDeeplink = freezed,
    Object? isWebView = freezed,
    Object? isSingleBilling = freezed,
  }) {
    return _then(_CheckoutDataPaymentResponse(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      deeplink: deeplink == freezed
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: paymentCode == freezed
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as CheckoutDataPaymentCodeResponse?,
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
class _$_CheckoutDataPaymentResponse implements _CheckoutDataPaymentResponse {
  const _$_CheckoutDataPaymentResponse(
      {required this.url,
      required this.deeplink,
      required this.paymentCode,
      required this.isCredit,
      required this.isDeeplink,
      required this.isWebView,
      required this.isSingleBilling});

  factory _$_CheckoutDataPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutDataPaymentResponseFromJson(json);

  @override
  final String? url;
  @override
  final String? deeplink;
  @override
  final CheckoutDataPaymentCodeResponse? paymentCode;
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
    return 'CheckoutDataPaymentResponse(url: $url, deeplink: $deeplink, paymentCode: $paymentCode, isCredit: $isCredit, isDeeplink: $isDeeplink, isWebView: $isWebView, isSingleBilling: $isSingleBilling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutDataPaymentResponse &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.deeplink, deeplink) ||
                const DeepCollectionEquality()
                    .equals(other.deeplink, deeplink)) &&
            (identical(other.paymentCode, paymentCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentCode, paymentCode)) &&
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
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(deeplink) ^
      const DeepCollectionEquality().hash(paymentCode) ^
      const DeepCollectionEquality().hash(isCredit) ^
      const DeepCollectionEquality().hash(isDeeplink) ^
      const DeepCollectionEquality().hash(isWebView) ^
      const DeepCollectionEquality().hash(isSingleBilling);

  @JsonKey(ignore: true)
  @override
  _$CheckoutDataPaymentResponseCopyWith<_CheckoutDataPaymentResponse>
      get copyWith => __$CheckoutDataPaymentResponseCopyWithImpl<
          _CheckoutDataPaymentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutDataPaymentResponseToJson(this);
  }
}

abstract class _CheckoutDataPaymentResponse
    implements CheckoutDataPaymentResponse {
  const factory _CheckoutDataPaymentResponse(
      {required String? url,
      required String? deeplink,
      required CheckoutDataPaymentCodeResponse? paymentCode,
      required bool isCredit,
      required bool isDeeplink,
      required bool isWebView,
      required bool isSingleBilling}) = _$_CheckoutDataPaymentResponse;

  factory _CheckoutDataPaymentResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckoutDataPaymentResponse.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get deeplink => throw _privateConstructorUsedError;
  @override
  CheckoutDataPaymentCodeResponse? get paymentCode =>
      throw _privateConstructorUsedError;
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
  _$CheckoutDataPaymentResponseCopyWith<_CheckoutDataPaymentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

CheckoutDataPaymentCodeResponse _$CheckoutDataPaymentCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckoutDataPaymentCodeResponse.fromJson(json);
}

/// @nodoc
class _$CheckoutDataPaymentCodeResponseTearOff {
  const _$CheckoutDataPaymentCodeResponseTearOff();

  _CheckoutDataPaymentCodeResponse call(
      {required String title,
      required int amount,
      required String vaNumber,
      required int expires,
      required DateTime expiresAt}) {
    return _CheckoutDataPaymentCodeResponse(
      title: title,
      amount: amount,
      vaNumber: vaNumber,
      expires: expires,
      expiresAt: expiresAt,
    );
  }

  CheckoutDataPaymentCodeResponse fromJson(Map<String, Object> json) {
    return CheckoutDataPaymentCodeResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckoutDataPaymentCodeResponse =
    _$CheckoutDataPaymentCodeResponseTearOff();

/// @nodoc
mixin _$CheckoutDataPaymentCodeResponse {
  String get title => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get vaNumber => throw _privateConstructorUsedError;
  int get expires => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutDataPaymentCodeResponseCopyWith<CheckoutDataPaymentCodeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDataPaymentCodeResponseCopyWith<$Res> {
  factory $CheckoutDataPaymentCodeResponseCopyWith(
          CheckoutDataPaymentCodeResponse value,
          $Res Function(CheckoutDataPaymentCodeResponse) then) =
      _$CheckoutDataPaymentCodeResponseCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int amount,
      String vaNumber,
      int expires,
      DateTime expiresAt});
}

/// @nodoc
class _$CheckoutDataPaymentCodeResponseCopyWithImpl<$Res>
    implements $CheckoutDataPaymentCodeResponseCopyWith<$Res> {
  _$CheckoutDataPaymentCodeResponseCopyWithImpl(this._value, this._then);

  final CheckoutDataPaymentCodeResponse _value;
  // ignore: unused_field
  final $Res Function(CheckoutDataPaymentCodeResponse) _then;

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
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CheckoutDataPaymentCodeResponseCopyWith<$Res>
    implements $CheckoutDataPaymentCodeResponseCopyWith<$Res> {
  factory _$CheckoutDataPaymentCodeResponseCopyWith(
          _CheckoutDataPaymentCodeResponse value,
          $Res Function(_CheckoutDataPaymentCodeResponse) then) =
      __$CheckoutDataPaymentCodeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int amount,
      String vaNumber,
      int expires,
      DateTime expiresAt});
}

/// @nodoc
class __$CheckoutDataPaymentCodeResponseCopyWithImpl<$Res>
    extends _$CheckoutDataPaymentCodeResponseCopyWithImpl<$Res>
    implements _$CheckoutDataPaymentCodeResponseCopyWith<$Res> {
  __$CheckoutDataPaymentCodeResponseCopyWithImpl(
      _CheckoutDataPaymentCodeResponse _value,
      $Res Function(_CheckoutDataPaymentCodeResponse) _then)
      : super(_value, (v) => _then(v as _CheckoutDataPaymentCodeResponse));

  @override
  _CheckoutDataPaymentCodeResponse get _value =>
      super._value as _CheckoutDataPaymentCodeResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? vaNumber = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_CheckoutDataPaymentCodeResponse(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutDataPaymentCodeResponse
    implements _CheckoutDataPaymentCodeResponse {
  const _$_CheckoutDataPaymentCodeResponse(
      {required this.title,
      required this.amount,
      required this.vaNumber,
      required this.expires,
      required this.expiresAt});

  factory _$_CheckoutDataPaymentCodeResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_CheckoutDataPaymentCodeResponseFromJson(json);

  @override
  final String title;
  @override
  final int amount;
  @override
  final String vaNumber;
  @override
  final int expires;
  @override
  final DateTime expiresAt;

  @override
  String toString() {
    return 'CheckoutDataPaymentCodeResponse(title: $title, amount: $amount, vaNumber: $vaNumber, expires: $expires, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutDataPaymentCodeResponse &&
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
  _$CheckoutDataPaymentCodeResponseCopyWith<_CheckoutDataPaymentCodeResponse>
      get copyWith => __$CheckoutDataPaymentCodeResponseCopyWithImpl<
          _CheckoutDataPaymentCodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutDataPaymentCodeResponseToJson(this);
  }
}

abstract class _CheckoutDataPaymentCodeResponse
    implements CheckoutDataPaymentCodeResponse {
  const factory _CheckoutDataPaymentCodeResponse(
      {required String title,
      required int amount,
      required String vaNumber,
      required int expires,
      required DateTime expiresAt}) = _$_CheckoutDataPaymentCodeResponse;

  factory _CheckoutDataPaymentCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckoutDataPaymentCodeResponse.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  String get vaNumber => throw _privateConstructorUsedError;
  @override
  int get expires => throw _privateConstructorUsedError;
  @override
  DateTime get expiresAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutDataPaymentCodeResponseCopyWith<_CheckoutDataPaymentCodeResponse>
      get copyWith => throw _privateConstructorUsedError;
}
