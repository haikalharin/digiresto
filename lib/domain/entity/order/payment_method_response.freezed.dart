// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_method_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodResponse _$PaymentMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodResponse.fromJson(json);
}

/// @nodoc
class _$PaymentMethodResponseTearOff {
  const _$PaymentMethodResponseTearOff();

  _PaymentMethodResponse call(
      {required StatusResponse response,
      required List<PaymentMethodDataResponse> data,
      required MetaResponse meta}) {
    return _PaymentMethodResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  PaymentMethodResponse fromJson(Map<String, Object> json) {
    return PaymentMethodResponse.fromJson(json);
  }
}

/// @nodoc
const $PaymentMethodResponse = _$PaymentMethodResponseTearOff();

/// @nodoc
mixin _$PaymentMethodResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  List<PaymentMethodDataResponse> get data =>
      throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodResponseCopyWith<PaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodResponseCopyWith<$Res> {
  factory $PaymentMethodResponseCopyWith(PaymentMethodResponse value,
          $Res Function(PaymentMethodResponse) then) =
      _$PaymentMethodResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      List<PaymentMethodDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$PaymentMethodResponseCopyWithImpl<$Res>
    implements $PaymentMethodResponseCopyWith<$Res> {
  _$PaymentMethodResponseCopyWithImpl(this._value, this._then);

  final PaymentMethodResponse _value;
  // ignore: unused_field
  final $Res Function(PaymentMethodResponse) _then;

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
              as List<PaymentMethodDataResponse>,
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
  $MetaResponseCopyWith<$Res> get meta {
    return $MetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentMethodResponseCopyWith<$Res>
    implements $PaymentMethodResponseCopyWith<$Res> {
  factory _$PaymentMethodResponseCopyWith(_PaymentMethodResponse value,
          $Res Function(_PaymentMethodResponse) then) =
      __$PaymentMethodResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<PaymentMethodDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$PaymentMethodResponseCopyWithImpl<$Res>
    extends _$PaymentMethodResponseCopyWithImpl<$Res>
    implements _$PaymentMethodResponseCopyWith<$Res> {
  __$PaymentMethodResponseCopyWithImpl(_PaymentMethodResponse _value,
      $Res Function(_PaymentMethodResponse) _then)
      : super(_value, (v) => _then(v as _PaymentMethodResponse));

  @override
  _PaymentMethodResponse get _value => super._value as _PaymentMethodResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_PaymentMethodResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodResponse implements _PaymentMethodResponse {
  const _$_PaymentMethodResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_PaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentMethodResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<PaymentMethodDataResponse> data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'PaymentMethodResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMethodResponse &&
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
  _$PaymentMethodResponseCopyWith<_PaymentMethodResponse> get copyWith =>
      __$PaymentMethodResponseCopyWithImpl<_PaymentMethodResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentMethodResponseToJson(this);
  }
}

abstract class _PaymentMethodResponse implements PaymentMethodResponse {
  const factory _PaymentMethodResponse(
      {required StatusResponse response,
      required List<PaymentMethodDataResponse> data,
      required MetaResponse meta}) = _$_PaymentMethodResponse;

  factory _PaymentMethodResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<PaymentMethodDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodResponseCopyWith<_PaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentMethodDataResponse _$PaymentMethodDataResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodDataResponse.fromJson(json);
}

/// @nodoc
class _$PaymentMethodDataResponseTearOff {
  const _$PaymentMethodDataResponseTearOff();

  _PaymentMethodDataResponse call(
      {required String id,
      required String title,
      required bool isEnable,
      required String? ammount,
      required int digirestoPaymentId,
      required List<String> channels,
      required List<String> salesTypes,
      required List<String> excludeMerchant,
      required bool isUsePaymentSwitcher,
      required bool isCredit,
      required bool isEDC,
      required bool isQr,
      required bool isVoucher,
      required bool isCash,
      required bool isWebView,
      required bool isDeeplink,
      required String? image,
      required String? paymentSwitcherCode,
      required int? expire,
      required String? deeplinkUrl,
      required bool? isSingleBilling}) {
    return _PaymentMethodDataResponse(
      id: id,
      title: title,
      isEnable: isEnable,
      ammount: ammount,
      digirestoPaymentId: digirestoPaymentId,
      channels: channels,
      salesTypes: salesTypes,
      excludeMerchant: excludeMerchant,
      isUsePaymentSwitcher: isUsePaymentSwitcher,
      isCredit: isCredit,
      isEDC: isEDC,
      isQr: isQr,
      isVoucher: isVoucher,
      isCash: isCash,
      isWebView: isWebView,
      isDeeplink: isDeeplink,
      image: image,
      paymentSwitcherCode: paymentSwitcherCode,
      expire: expire,
      deeplinkUrl: deeplinkUrl,
      isSingleBilling: isSingleBilling,
    );
  }

  PaymentMethodDataResponse fromJson(Map<String, Object> json) {
    return PaymentMethodDataResponse.fromJson(json);
  }
}

/// @nodoc
const $PaymentMethodDataResponse = _$PaymentMethodDataResponseTearOff();

/// @nodoc
mixin _$PaymentMethodDataResponse {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isEnable => throw _privateConstructorUsedError;
  String? get ammount => throw _privateConstructorUsedError;
  int get digirestoPaymentId => throw _privateConstructorUsedError;
  List<String> get channels => throw _privateConstructorUsedError;
  List<String> get salesTypes => throw _privateConstructorUsedError;
  List<String> get excludeMerchant => throw _privateConstructorUsedError;
  bool get isUsePaymentSwitcher => throw _privateConstructorUsedError;
  bool get isCredit => throw _privateConstructorUsedError;
  bool get isEDC => throw _privateConstructorUsedError;
  bool get isQr => throw _privateConstructorUsedError;
  bool get isVoucher => throw _privateConstructorUsedError;
  bool get isCash => throw _privateConstructorUsedError;
  bool get isWebView => throw _privateConstructorUsedError;
  bool get isDeeplink => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get paymentSwitcherCode => throw _privateConstructorUsedError;
  int? get expire => throw _privateConstructorUsedError;
  String? get deeplinkUrl => throw _privateConstructorUsedError;
  bool? get isSingleBilling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDataResponseCopyWith<PaymentMethodDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDataResponseCopyWith<$Res> {
  factory $PaymentMethodDataResponseCopyWith(PaymentMethodDataResponse value,
          $Res Function(PaymentMethodDataResponse) then) =
      _$PaymentMethodDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      bool isEnable,
      String? ammount,
      int digirestoPaymentId,
      List<String> channels,
      List<String> salesTypes,
      List<String> excludeMerchant,
      bool isUsePaymentSwitcher,
      bool isCredit,
      bool isEDC,
      bool isQr,
      bool isVoucher,
      bool isCash,
      bool isWebView,
      bool isDeeplink,
      String? image,
      String? paymentSwitcherCode,
      int? expire,
      String? deeplinkUrl,
      bool? isSingleBilling});
}

/// @nodoc
class _$PaymentMethodDataResponseCopyWithImpl<$Res>
    implements $PaymentMethodDataResponseCopyWith<$Res> {
  _$PaymentMethodDataResponseCopyWithImpl(this._value, this._then);

  final PaymentMethodDataResponse _value;
  // ignore: unused_field
  final $Res Function(PaymentMethodDataResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isEnable = freezed,
    Object? ammount = freezed,
    Object? digirestoPaymentId = freezed,
    Object? channels = freezed,
    Object? salesTypes = freezed,
    Object? excludeMerchant = freezed,
    Object? isUsePaymentSwitcher = freezed,
    Object? isCredit = freezed,
    Object? isEDC = freezed,
    Object? isQr = freezed,
    Object? isVoucher = freezed,
    Object? isCash = freezed,
    Object? isWebView = freezed,
    Object? isDeeplink = freezed,
    Object? image = freezed,
    Object? paymentSwitcherCode = freezed,
    Object? expire = freezed,
    Object? deeplinkUrl = freezed,
    Object? isSingleBilling = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      ammount: ammount == freezed
          ? _value.ammount
          : ammount // ignore: cast_nullable_to_non_nullable
              as String?,
      digirestoPaymentId: digirestoPaymentId == freezed
          ? _value.digirestoPaymentId
          : digirestoPaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      channels: channels == freezed
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludeMerchant: excludeMerchant == freezed
          ? _value.excludeMerchant
          : excludeMerchant // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUsePaymentSwitcher: isUsePaymentSwitcher == freezed
          ? _value.isUsePaymentSwitcher
          : isUsePaymentSwitcher // ignore: cast_nullable_to_non_nullable
              as bool,
      isCredit: isCredit == freezed
          ? _value.isCredit
          : isCredit // ignore: cast_nullable_to_non_nullable
              as bool,
      isEDC: isEDC == freezed
          ? _value.isEDC
          : isEDC // ignore: cast_nullable_to_non_nullable
              as bool,
      isQr: isQr == freezed
          ? _value.isQr
          : isQr // ignore: cast_nullable_to_non_nullable
              as bool,
      isVoucher: isVoucher == freezed
          ? _value.isVoucher
          : isVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
      isCash: isCash == freezed
          ? _value.isCash
          : isCash // ignore: cast_nullable_to_non_nullable
              as bool,
      isWebView: isWebView == freezed
          ? _value.isWebView
          : isWebView // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeeplink: isDeeplink == freezed
          ? _value.isDeeplink
          : isDeeplink // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSwitcherCode: paymentSwitcherCode == freezed
          ? _value.paymentSwitcherCode
          : paymentSwitcherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      expire: expire == freezed
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as int?,
      deeplinkUrl: deeplinkUrl == freezed
          ? _value.deeplinkUrl
          : deeplinkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isSingleBilling: isSingleBilling == freezed
          ? _value.isSingleBilling
          : isSingleBilling // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodDataResponseCopyWith<$Res>
    implements $PaymentMethodDataResponseCopyWith<$Res> {
  factory _$PaymentMethodDataResponseCopyWith(_PaymentMethodDataResponse value,
          $Res Function(_PaymentMethodDataResponse) then) =
      __$PaymentMethodDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      bool isEnable,
      String? ammount,
      int digirestoPaymentId,
      List<String> channels,
      List<String> salesTypes,
      List<String> excludeMerchant,
      bool isUsePaymentSwitcher,
      bool isCredit,
      bool isEDC,
      bool isQr,
      bool isVoucher,
      bool isCash,
      bool isWebView,
      bool isDeeplink,
      String? image,
      String? paymentSwitcherCode,
      int? expire,
      String? deeplinkUrl,
      bool? isSingleBilling});
}

/// @nodoc
class __$PaymentMethodDataResponseCopyWithImpl<$Res>
    extends _$PaymentMethodDataResponseCopyWithImpl<$Res>
    implements _$PaymentMethodDataResponseCopyWith<$Res> {
  __$PaymentMethodDataResponseCopyWithImpl(_PaymentMethodDataResponse _value,
      $Res Function(_PaymentMethodDataResponse) _then)
      : super(_value, (v) => _then(v as _PaymentMethodDataResponse));

  @override
  _PaymentMethodDataResponse get _value =>
      super._value as _PaymentMethodDataResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isEnable = freezed,
    Object? ammount = freezed,
    Object? digirestoPaymentId = freezed,
    Object? channels = freezed,
    Object? salesTypes = freezed,
    Object? excludeMerchant = freezed,
    Object? isUsePaymentSwitcher = freezed,
    Object? isCredit = freezed,
    Object? isEDC = freezed,
    Object? isQr = freezed,
    Object? isVoucher = freezed,
    Object? isCash = freezed,
    Object? isWebView = freezed,
    Object? isDeeplink = freezed,
    Object? image = freezed,
    Object? paymentSwitcherCode = freezed,
    Object? expire = freezed,
    Object? deeplinkUrl = freezed,
    Object? isSingleBilling = freezed,
  }) {
    return _then(_PaymentMethodDataResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      ammount: ammount == freezed
          ? _value.ammount
          : ammount // ignore: cast_nullable_to_non_nullable
              as String?,
      digirestoPaymentId: digirestoPaymentId == freezed
          ? _value.digirestoPaymentId
          : digirestoPaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      channels: channels == freezed
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludeMerchant: excludeMerchant == freezed
          ? _value.excludeMerchant
          : excludeMerchant // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUsePaymentSwitcher: isUsePaymentSwitcher == freezed
          ? _value.isUsePaymentSwitcher
          : isUsePaymentSwitcher // ignore: cast_nullable_to_non_nullable
              as bool,
      isCredit: isCredit == freezed
          ? _value.isCredit
          : isCredit // ignore: cast_nullable_to_non_nullable
              as bool,
      isEDC: isEDC == freezed
          ? _value.isEDC
          : isEDC // ignore: cast_nullable_to_non_nullable
              as bool,
      isQr: isQr == freezed
          ? _value.isQr
          : isQr // ignore: cast_nullable_to_non_nullable
              as bool,
      isVoucher: isVoucher == freezed
          ? _value.isVoucher
          : isVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
      isCash: isCash == freezed
          ? _value.isCash
          : isCash // ignore: cast_nullable_to_non_nullable
              as bool,
      isWebView: isWebView == freezed
          ? _value.isWebView
          : isWebView // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeeplink: isDeeplink == freezed
          ? _value.isDeeplink
          : isDeeplink // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSwitcherCode: paymentSwitcherCode == freezed
          ? _value.paymentSwitcherCode
          : paymentSwitcherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      expire: expire == freezed
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as int?,
      deeplinkUrl: deeplinkUrl == freezed
          ? _value.deeplinkUrl
          : deeplinkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isSingleBilling: isSingleBilling == freezed
          ? _value.isSingleBilling
          : isSingleBilling // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodDataResponse implements _PaymentMethodDataResponse {
  const _$_PaymentMethodDataResponse(
      {required this.id,
      required this.title,
      required this.isEnable,
      required this.ammount,
      required this.digirestoPaymentId,
      required this.channels,
      required this.salesTypes,
      required this.excludeMerchant,
      required this.isUsePaymentSwitcher,
      required this.isCredit,
      required this.isEDC,
      required this.isQr,
      required this.isVoucher,
      required this.isCash,
      required this.isWebView,
      required this.isDeeplink,
      required this.image,
      required this.paymentSwitcherCode,
      required this.expire,
      required this.deeplinkUrl,
      required this.isSingleBilling});

  factory _$_PaymentMethodDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentMethodDataResponseFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final bool isEnable;
  @override
  final String? ammount;
  @override
  final int digirestoPaymentId;
  @override
  final List<String> channels;
  @override
  final List<String> salesTypes;
  @override
  final List<String> excludeMerchant;
  @override
  final bool isUsePaymentSwitcher;
  @override
  final bool isCredit;
  @override
  final bool isEDC;
  @override
  final bool isQr;
  @override
  final bool isVoucher;
  @override
  final bool isCash;
  @override
  final bool isWebView;
  @override
  final bool isDeeplink;
  @override
  final String? image;
  @override
  final String? paymentSwitcherCode;
  @override
  final int? expire;
  @override
  final String? deeplinkUrl;
  @override
  final bool? isSingleBilling;

  @override
  String toString() {
    return 'PaymentMethodDataResponse(id: $id, title: $title, isEnable: $isEnable, ammount: $ammount, digirestoPaymentId: $digirestoPaymentId, channels: $channels, salesTypes: $salesTypes, excludeMerchant: $excludeMerchant, isUsePaymentSwitcher: $isUsePaymentSwitcher, isCredit: $isCredit, isEDC: $isEDC, isQr: $isQr, isVoucher: $isVoucher, isCash: $isCash, isWebView: $isWebView, isDeeplink: $isDeeplink, image: $image, paymentSwitcherCode: $paymentSwitcherCode, expire: $expire, deeplinkUrl: $deeplinkUrl, isSingleBilling: $isSingleBilling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMethodDataResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isEnable, isEnable) ||
                const DeepCollectionEquality()
                    .equals(other.isEnable, isEnable)) &&
            (identical(other.ammount, ammount) ||
                const DeepCollectionEquality()
                    .equals(other.ammount, ammount)) &&
            (identical(other.digirestoPaymentId, digirestoPaymentId) ||
                const DeepCollectionEquality()
                    .equals(other.digirestoPaymentId, digirestoPaymentId)) &&
            (identical(other.channels, channels) ||
                const DeepCollectionEquality()
                    .equals(other.channels, channels)) &&
            (identical(other.salesTypes, salesTypes) ||
                const DeepCollectionEquality()
                    .equals(other.salesTypes, salesTypes)) &&
            (identical(other.excludeMerchant, excludeMerchant) ||
                const DeepCollectionEquality()
                    .equals(other.excludeMerchant, excludeMerchant)) &&
            (identical(other.isUsePaymentSwitcher, isUsePaymentSwitcher) ||
                const DeepCollectionEquality().equals(
                    other.isUsePaymentSwitcher, isUsePaymentSwitcher)) &&
            (identical(other.isCredit, isCredit) ||
                const DeepCollectionEquality()
                    .equals(other.isCredit, isCredit)) &&
            (identical(other.isEDC, isEDC) ||
                const DeepCollectionEquality().equals(other.isEDC, isEDC)) &&
            (identical(other.isQr, isQr) ||
                const DeepCollectionEquality().equals(other.isQr, isQr)) &&
            (identical(other.isVoucher, isVoucher) ||
                const DeepCollectionEquality()
                    .equals(other.isVoucher, isVoucher)) &&
            (identical(other.isCash, isCash) ||
                const DeepCollectionEquality().equals(other.isCash, isCash)) &&
            (identical(other.isWebView, isWebView) ||
                const DeepCollectionEquality()
                    .equals(other.isWebView, isWebView)) &&
            (identical(other.isDeeplink, isDeeplink) ||
                const DeepCollectionEquality()
                    .equals(other.isDeeplink, isDeeplink)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.paymentSwitcherCode, paymentSwitcherCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentSwitcherCode, paymentSwitcherCode)) &&
            (identical(other.expire, expire) ||
                const DeepCollectionEquality().equals(other.expire, expire)) &&
            (identical(other.deeplinkUrl, deeplinkUrl) ||
                const DeepCollectionEquality()
                    .equals(other.deeplinkUrl, deeplinkUrl)) &&
            (identical(other.isSingleBilling, isSingleBilling) ||
                const DeepCollectionEquality()
                    .equals(other.isSingleBilling, isSingleBilling)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isEnable) ^
      const DeepCollectionEquality().hash(ammount) ^
      const DeepCollectionEquality().hash(digirestoPaymentId) ^
      const DeepCollectionEquality().hash(channels) ^
      const DeepCollectionEquality().hash(salesTypes) ^
      const DeepCollectionEquality().hash(excludeMerchant) ^
      const DeepCollectionEquality().hash(isUsePaymentSwitcher) ^
      const DeepCollectionEquality().hash(isCredit) ^
      const DeepCollectionEquality().hash(isEDC) ^
      const DeepCollectionEquality().hash(isQr) ^
      const DeepCollectionEquality().hash(isVoucher) ^
      const DeepCollectionEquality().hash(isCash) ^
      const DeepCollectionEquality().hash(isWebView) ^
      const DeepCollectionEquality().hash(isDeeplink) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(paymentSwitcherCode) ^
      const DeepCollectionEquality().hash(expire) ^
      const DeepCollectionEquality().hash(deeplinkUrl) ^
      const DeepCollectionEquality().hash(isSingleBilling);

  @JsonKey(ignore: true)
  @override
  _$PaymentMethodDataResponseCopyWith<_PaymentMethodDataResponse>
      get copyWith =>
          __$PaymentMethodDataResponseCopyWithImpl<_PaymentMethodDataResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentMethodDataResponseToJson(this);
  }
}

abstract class _PaymentMethodDataResponse implements PaymentMethodDataResponse {
  const factory _PaymentMethodDataResponse(
      {required String id,
      required String title,
      required bool isEnable,
      required String? ammount,
      required int digirestoPaymentId,
      required List<String> channels,
      required List<String> salesTypes,
      required List<String> excludeMerchant,
      required bool isUsePaymentSwitcher,
      required bool isCredit,
      required bool isEDC,
      required bool isQr,
      required bool isVoucher,
      required bool isCash,
      required bool isWebView,
      required bool isDeeplink,
      required String? image,
      required String? paymentSwitcherCode,
      required int? expire,
      required String? deeplinkUrl,
      required bool? isSingleBilling}) = _$_PaymentMethodDataResponse;

  factory _PaymentMethodDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodDataResponse.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get isEnable => throw _privateConstructorUsedError;
  @override
  String? get ammount => throw _privateConstructorUsedError;
  @override
  int get digirestoPaymentId => throw _privateConstructorUsedError;
  @override
  List<String> get channels => throw _privateConstructorUsedError;
  @override
  List<String> get salesTypes => throw _privateConstructorUsedError;
  @override
  List<String> get excludeMerchant => throw _privateConstructorUsedError;
  @override
  bool get isUsePaymentSwitcher => throw _privateConstructorUsedError;
  @override
  bool get isCredit => throw _privateConstructorUsedError;
  @override
  bool get isEDC => throw _privateConstructorUsedError;
  @override
  bool get isQr => throw _privateConstructorUsedError;
  @override
  bool get isVoucher => throw _privateConstructorUsedError;
  @override
  bool get isCash => throw _privateConstructorUsedError;
  @override
  bool get isWebView => throw _privateConstructorUsedError;
  @override
  bool get isDeeplink => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get paymentSwitcherCode => throw _privateConstructorUsedError;
  @override
  int? get expire => throw _privateConstructorUsedError;
  @override
  String? get deeplinkUrl => throw _privateConstructorUsedError;
  @override
  bool? get isSingleBilling => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodDataResponseCopyWith<_PaymentMethodDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
