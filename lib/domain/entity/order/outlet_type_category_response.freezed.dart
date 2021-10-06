// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'outlet_type_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutletTypeCategoryResponse _$OutletTypeCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletTypeCategoryResponse.fromJson(json);
}

/// @nodoc
class _$OutletTypeCategoryResponseTearOff {
  const _$OutletTypeCategoryResponseTearOff();

  _OutletTypeCategoryResponse call(
      {required StatusResponse response,
      required OutletTypeCategoryDataResponse data,
      required MetaResponse meta}) {
    return _OutletTypeCategoryResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  OutletTypeCategoryResponse fromJson(Map<String, Object> json) {
    return OutletTypeCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletTypeCategoryResponse = _$OutletTypeCategoryResponseTearOff();

/// @nodoc
mixin _$OutletTypeCategoryResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  OutletTypeCategoryDataResponse get data => throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletTypeCategoryResponseCopyWith<OutletTypeCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletTypeCategoryResponseCopyWith<$Res> {
  factory $OutletTypeCategoryResponseCopyWith(OutletTypeCategoryResponse value,
          $Res Function(OutletTypeCategoryResponse) then) =
      _$OutletTypeCategoryResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      OutletTypeCategoryDataResponse data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $OutletTypeCategoryDataResponseCopyWith<$Res> get data;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$OutletTypeCategoryResponseCopyWithImpl<$Res>
    implements $OutletTypeCategoryResponseCopyWith<$Res> {
  _$OutletTypeCategoryResponseCopyWithImpl(this._value, this._then);

  final OutletTypeCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(OutletTypeCategoryResponse) _then;

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
              as OutletTypeCategoryDataResponse,
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
  $OutletTypeCategoryDataResponseCopyWith<$Res> get data {
    return $OutletTypeCategoryDataResponseCopyWith<$Res>(_value.data, (value) {
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
abstract class _$OutletTypeCategoryResponseCopyWith<$Res>
    implements $OutletTypeCategoryResponseCopyWith<$Res> {
  factory _$OutletTypeCategoryResponseCopyWith(
          _OutletTypeCategoryResponse value,
          $Res Function(_OutletTypeCategoryResponse) then) =
      __$OutletTypeCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      OutletTypeCategoryDataResponse data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $OutletTypeCategoryDataResponseCopyWith<$Res> get data;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$OutletTypeCategoryResponseCopyWithImpl<$Res>
    extends _$OutletTypeCategoryResponseCopyWithImpl<$Res>
    implements _$OutletTypeCategoryResponseCopyWith<$Res> {
  __$OutletTypeCategoryResponseCopyWithImpl(_OutletTypeCategoryResponse _value,
      $Res Function(_OutletTypeCategoryResponse) _then)
      : super(_value, (v) => _then(v as _OutletTypeCategoryResponse));

  @override
  _OutletTypeCategoryResponse get _value =>
      super._value as _OutletTypeCategoryResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_OutletTypeCategoryResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OutletTypeCategoryDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletTypeCategoryResponse implements _OutletTypeCategoryResponse {
  const _$_OutletTypeCategoryResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_OutletTypeCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OutletTypeCategoryResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final OutletTypeCategoryDataResponse data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'OutletTypeCategoryResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletTypeCategoryResponse &&
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
  _$OutletTypeCategoryResponseCopyWith<_OutletTypeCategoryResponse>
      get copyWith => __$OutletTypeCategoryResponseCopyWithImpl<
          _OutletTypeCategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutletTypeCategoryResponseToJson(this);
  }
}

abstract class _OutletTypeCategoryResponse
    implements OutletTypeCategoryResponse {
  const factory _OutletTypeCategoryResponse(
      {required StatusResponse response,
      required OutletTypeCategoryDataResponse data,
      required MetaResponse meta}) = _$_OutletTypeCategoryResponse;

  factory _OutletTypeCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletTypeCategoryResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  OutletTypeCategoryDataResponse get data => throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletTypeCategoryResponseCopyWith<_OutletTypeCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletTypeCategoryDataResponse _$OutletTypeCategoryDataResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletTypeCategoryDataResponse.fromJson(json);
}

/// @nodoc
class _$OutletTypeCategoryDataResponseTearOff {
  const _$OutletTypeCategoryDataResponseTearOff();

  _OutletTypeCategoryDataResponse call(
      {required List<PromoOutletDataMenuCategoryResponse> menuCategory}) {
    return _OutletTypeCategoryDataResponse(
      menuCategory: menuCategory,
    );
  }

  OutletTypeCategoryDataResponse fromJson(Map<String, Object> json) {
    return OutletTypeCategoryDataResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletTypeCategoryDataResponse =
    _$OutletTypeCategoryDataResponseTearOff();

/// @nodoc
mixin _$OutletTypeCategoryDataResponse {
  List<PromoOutletDataMenuCategoryResponse> get menuCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletTypeCategoryDataResponseCopyWith<OutletTypeCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletTypeCategoryDataResponseCopyWith<$Res> {
  factory $OutletTypeCategoryDataResponseCopyWith(
          OutletTypeCategoryDataResponse value,
          $Res Function(OutletTypeCategoryDataResponse) then) =
      _$OutletTypeCategoryDataResponseCopyWithImpl<$Res>;
  $Res call({List<PromoOutletDataMenuCategoryResponse> menuCategory});
}

/// @nodoc
class _$OutletTypeCategoryDataResponseCopyWithImpl<$Res>
    implements $OutletTypeCategoryDataResponseCopyWith<$Res> {
  _$OutletTypeCategoryDataResponseCopyWithImpl(this._value, this._then);

  final OutletTypeCategoryDataResponse _value;
  // ignore: unused_field
  final $Res Function(OutletTypeCategoryDataResponse) _then;

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
abstract class _$OutletTypeCategoryDataResponseCopyWith<$Res>
    implements $OutletTypeCategoryDataResponseCopyWith<$Res> {
  factory _$OutletTypeCategoryDataResponseCopyWith(
          _OutletTypeCategoryDataResponse value,
          $Res Function(_OutletTypeCategoryDataResponse) then) =
      __$OutletTypeCategoryDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<PromoOutletDataMenuCategoryResponse> menuCategory});
}

/// @nodoc
class __$OutletTypeCategoryDataResponseCopyWithImpl<$Res>
    extends _$OutletTypeCategoryDataResponseCopyWithImpl<$Res>
    implements _$OutletTypeCategoryDataResponseCopyWith<$Res> {
  __$OutletTypeCategoryDataResponseCopyWithImpl(
      _OutletTypeCategoryDataResponse _value,
      $Res Function(_OutletTypeCategoryDataResponse) _then)
      : super(_value, (v) => _then(v as _OutletTypeCategoryDataResponse));

  @override
  _OutletTypeCategoryDataResponse get _value =>
      super._value as _OutletTypeCategoryDataResponse;

  @override
  $Res call({
    Object? menuCategory = freezed,
  }) {
    return _then(_OutletTypeCategoryDataResponse(
      menuCategory: menuCategory == freezed
          ? _value.menuCategory
          : menuCategory // ignore: cast_nullable_to_non_nullable
              as List<PromoOutletDataMenuCategoryResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletTypeCategoryDataResponse
    implements _OutletTypeCategoryDataResponse {
  const _$_OutletTypeCategoryDataResponse({required this.menuCategory});

  factory _$_OutletTypeCategoryDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_OutletTypeCategoryDataResponseFromJson(json);

  @override
  final List<PromoOutletDataMenuCategoryResponse> menuCategory;

  @override
  String toString() {
    return 'OutletTypeCategoryDataResponse(menuCategory: $menuCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletTypeCategoryDataResponse &&
            (identical(other.menuCategory, menuCategory) ||
                const DeepCollectionEquality()
                    .equals(other.menuCategory, menuCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(menuCategory);

  @JsonKey(ignore: true)
  @override
  _$OutletTypeCategoryDataResponseCopyWith<_OutletTypeCategoryDataResponse>
      get copyWith => __$OutletTypeCategoryDataResponseCopyWithImpl<
          _OutletTypeCategoryDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutletTypeCategoryDataResponseToJson(this);
  }
}

abstract class _OutletTypeCategoryDataResponse
    implements OutletTypeCategoryDataResponse {
  const factory _OutletTypeCategoryDataResponse(
          {required List<PromoOutletDataMenuCategoryResponse> menuCategory}) =
      _$_OutletTypeCategoryDataResponse;

  factory _OutletTypeCategoryDataResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletTypeCategoryDataResponse.fromJson;

  @override
  List<PromoOutletDataMenuCategoryResponse> get menuCategory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletTypeCategoryDataResponseCopyWith<_OutletTypeCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
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
      _$$_PromoOutletDataMenuCategoryResponseFromJson(json);

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
    return _$$_PromoOutletDataMenuCategoryResponseToJson(this);
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
      _$$_PromoOutletDataMenuCategoryParamResponseFromJson(json);

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
    return _$$_PromoOutletDataMenuCategoryParamResponseToJson(this);
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
