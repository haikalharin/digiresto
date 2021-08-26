// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'promo_outlet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromoOutletResponse _$PromoOutletResponseFromJson(Map<String, dynamic> json) {
  return _PromoOutletResponse.fromJson(json);
}

/// @nodoc
class _$PromoOutletResponseTearOff {
  const _$PromoOutletResponseTearOff();

  _PromoOutletResponse call(
      {required StatusResponse response,
      required List<PromoOutletDataResponse> data,
      required MetaResponse meta}) {
    return _PromoOutletResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  PromoOutletResponse fromJson(Map<String, Object> json) {
    return PromoOutletResponse.fromJson(json);
  }
}

/// @nodoc
const $PromoOutletResponse = _$PromoOutletResponseTearOff();

/// @nodoc
mixin _$PromoOutletResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  List<PromoOutletDataResponse> get data => throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoOutletResponseCopyWith<PromoOutletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoOutletResponseCopyWith<$Res> {
  factory $PromoOutletResponseCopyWith(
          PromoOutletResponse value, $Res Function(PromoOutletResponse) then) =
      _$PromoOutletResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      List<PromoOutletDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$PromoOutletResponseCopyWithImpl<$Res>
    implements $PromoOutletResponseCopyWith<$Res> {
  _$PromoOutletResponseCopyWithImpl(this._value, this._then);

  final PromoOutletResponse _value;
  // ignore: unused_field
  final $Res Function(PromoOutletResponse) _then;

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
              as List<PromoOutletDataResponse>,
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
abstract class _$PromoOutletResponseCopyWith<$Res>
    implements $PromoOutletResponseCopyWith<$Res> {
  factory _$PromoOutletResponseCopyWith(_PromoOutletResponse value,
          $Res Function(_PromoOutletResponse) then) =
      __$PromoOutletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<PromoOutletDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$PromoOutletResponseCopyWithImpl<$Res>
    extends _$PromoOutletResponseCopyWithImpl<$Res>
    implements _$PromoOutletResponseCopyWith<$Res> {
  __$PromoOutletResponseCopyWithImpl(
      _PromoOutletResponse _value, $Res Function(_PromoOutletResponse) _then)
      : super(_value, (v) => _then(v as _PromoOutletResponse));

  @override
  _PromoOutletResponse get _value => super._value as _PromoOutletResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_PromoOutletResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PromoOutletDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoOutletResponse implements _PromoOutletResponse {
  const _$_PromoOutletResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_PromoOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PromoOutletResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<PromoOutletDataResponse> data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'PromoOutletResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoOutletResponse &&
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
  _$PromoOutletResponseCopyWith<_PromoOutletResponse> get copyWith =>
      __$PromoOutletResponseCopyWithImpl<_PromoOutletResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoOutletResponseToJson(this);
  }
}

abstract class _PromoOutletResponse implements PromoOutletResponse {
  const factory _PromoOutletResponse(
      {required StatusResponse response,
      required List<PromoOutletDataResponse> data,
      required MetaResponse meta}) = _$_PromoOutletResponse;

  factory _PromoOutletResponse.fromJson(Map<String, dynamic> json) =
      _$_PromoOutletResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<PromoOutletDataResponse> get data => throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoOutletResponseCopyWith<_PromoOutletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PromoOutletDataResponse _$PromoOutletDataResponseFromJson(
    Map<String, dynamic> json) {
  return _PromoOutletDataResponse.fromJson(json);
}

/// @nodoc
class _$PromoOutletDataResponseTearOff {
  const _$PromoOutletDataResponseTearOff();

  _PromoOutletDataResponse call(
      {required String id,
      required String banner,
      required String? icon,
      required String? outletId,
      required String? productId,
      required PromoOutletDataVoucherResponse? voucher,
      required bool isFreeDelivery,
      required String? url,
      required String name}) {
    return _PromoOutletDataResponse(
      id: id,
      banner: banner,
      icon: icon,
      outletId: outletId,
      productId: productId,
      voucher: voucher,
      isFreeDelivery: isFreeDelivery,
      url: url,
      name: name,
    );
  }

  PromoOutletDataResponse fromJson(Map<String, Object> json) {
    return PromoOutletDataResponse.fromJson(json);
  }
}

/// @nodoc
const $PromoOutletDataResponse = _$PromoOutletDataResponseTearOff();

/// @nodoc
mixin _$PromoOutletDataResponse {
  String get id => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get outletId => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  PromoOutletDataVoucherResponse? get voucher =>
      throw _privateConstructorUsedError;
  bool get isFreeDelivery => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoOutletDataResponseCopyWith<PromoOutletDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoOutletDataResponseCopyWith<$Res> {
  factory $PromoOutletDataResponseCopyWith(PromoOutletDataResponse value,
          $Res Function(PromoOutletDataResponse) then) =
      _$PromoOutletDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String banner,
      String? icon,
      String? outletId,
      String? productId,
      PromoOutletDataVoucherResponse? voucher,
      bool isFreeDelivery,
      String? url,
      String name});

  $PromoOutletDataVoucherResponseCopyWith<$Res>? get voucher;
}

/// @nodoc
class _$PromoOutletDataResponseCopyWithImpl<$Res>
    implements $PromoOutletDataResponseCopyWith<$Res> {
  _$PromoOutletDataResponseCopyWithImpl(this._value, this._then);

  final PromoOutletDataResponse _value;
  // ignore: unused_field
  final $Res Function(PromoOutletDataResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
    Object? icon = freezed,
    Object? outletId = freezed,
    Object? productId = freezed,
    Object? voucher = freezed,
    Object? isFreeDelivery = freezed,
    Object? url = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as PromoOutletDataVoucherResponse?,
      isFreeDelivery: isFreeDelivery == freezed
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PromoOutletDataVoucherResponseCopyWith<$Res>? get voucher {
    if (_value.voucher == null) {
      return null;
    }

    return $PromoOutletDataVoucherResponseCopyWith<$Res>(_value.voucher!,
        (value) {
      return _then(_value.copyWith(voucher: value));
    });
  }
}

/// @nodoc
abstract class _$PromoOutletDataResponseCopyWith<$Res>
    implements $PromoOutletDataResponseCopyWith<$Res> {
  factory _$PromoOutletDataResponseCopyWith(_PromoOutletDataResponse value,
          $Res Function(_PromoOutletDataResponse) then) =
      __$PromoOutletDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String banner,
      String? icon,
      String? outletId,
      String? productId,
      PromoOutletDataVoucherResponse? voucher,
      bool isFreeDelivery,
      String? url,
      String name});

  @override
  $PromoOutletDataVoucherResponseCopyWith<$Res>? get voucher;
}

/// @nodoc
class __$PromoOutletDataResponseCopyWithImpl<$Res>
    extends _$PromoOutletDataResponseCopyWithImpl<$Res>
    implements _$PromoOutletDataResponseCopyWith<$Res> {
  __$PromoOutletDataResponseCopyWithImpl(_PromoOutletDataResponse _value,
      $Res Function(_PromoOutletDataResponse) _then)
      : super(_value, (v) => _then(v as _PromoOutletDataResponse));

  @override
  _PromoOutletDataResponse get _value =>
      super._value as _PromoOutletDataResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
    Object? icon = freezed,
    Object? outletId = freezed,
    Object? productId = freezed,
    Object? voucher = freezed,
    Object? isFreeDelivery = freezed,
    Object? url = freezed,
    Object? name = freezed,
  }) {
    return _then(_PromoOutletDataResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as PromoOutletDataVoucherResponse?,
      isFreeDelivery: isFreeDelivery == freezed
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoOutletDataResponse implements _PromoOutletDataResponse {
  const _$_PromoOutletDataResponse(
      {required this.id,
      required this.banner,
      required this.icon,
      required this.outletId,
      required this.productId,
      required this.voucher,
      required this.isFreeDelivery,
      required this.url,
      required this.name});

  factory _$_PromoOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PromoOutletDataResponseFromJson(json);

  @override
  final String id;
  @override
  final String banner;
  @override
  final String? icon;
  @override
  final String? outletId;
  @override
  final String? productId;
  @override
  final PromoOutletDataVoucherResponse? voucher;
  @override
  final bool isFreeDelivery;
  @override
  final String? url;
  @override
  final String name;

  @override
  String toString() {
    return 'PromoOutletDataResponse(id: $id, banner: $banner, icon: $icon, outletId: $outletId, productId: $productId, voucher: $voucher, isFreeDelivery: $isFreeDelivery, url: $url, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoOutletDataResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.banner, banner) ||
                const DeepCollectionEquality().equals(other.banner, banner)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.voucher, voucher) ||
                const DeepCollectionEquality()
                    .equals(other.voucher, voucher)) &&
            (identical(other.isFreeDelivery, isFreeDelivery) ||
                const DeepCollectionEquality()
                    .equals(other.isFreeDelivery, isFreeDelivery)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(banner) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(voucher) ^
      const DeepCollectionEquality().hash(isFreeDelivery) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PromoOutletDataResponseCopyWith<_PromoOutletDataResponse> get copyWith =>
      __$PromoOutletDataResponseCopyWithImpl<_PromoOutletDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoOutletDataResponseToJson(this);
  }
}

abstract class _PromoOutletDataResponse implements PromoOutletDataResponse {
  const factory _PromoOutletDataResponse(
      {required String id,
      required String banner,
      required String? icon,
      required String? outletId,
      required String? productId,
      required PromoOutletDataVoucherResponse? voucher,
      required bool isFreeDelivery,
      required String? url,
      required String name}) = _$_PromoOutletDataResponse;

  factory _PromoOutletDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PromoOutletDataResponse.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get banner => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override
  String? get outletId => throw _privateConstructorUsedError;
  @override
  String? get productId => throw _privateConstructorUsedError;
  @override
  PromoOutletDataVoucherResponse? get voucher =>
      throw _privateConstructorUsedError;
  @override
  bool get isFreeDelivery => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoOutletDataResponseCopyWith<_PromoOutletDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PromoOutletDataVoucherResponse _$PromoOutletDataVoucherResponseFromJson(
    Map<String, dynamic> json) {
  return _PromoOutletDataVoucherResponse.fromJson(json);
}

/// @nodoc
class _$PromoOutletDataVoucherResponseTearOff {
  const _$PromoOutletDataVoucherResponseTearOff();

  _PromoOutletDataVoucherResponse call({required String code}) {
    return _PromoOutletDataVoucherResponse(
      code: code,
    );
  }

  PromoOutletDataVoucherResponse fromJson(Map<String, Object> json) {
    return PromoOutletDataVoucherResponse.fromJson(json);
  }
}

/// @nodoc
const $PromoOutletDataVoucherResponse =
    _$PromoOutletDataVoucherResponseTearOff();

/// @nodoc
mixin _$PromoOutletDataVoucherResponse {
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoOutletDataVoucherResponseCopyWith<PromoOutletDataVoucherResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoOutletDataVoucherResponseCopyWith<$Res> {
  factory $PromoOutletDataVoucherResponseCopyWith(
          PromoOutletDataVoucherResponse value,
          $Res Function(PromoOutletDataVoucherResponse) then) =
      _$PromoOutletDataVoucherResponseCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$PromoOutletDataVoucherResponseCopyWithImpl<$Res>
    implements $PromoOutletDataVoucherResponseCopyWith<$Res> {
  _$PromoOutletDataVoucherResponseCopyWithImpl(this._value, this._then);

  final PromoOutletDataVoucherResponse _value;
  // ignore: unused_field
  final $Res Function(PromoOutletDataVoucherResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PromoOutletDataVoucherResponseCopyWith<$Res>
    implements $PromoOutletDataVoucherResponseCopyWith<$Res> {
  factory _$PromoOutletDataVoucherResponseCopyWith(
          _PromoOutletDataVoucherResponse value,
          $Res Function(_PromoOutletDataVoucherResponse) then) =
      __$PromoOutletDataVoucherResponseCopyWithImpl<$Res>;
  @override
  $Res call({String code});
}

/// @nodoc
class __$PromoOutletDataVoucherResponseCopyWithImpl<$Res>
    extends _$PromoOutletDataVoucherResponseCopyWithImpl<$Res>
    implements _$PromoOutletDataVoucherResponseCopyWith<$Res> {
  __$PromoOutletDataVoucherResponseCopyWithImpl(
      _PromoOutletDataVoucherResponse _value,
      $Res Function(_PromoOutletDataVoucherResponse) _then)
      : super(_value, (v) => _then(v as _PromoOutletDataVoucherResponse));

  @override
  _PromoOutletDataVoucherResponse get _value =>
      super._value as _PromoOutletDataVoucherResponse;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_PromoOutletDataVoucherResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoOutletDataVoucherResponse
    implements _PromoOutletDataVoucherResponse {
  const _$_PromoOutletDataVoucherResponse({required this.code});

  factory _$_PromoOutletDataVoucherResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_PromoOutletDataVoucherResponseFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'PromoOutletDataVoucherResponse(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoOutletDataVoucherResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$PromoOutletDataVoucherResponseCopyWith<_PromoOutletDataVoucherResponse>
      get copyWith => __$PromoOutletDataVoucherResponseCopyWithImpl<
          _PromoOutletDataVoucherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoOutletDataVoucherResponseToJson(this);
  }
}

abstract class _PromoOutletDataVoucherResponse
    implements PromoOutletDataVoucherResponse {
  const factory _PromoOutletDataVoucherResponse({required String code}) =
      _$_PromoOutletDataVoucherResponse;

  factory _PromoOutletDataVoucherResponse.fromJson(Map<String, dynamic> json) =
      _$_PromoOutletDataVoucherResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoOutletDataVoucherResponseCopyWith<_PromoOutletDataVoucherResponse>
      get copyWith => throw _privateConstructorUsedError;
}
