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
      required PromoOutletDataResponse data,
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
  PromoOutletDataResponse get data => throw _privateConstructorUsedError;
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
      PromoOutletDataResponse data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $PromoOutletDataResponseCopyWith<$Res> get data;
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
              as PromoOutletDataResponse,
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
  $PromoOutletDataResponseCopyWith<$Res> get data {
    return $PromoOutletDataResponseCopyWith<$Res>(_value.data, (value) {
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
abstract class _$PromoOutletResponseCopyWith<$Res>
    implements $PromoOutletResponseCopyWith<$Res> {
  factory _$PromoOutletResponseCopyWith(_PromoOutletResponse value,
          $Res Function(_PromoOutletResponse) then) =
      __$PromoOutletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      PromoOutletDataResponse data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $PromoOutletDataResponseCopyWith<$Res> get data;
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
              as PromoOutletDataResponse,
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
  final PromoOutletDataResponse data;
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
      required PromoOutletDataResponse data,
      required MetaResponse meta}) = _$_PromoOutletResponse;

  factory _PromoOutletResponse.fromJson(Map<String, dynamic> json) =
      _$_PromoOutletResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  PromoOutletDataResponse get data => throw _privateConstructorUsedError;
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
      {required List<PromoOutletDataMenuCategoryResponse> menuCategory}) {
    return _PromoOutletDataResponse(
      menuCategory: menuCategory,
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
  List<PromoOutletDataMenuCategoryResponse> get menuCategory =>
      throw _privateConstructorUsedError;

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
  $Res call({List<PromoOutletDataMenuCategoryResponse> menuCategory});
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
    Object? menuCategory = freezed,
  }) {
    return _then(_value.copyWith(
      menuCategory: menuCategory == freezed
          ? _value.menuCategory
          : menuCategory // ignore: cast_nullable_to_non_nullable
              as List<PromoOutletDataMenuCategoryResponse>,
    ));
  }
}

/// @nodoc
abstract class _$PromoOutletDataResponseCopyWith<$Res>
    implements $PromoOutletDataResponseCopyWith<$Res> {
  factory _$PromoOutletDataResponseCopyWith(_PromoOutletDataResponse value,
          $Res Function(_PromoOutletDataResponse) then) =
      __$PromoOutletDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<PromoOutletDataMenuCategoryResponse> menuCategory});
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
    Object? menuCategory = freezed,
  }) {
    return _then(_PromoOutletDataResponse(
      menuCategory: menuCategory == freezed
          ? _value.menuCategory
          : menuCategory // ignore: cast_nullable_to_non_nullable
              as List<PromoOutletDataMenuCategoryResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoOutletDataResponse implements _PromoOutletDataResponse {
  const _$_PromoOutletDataResponse({required this.menuCategory});

  factory _$_PromoOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PromoOutletDataResponseFromJson(json);

  @override
  final List<PromoOutletDataMenuCategoryResponse> menuCategory;

  @override
  String toString() {
    return 'PromoOutletDataResponse(menuCategory: $menuCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoOutletDataResponse &&
            (identical(other.menuCategory, menuCategory) ||
                const DeepCollectionEquality()
                    .equals(other.menuCategory, menuCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(menuCategory);

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
          {required List<PromoOutletDataMenuCategoryResponse> menuCategory}) =
      _$_PromoOutletDataResponse;

  factory _PromoOutletDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PromoOutletDataResponse.fromJson;

  @override
  List<PromoOutletDataMenuCategoryResponse> get menuCategory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoOutletDataResponseCopyWith<_PromoOutletDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PromoOutletDataMenuCategoryResponse
    _$PromoOutletDataMenuCategoryResponseFromJson(Map<String, dynamic> json) {
  return _PromoOutletDataMenuCategoryResponse.fromJson(json);
}

/// @nodoc
class _$PromoOutletDataMenuCategoryResponseTearOff {
  const _$PromoOutletDataMenuCategoryResponseTearOff();

  _PromoOutletDataMenuCategoryResponse call(
      {required String id,
      required bool isEnable,
      required String title,
      required String icon,
      required PromoOutletDataMenuCategoryParamResponse param,
      required bool withLocation}) {
    return _PromoOutletDataMenuCategoryResponse(
      id: id,
      isEnable: isEnable,
      title: title,
      icon: icon,
      param: param,
      withLocation: withLocation,
    );
  }

  PromoOutletDataMenuCategoryResponse fromJson(Map<String, Object> json) {
    return PromoOutletDataMenuCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $PromoOutletDataMenuCategoryResponse =
    _$PromoOutletDataMenuCategoryResponseTearOff();

/// @nodoc
mixin _$PromoOutletDataMenuCategoryResponse {
  String get id => throw _privateConstructorUsedError;
  bool get isEnable => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  PromoOutletDataMenuCategoryParamResponse get param =>
      throw _privateConstructorUsedError;
  bool get withLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoOutletDataMenuCategoryResponseCopyWith<
          PromoOutletDataMenuCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoOutletDataMenuCategoryResponseCopyWith<$Res> {
  factory $PromoOutletDataMenuCategoryResponseCopyWith(
          PromoOutletDataMenuCategoryResponse value,
          $Res Function(PromoOutletDataMenuCategoryResponse) then) =
      _$PromoOutletDataMenuCategoryResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isEnable,
      String title,
      String icon,
      PromoOutletDataMenuCategoryParamResponse param,
      bool withLocation});

  $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> get param;
}

/// @nodoc
class _$PromoOutletDataMenuCategoryResponseCopyWithImpl<$Res>
    implements $PromoOutletDataMenuCategoryResponseCopyWith<$Res> {
  _$PromoOutletDataMenuCategoryResponseCopyWithImpl(this._value, this._then);

  final PromoOutletDataMenuCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(PromoOutletDataMenuCategoryResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isEnable = freezed,
    Object? title = freezed,
    Object? icon = freezed,
    Object? param = freezed,
    Object? withLocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as PromoOutletDataMenuCategoryParamResponse,
      withLocation: withLocation == freezed
          ? _value.withLocation
          : withLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> get param {
    return $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res>(_value.param,
        (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc
abstract class _$PromoOutletDataMenuCategoryResponseCopyWith<$Res>
    implements $PromoOutletDataMenuCategoryResponseCopyWith<$Res> {
  factory _$PromoOutletDataMenuCategoryResponseCopyWith(
          _PromoOutletDataMenuCategoryResponse value,
          $Res Function(_PromoOutletDataMenuCategoryResponse) then) =
      __$PromoOutletDataMenuCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isEnable,
      String title,
      String icon,
      PromoOutletDataMenuCategoryParamResponse param,
      bool withLocation});

  @override
  $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> get param;
}

/// @nodoc
class __$PromoOutletDataMenuCategoryResponseCopyWithImpl<$Res>
    extends _$PromoOutletDataMenuCategoryResponseCopyWithImpl<$Res>
    implements _$PromoOutletDataMenuCategoryResponseCopyWith<$Res> {
  __$PromoOutletDataMenuCategoryResponseCopyWithImpl(
      _PromoOutletDataMenuCategoryResponse _value,
      $Res Function(_PromoOutletDataMenuCategoryResponse) _then)
      : super(_value, (v) => _then(v as _PromoOutletDataMenuCategoryResponse));

  @override
  _PromoOutletDataMenuCategoryResponse get _value =>
      super._value as _PromoOutletDataMenuCategoryResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? isEnable = freezed,
    Object? title = freezed,
    Object? icon = freezed,
    Object? param = freezed,
    Object? withLocation = freezed,
  }) {
    return _then(_PromoOutletDataMenuCategoryResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as PromoOutletDataMenuCategoryParamResponse,
      withLocation: withLocation == freezed
          ? _value.withLocation
          : withLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoOutletDataMenuCategoryResponse
    implements _PromoOutletDataMenuCategoryResponse {
  const _$_PromoOutletDataMenuCategoryResponse(
      {required this.id,
      required this.isEnable,
      required this.title,
      required this.icon,
      required this.param,
      required this.withLocation});

  factory _$_PromoOutletDataMenuCategoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_PromoOutletDataMenuCategoryResponseFromJson(json);

  @override
  final String id;
  @override
  final bool isEnable;
  @override
  final String title;
  @override
  final String icon;
  @override
  final PromoOutletDataMenuCategoryParamResponse param;
  @override
  final bool withLocation;

  @override
  String toString() {
    return 'PromoOutletDataMenuCategoryResponse(id: $id, isEnable: $isEnable, title: $title, icon: $icon, param: $param, withLocation: $withLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoOutletDataMenuCategoryResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isEnable, isEnable) ||
                const DeepCollectionEquality()
                    .equals(other.isEnable, isEnable)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.param, param) ||
                const DeepCollectionEquality().equals(other.param, param)) &&
            (identical(other.withLocation, withLocation) ||
                const DeepCollectionEquality()
                    .equals(other.withLocation, withLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isEnable) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(param) ^
      const DeepCollectionEquality().hash(withLocation);

  @JsonKey(ignore: true)
  @override
  _$PromoOutletDataMenuCategoryResponseCopyWith<
          _PromoOutletDataMenuCategoryResponse>
      get copyWith => __$PromoOutletDataMenuCategoryResponseCopyWithImpl<
          _PromoOutletDataMenuCategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoOutletDataMenuCategoryResponseToJson(this);
  }
}

abstract class _PromoOutletDataMenuCategoryResponse
    implements PromoOutletDataMenuCategoryResponse {
  const factory _PromoOutletDataMenuCategoryResponse(
      {required String id,
      required bool isEnable,
      required String title,
      required String icon,
      required PromoOutletDataMenuCategoryParamResponse param,
      required bool withLocation}) = _$_PromoOutletDataMenuCategoryResponse;

  factory _PromoOutletDataMenuCategoryResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PromoOutletDataMenuCategoryResponse.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get isEnable => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  PromoOutletDataMenuCategoryParamResponse get param =>
      throw _privateConstructorUsedError;
  @override
  bool get withLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoOutletDataMenuCategoryResponseCopyWith<
          _PromoOutletDataMenuCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

PromoOutletDataMenuCategoryParamResponse
    _$PromoOutletDataMenuCategoryParamResponseFromJson(
        Map<String, dynamic> json) {
  return _PromoOutletDataMenuCategoryParamResponse.fromJson(json);
}

/// @nodoc
class _$PromoOutletDataMenuCategoryParamResponseTearOff {
  const _$PromoOutletDataMenuCategoryParamResponseTearOff();

  _PromoOutletDataMenuCategoryParamResponse call({required String category}) {
    return _PromoOutletDataMenuCategoryParamResponse(
      category: category,
    );
  }

  PromoOutletDataMenuCategoryParamResponse fromJson(Map<String, Object> json) {
    return PromoOutletDataMenuCategoryParamResponse.fromJson(json);
  }
}

/// @nodoc
const $PromoOutletDataMenuCategoryParamResponse =
    _$PromoOutletDataMenuCategoryParamResponseTearOff();

/// @nodoc
mixin _$PromoOutletDataMenuCategoryParamResponse {
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoOutletDataMenuCategoryParamResponseCopyWith<
          PromoOutletDataMenuCategoryParamResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> {
  factory $PromoOutletDataMenuCategoryParamResponseCopyWith(
          PromoOutletDataMenuCategoryParamResponse value,
          $Res Function(PromoOutletDataMenuCategoryParamResponse) then) =
      _$PromoOutletDataMenuCategoryParamResponseCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class _$PromoOutletDataMenuCategoryParamResponseCopyWithImpl<$Res>
    implements $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> {
  _$PromoOutletDataMenuCategoryParamResponseCopyWithImpl(
      this._value, this._then);

  final PromoOutletDataMenuCategoryParamResponse _value;
  // ignore: unused_field
  final $Res Function(PromoOutletDataMenuCategoryParamResponse) _then;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PromoOutletDataMenuCategoryParamResponseCopyWith<$Res>
    implements $PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> {
  factory _$PromoOutletDataMenuCategoryParamResponseCopyWith(
          _PromoOutletDataMenuCategoryParamResponse value,
          $Res Function(_PromoOutletDataMenuCategoryParamResponse) then) =
      __$PromoOutletDataMenuCategoryParamResponseCopyWithImpl<$Res>;
  @override
  $Res call({String category});
}

/// @nodoc
class __$PromoOutletDataMenuCategoryParamResponseCopyWithImpl<$Res>
    extends _$PromoOutletDataMenuCategoryParamResponseCopyWithImpl<$Res>
    implements _$PromoOutletDataMenuCategoryParamResponseCopyWith<$Res> {
  __$PromoOutletDataMenuCategoryParamResponseCopyWithImpl(
      _PromoOutletDataMenuCategoryParamResponse _value,
      $Res Function(_PromoOutletDataMenuCategoryParamResponse) _then)
      : super(_value,
            (v) => _then(v as _PromoOutletDataMenuCategoryParamResponse));

  @override
  _PromoOutletDataMenuCategoryParamResponse get _value =>
      super._value as _PromoOutletDataMenuCategoryParamResponse;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_PromoOutletDataMenuCategoryParamResponse(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoOutletDataMenuCategoryParamResponse
    implements _PromoOutletDataMenuCategoryParamResponse {
  const _$_PromoOutletDataMenuCategoryParamResponse({required this.category});

  factory _$_PromoOutletDataMenuCategoryParamResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_PromoOutletDataMenuCategoryParamResponseFromJson(json);

  @override
  final String category;

  @override
  String toString() {
    return 'PromoOutletDataMenuCategoryParamResponse(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoOutletDataMenuCategoryParamResponse &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$PromoOutletDataMenuCategoryParamResponseCopyWith<
          _PromoOutletDataMenuCategoryParamResponse>
      get copyWith => __$PromoOutletDataMenuCategoryParamResponseCopyWithImpl<
          _PromoOutletDataMenuCategoryParamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoOutletDataMenuCategoryParamResponseToJson(this);
  }
}

abstract class _PromoOutletDataMenuCategoryParamResponse
    implements PromoOutletDataMenuCategoryParamResponse {
  const factory _PromoOutletDataMenuCategoryParamResponse(
      {required String category}) = _$_PromoOutletDataMenuCategoryParamResponse;

  factory _PromoOutletDataMenuCategoryParamResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PromoOutletDataMenuCategoryParamResponse.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoOutletDataMenuCategoryParamResponseCopyWith<
          _PromoOutletDataMenuCategoryParamResponse>
      get copyWith => throw _privateConstructorUsedError;
}
