// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'outlet_list_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutletListProductResponse _$OutletListProductResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletListProductResponse.fromJson(json);
}

/// @nodoc
class _$OutletListProductResponseTearOff {
  const _$OutletListProductResponseTearOff();

  _OutletListProductResponse call(
      {required StatusResponse response,
      required List<OutletListProductDataResponse> data,
      required MetaResponse meta}) {
    return _OutletListProductResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  OutletListProductResponse fromJson(Map<String, Object> json) {
    return OutletListProductResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletListProductResponse = _$OutletListProductResponseTearOff();

/// @nodoc
mixin _$OutletListProductResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  List<OutletListProductDataResponse> get data =>
      throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletListProductResponseCopyWith<OutletListProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletListProductResponseCopyWith<$Res> {
  factory $OutletListProductResponseCopyWith(OutletListProductResponse value,
          $Res Function(OutletListProductResponse) then) =
      _$OutletListProductResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      List<OutletListProductDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$OutletListProductResponseCopyWithImpl<$Res>
    implements $OutletListProductResponseCopyWith<$Res> {
  _$OutletListProductResponseCopyWithImpl(this._value, this._then);

  final OutletListProductResponse _value;
  // ignore: unused_field
  final $Res Function(OutletListProductResponse) _then;

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
              as List<OutletListProductDataResponse>,
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
abstract class _$OutletListProductResponseCopyWith<$Res>
    implements $OutletListProductResponseCopyWith<$Res> {
  factory _$OutletListProductResponseCopyWith(_OutletListProductResponse value,
          $Res Function(_OutletListProductResponse) then) =
      __$OutletListProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<OutletListProductDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$OutletListProductResponseCopyWithImpl<$Res>
    extends _$OutletListProductResponseCopyWithImpl<$Res>
    implements _$OutletListProductResponseCopyWith<$Res> {
  __$OutletListProductResponseCopyWithImpl(_OutletListProductResponse _value,
      $Res Function(_OutletListProductResponse) _then)
      : super(_value, (v) => _then(v as _OutletListProductResponse));

  @override
  _OutletListProductResponse get _value =>
      super._value as _OutletListProductResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_OutletListProductResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletListProductResponse implements _OutletListProductResponse {
  const _$_OutletListProductResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_OutletListProductResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletListProductResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<OutletListProductDataResponse> data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'OutletListProductResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletListProductResponse &&
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
  _$OutletListProductResponseCopyWith<_OutletListProductResponse>
      get copyWith =>
          __$OutletListProductResponseCopyWithImpl<_OutletListProductResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletListProductResponseToJson(this);
  }
}

abstract class _OutletListProductResponse implements OutletListProductResponse {
  const factory _OutletListProductResponse(
      {required StatusResponse response,
      required List<OutletListProductDataResponse> data,
      required MetaResponse meta}) = _$_OutletListProductResponse;

  factory _OutletListProductResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletListProductResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<OutletListProductDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletListProductResponseCopyWith<_OutletListProductResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletListProductDataModifierGroupResponse
    _$OutletListProductDataModifierGroupResponseFromJson(
        Map<String, dynamic> json) {
  return _OutletListProductDataModifierGroupResponse.fromJson(json);
}

/// @nodoc
class _$OutletListProductDataModifierGroupResponseTearOff {
  const _$OutletListProductDataModifierGroupResponseTearOff();

  _OutletListProductDataModifierGroupResponse call(
      {required String name,
      required String id,
      required String code,
      required int allowMultiple,
      required int allowQuantity,
      required int minQuantity,
      required int maxQuantity,
      required List<OutletListProductDataSubModifierGroupResponse> modifiers}) {
    return _OutletListProductDataModifierGroupResponse(
      name: name,
      id: id,
      code: code,
      allowMultiple: allowMultiple,
      allowQuantity: allowQuantity,
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      modifiers: modifiers,
    );
  }

  OutletListProductDataModifierGroupResponse fromJson(
      Map<String, Object> json) {
    return OutletListProductDataModifierGroupResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletListProductDataModifierGroupResponse =
    _$OutletListProductDataModifierGroupResponseTearOff();

/// @nodoc
mixin _$OutletListProductDataModifierGroupResponse {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get allowMultiple => throw _privateConstructorUsedError;
  int get allowQuantity => throw _privateConstructorUsedError;
  int get minQuantity => throw _privateConstructorUsedError;
  int get maxQuantity => throw _privateConstructorUsedError;
  List<OutletListProductDataSubModifierGroupResponse> get modifiers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletListProductDataModifierGroupResponseCopyWith<
          OutletListProductDataModifierGroupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletListProductDataModifierGroupResponseCopyWith<$Res> {
  factory $OutletListProductDataModifierGroupResponseCopyWith(
          OutletListProductDataModifierGroupResponse value,
          $Res Function(OutletListProductDataModifierGroupResponse) then) =
      _$OutletListProductDataModifierGroupResponseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String id,
      String code,
      int allowMultiple,
      int allowQuantity,
      int minQuantity,
      int maxQuantity,
      List<OutletListProductDataSubModifierGroupResponse> modifiers});
}

/// @nodoc
class _$OutletListProductDataModifierGroupResponseCopyWithImpl<$Res>
    implements $OutletListProductDataModifierGroupResponseCopyWith<$Res> {
  _$OutletListProductDataModifierGroupResponseCopyWithImpl(
      this._value, this._then);

  final OutletListProductDataModifierGroupResponse _value;
  // ignore: unused_field
  final $Res Function(OutletListProductDataModifierGroupResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? allowMultiple = freezed,
    Object? allowQuantity = freezed,
    Object? minQuantity = freezed,
    Object? maxQuantity = freezed,
    Object? modifiers = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      allowMultiple: allowMultiple == freezed
          ? _value.allowMultiple
          : allowMultiple // ignore: cast_nullable_to_non_nullable
              as int,
      allowQuantity: allowQuantity == freezed
          ? _value.allowQuantity
          : allowQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minQuantity: minQuantity == freezed
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataSubModifierGroupResponse>,
    ));
  }
}

/// @nodoc
abstract class _$OutletListProductDataModifierGroupResponseCopyWith<$Res>
    implements $OutletListProductDataModifierGroupResponseCopyWith<$Res> {
  factory _$OutletListProductDataModifierGroupResponseCopyWith(
          _OutletListProductDataModifierGroupResponse value,
          $Res Function(_OutletListProductDataModifierGroupResponse) then) =
      __$OutletListProductDataModifierGroupResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String id,
      String code,
      int allowMultiple,
      int allowQuantity,
      int minQuantity,
      int maxQuantity,
      List<OutletListProductDataSubModifierGroupResponse> modifiers});
}

/// @nodoc
class __$OutletListProductDataModifierGroupResponseCopyWithImpl<$Res>
    extends _$OutletListProductDataModifierGroupResponseCopyWithImpl<$Res>
    implements _$OutletListProductDataModifierGroupResponseCopyWith<$Res> {
  __$OutletListProductDataModifierGroupResponseCopyWithImpl(
      _OutletListProductDataModifierGroupResponse _value,
      $Res Function(_OutletListProductDataModifierGroupResponse) _then)
      : super(_value,
            (v) => _then(v as _OutletListProductDataModifierGroupResponse));

  @override
  _OutletListProductDataModifierGroupResponse get _value =>
      super._value as _OutletListProductDataModifierGroupResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? allowMultiple = freezed,
    Object? allowQuantity = freezed,
    Object? minQuantity = freezed,
    Object? maxQuantity = freezed,
    Object? modifiers = freezed,
  }) {
    return _then(_OutletListProductDataModifierGroupResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      allowMultiple: allowMultiple == freezed
          ? _value.allowMultiple
          : allowMultiple // ignore: cast_nullable_to_non_nullable
              as int,
      allowQuantity: allowQuantity == freezed
          ? _value.allowQuantity
          : allowQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minQuantity: minQuantity == freezed
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataSubModifierGroupResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletListProductDataModifierGroupResponse
    implements _OutletListProductDataModifierGroupResponse {
  const _$_OutletListProductDataModifierGroupResponse(
      {required this.name,
      required this.id,
      required this.code,
      required this.allowMultiple,
      required this.allowQuantity,
      required this.minQuantity,
      required this.maxQuantity,
      required this.modifiers});

  factory _$_OutletListProductDataModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletListProductDataModifierGroupResponseFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String code;
  @override
  final int allowMultiple;
  @override
  final int allowQuantity;
  @override
  final int minQuantity;
  @override
  final int maxQuantity;
  @override
  final List<OutletListProductDataSubModifierGroupResponse> modifiers;

  @override
  String toString() {
    return 'OutletListProductDataModifierGroupResponse(name: $name, id: $id, code: $code, allowMultiple: $allowMultiple, allowQuantity: $allowQuantity, minQuantity: $minQuantity, maxQuantity: $maxQuantity, modifiers: $modifiers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletListProductDataModifierGroupResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.allowMultiple, allowMultiple) ||
                const DeepCollectionEquality()
                    .equals(other.allowMultiple, allowMultiple)) &&
            (identical(other.allowQuantity, allowQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.allowQuantity, allowQuantity)) &&
            (identical(other.minQuantity, minQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.minQuantity, minQuantity)) &&
            (identical(other.maxQuantity, maxQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.maxQuantity, maxQuantity)) &&
            (identical(other.modifiers, modifiers) ||
                const DeepCollectionEquality()
                    .equals(other.modifiers, modifiers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(allowMultiple) ^
      const DeepCollectionEquality().hash(allowQuantity) ^
      const DeepCollectionEquality().hash(minQuantity) ^
      const DeepCollectionEquality().hash(maxQuantity) ^
      const DeepCollectionEquality().hash(modifiers);

  @JsonKey(ignore: true)
  @override
  _$OutletListProductDataModifierGroupResponseCopyWith<
          _OutletListProductDataModifierGroupResponse>
      get copyWith => __$OutletListProductDataModifierGroupResponseCopyWithImpl<
          _OutletListProductDataModifierGroupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletListProductDataModifierGroupResponseToJson(this);
  }
}

abstract class _OutletListProductDataModifierGroupResponse
    implements OutletListProductDataModifierGroupResponse {
  const factory _OutletListProductDataModifierGroupResponse(
      {required String name,
      required String id,
      required String code,
      required int allowMultiple,
      required int allowQuantity,
      required int minQuantity,
      required int maxQuantity,
      required List<OutletListProductDataSubModifierGroupResponse>
          modifiers}) = _$_OutletListProductDataModifierGroupResponse;

  factory _OutletListProductDataModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =
      _$_OutletListProductDataModifierGroupResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get allowMultiple => throw _privateConstructorUsedError;
  @override
  int get allowQuantity => throw _privateConstructorUsedError;
  @override
  int get minQuantity => throw _privateConstructorUsedError;
  @override
  int get maxQuantity => throw _privateConstructorUsedError;
  @override
  List<OutletListProductDataSubModifierGroupResponse> get modifiers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletListProductDataModifierGroupResponseCopyWith<
          _OutletListProductDataModifierGroupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletListProductDataSubModifierGroupResponse
    _$OutletListProductDataSubModifierGroupResponseFromJson(
        Map<String, dynamic> json) {
  return _OutletListProductDataSubModifierGroupResponse.fromJson(json);
}

/// @nodoc
class _$OutletListProductDataSubModifierGroupResponseTearOff {
  const _$OutletListProductDataSubModifierGroupResponseTearOff();

  _OutletListProductDataSubModifierGroupResponse call(
      {required String code,
      required String? sku,
      required bool isPreorder,
      required int? preorderPeriod,
      required int? crossoutPrice,
      required int? stock,
      required int? limit,
      required String id,
      required String name,
      required int price,
      required int weight,
      required String description,
      required String image,
      required String categoryId,
      required String categoryCode,
      required String categoryName}) {
    return _OutletListProductDataSubModifierGroupResponse(
      code: code,
      sku: sku,
      isPreorder: isPreorder,
      preorderPeriod: preorderPeriod,
      crossoutPrice: crossoutPrice,
      stock: stock,
      limit: limit,
      id: id,
      name: name,
      price: price,
      weight: weight,
      description: description,
      image: image,
      categoryId: categoryId,
      categoryCode: categoryCode,
      categoryName: categoryName,
    );
  }

  OutletListProductDataSubModifierGroupResponse fromJson(
      Map<String, Object> json) {
    return OutletListProductDataSubModifierGroupResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletListProductDataSubModifierGroupResponse =
    _$OutletListProductDataSubModifierGroupResponseTearOff();

/// @nodoc
mixin _$OutletListProductDataSubModifierGroupResponse {
  String get code => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  bool get isPreorder => throw _privateConstructorUsedError;
  int? get preorderPeriod => throw _privateConstructorUsedError;
  int? get crossoutPrice => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletListProductDataSubModifierGroupResponseCopyWith<
          OutletListProductDataSubModifierGroupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletListProductDataSubModifierGroupResponseCopyWith<$Res> {
  factory $OutletListProductDataSubModifierGroupResponseCopyWith(
          OutletListProductDataSubModifierGroupResponse value,
          $Res Function(OutletListProductDataSubModifierGroupResponse) then) =
      _$OutletListProductDataSubModifierGroupResponseCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String? sku,
      bool isPreorder,
      int? preorderPeriod,
      int? crossoutPrice,
      int? stock,
      int? limit,
      String id,
      String name,
      int price,
      int weight,
      String description,
      String image,
      String categoryId,
      String categoryCode,
      String categoryName});
}

/// @nodoc
class _$OutletListProductDataSubModifierGroupResponseCopyWithImpl<$Res>
    implements $OutletListProductDataSubModifierGroupResponseCopyWith<$Res> {
  _$OutletListProductDataSubModifierGroupResponseCopyWithImpl(
      this._value, this._then);

  final OutletListProductDataSubModifierGroupResponse _value;
  // ignore: unused_field
  final $Res Function(OutletListProductDataSubModifierGroupResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? crossoutPrice = freezed,
    Object? stock = freezed,
    Object? limit = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      crossoutPrice: crossoutPrice == freezed
          ? _value.crossoutPrice
          : crossoutPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OutletListProductDataSubModifierGroupResponseCopyWith<$Res>
    implements $OutletListProductDataSubModifierGroupResponseCopyWith<$Res> {
  factory _$OutletListProductDataSubModifierGroupResponseCopyWith(
          _OutletListProductDataSubModifierGroupResponse value,
          $Res Function(_OutletListProductDataSubModifierGroupResponse) then) =
      __$OutletListProductDataSubModifierGroupResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String? sku,
      bool isPreorder,
      int? preorderPeriod,
      int? crossoutPrice,
      int? stock,
      int? limit,
      String id,
      String name,
      int price,
      int weight,
      String description,
      String image,
      String categoryId,
      String categoryCode,
      String categoryName});
}

/// @nodoc
class __$OutletListProductDataSubModifierGroupResponseCopyWithImpl<$Res>
    extends _$OutletListProductDataSubModifierGroupResponseCopyWithImpl<$Res>
    implements _$OutletListProductDataSubModifierGroupResponseCopyWith<$Res> {
  __$OutletListProductDataSubModifierGroupResponseCopyWithImpl(
      _OutletListProductDataSubModifierGroupResponse _value,
      $Res Function(_OutletListProductDataSubModifierGroupResponse) _then)
      : super(_value,
            (v) => _then(v as _OutletListProductDataSubModifierGroupResponse));

  @override
  _OutletListProductDataSubModifierGroupResponse get _value =>
      super._value as _OutletListProductDataSubModifierGroupResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? crossoutPrice = freezed,
    Object? stock = freezed,
    Object? limit = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_OutletListProductDataSubModifierGroupResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      crossoutPrice: crossoutPrice == freezed
          ? _value.crossoutPrice
          : crossoutPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletListProductDataSubModifierGroupResponse
    implements _OutletListProductDataSubModifierGroupResponse {
  const _$_OutletListProductDataSubModifierGroupResponse(
      {required this.code,
      required this.sku,
      required this.isPreorder,
      required this.preorderPeriod,
      required this.crossoutPrice,
      required this.stock,
      required this.limit,
      required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.description,
      required this.image,
      required this.categoryId,
      required this.categoryCode,
      required this.categoryName});

  factory _$_OutletListProductDataSubModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletListProductDataSubModifierGroupResponseFromJson(json);

  @override
  final String code;
  @override
  final String? sku;
  @override
  final bool isPreorder;
  @override
  final int? preorderPeriod;
  @override
  final int? crossoutPrice;
  @override
  final int? stock;
  @override
  final int? limit;
  @override
  final String id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int weight;
  @override
  final String description;
  @override
  final String image;
  @override
  final String categoryId;
  @override
  final String categoryCode;
  @override
  final String categoryName;

  @override
  String toString() {
    return 'OutletListProductDataSubModifierGroupResponse(code: $code, sku: $sku, isPreorder: $isPreorder, preorderPeriod: $preorderPeriod, crossoutPrice: $crossoutPrice, stock: $stock, limit: $limit, id: $id, name: $name, price: $price, weight: $weight, description: $description, image: $image, categoryId: $categoryId, categoryCode: $categoryCode, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletListProductDataSubModifierGroupResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.isPreorder, isPreorder) ||
                const DeepCollectionEquality()
                    .equals(other.isPreorder, isPreorder)) &&
            (identical(other.preorderPeriod, preorderPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.preorderPeriod, preorderPeriod)) &&
            (identical(other.crossoutPrice, crossoutPrice) ||
                const DeepCollectionEquality()
                    .equals(other.crossoutPrice, crossoutPrice)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(isPreorder) ^
      const DeepCollectionEquality().hash(preorderPeriod) ^
      const DeepCollectionEquality().hash(crossoutPrice) ^
      const DeepCollectionEquality().hash(stock) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(categoryName);

  @JsonKey(ignore: true)
  @override
  _$OutletListProductDataSubModifierGroupResponseCopyWith<
          _OutletListProductDataSubModifierGroupResponse>
      get copyWith =>
          __$OutletListProductDataSubModifierGroupResponseCopyWithImpl<
              _OutletListProductDataSubModifierGroupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletListProductDataSubModifierGroupResponseToJson(this);
  }
}

abstract class _OutletListProductDataSubModifierGroupResponse
    implements OutletListProductDataSubModifierGroupResponse {
  const factory _OutletListProductDataSubModifierGroupResponse(
          {required String code,
          required String? sku,
          required bool isPreorder,
          required int? preorderPeriod,
          required int? crossoutPrice,
          required int? stock,
          required int? limit,
          required String id,
          required String name,
          required int price,
          required int weight,
          required String description,
          required String image,
          required String categoryId,
          required String categoryCode,
          required String categoryName}) =
      _$_OutletListProductDataSubModifierGroupResponse;

  factory _OutletListProductDataSubModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =
      _$_OutletListProductDataSubModifierGroupResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String? get sku => throw _privateConstructorUsedError;
  @override
  bool get isPreorder => throw _privateConstructorUsedError;
  @override
  int? get preorderPeriod => throw _privateConstructorUsedError;
  @override
  int? get crossoutPrice => throw _privateConstructorUsedError;
  @override
  int? get stock => throw _privateConstructorUsedError;
  @override
  int? get limit => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get categoryId => throw _privateConstructorUsedError;
  @override
  String get categoryCode => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletListProductDataSubModifierGroupResponseCopyWith<
          _OutletListProductDataSubModifierGroupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletListProductDataResponse _$OutletListProductDataResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletListProductDataResponse.fromJson(json);
}

/// @nodoc
class _$OutletListProductDataResponseTearOff {
  const _$OutletListProductDataResponseTearOff();

  _OutletListProductDataResponse call(
      {required String code,
      required String? sku,
      required bool isPreorder,
      required int? preorderPeriod,
      required int? crossoutPrice,
      required int? stock,
      required int? limit,
      required String id,
      required String name,
      required int price,
      required int weight,
      required String description,
      required String image,
      required String categoryId,
      required String categoryCode,
      required String categoryName,
      required List<OutletListProductDataVariantResponse> variants,
      required List<OutletListProductDataModifierGroupResponse>
          modifierGroups}) {
    return _OutletListProductDataResponse(
      code: code,
      sku: sku,
      isPreorder: isPreorder,
      preorderPeriod: preorderPeriod,
      crossoutPrice: crossoutPrice,
      stock: stock,
      limit: limit,
      id: id,
      name: name,
      price: price,
      weight: weight,
      description: description,
      image: image,
      categoryId: categoryId,
      categoryCode: categoryCode,
      categoryName: categoryName,
      variants: variants,
      modifierGroups: modifierGroups,
    );
  }

  OutletListProductDataResponse fromJson(Map<String, Object> json) {
    return OutletListProductDataResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletListProductDataResponse = _$OutletListProductDataResponseTearOff();

/// @nodoc
mixin _$OutletListProductDataResponse {
  String get code => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  bool get isPreorder => throw _privateConstructorUsedError;
  int? get preorderPeriod => throw _privateConstructorUsedError;
  int? get crossoutPrice => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  List<OutletListProductDataVariantResponse> get variants =>
      throw _privateConstructorUsedError;
  List<OutletListProductDataModifierGroupResponse> get modifierGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletListProductDataResponseCopyWith<OutletListProductDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletListProductDataResponseCopyWith<$Res> {
  factory $OutletListProductDataResponseCopyWith(
          OutletListProductDataResponse value,
          $Res Function(OutletListProductDataResponse) then) =
      _$OutletListProductDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String? sku,
      bool isPreorder,
      int? preorderPeriod,
      int? crossoutPrice,
      int? stock,
      int? limit,
      String id,
      String name,
      int price,
      int weight,
      String description,
      String image,
      String categoryId,
      String categoryCode,
      String categoryName,
      List<OutletListProductDataVariantResponse> variants,
      List<OutletListProductDataModifierGroupResponse> modifierGroups});
}

/// @nodoc
class _$OutletListProductDataResponseCopyWithImpl<$Res>
    implements $OutletListProductDataResponseCopyWith<$Res> {
  _$OutletListProductDataResponseCopyWithImpl(this._value, this._then);

  final OutletListProductDataResponse _value;
  // ignore: unused_field
  final $Res Function(OutletListProductDataResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? crossoutPrice = freezed,
    Object? stock = freezed,
    Object? limit = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? variants = freezed,
    Object? modifierGroups = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      crossoutPrice: crossoutPrice == freezed
          ? _value.crossoutPrice
          : crossoutPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataVariantResponse>,
      modifierGroups: modifierGroups == freezed
          ? _value.modifierGroups
          : modifierGroups // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataModifierGroupResponse>,
    ));
  }
}

/// @nodoc
abstract class _$OutletListProductDataResponseCopyWith<$Res>
    implements $OutletListProductDataResponseCopyWith<$Res> {
  factory _$OutletListProductDataResponseCopyWith(
          _OutletListProductDataResponse value,
          $Res Function(_OutletListProductDataResponse) then) =
      __$OutletListProductDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String? sku,
      bool isPreorder,
      int? preorderPeriod,
      int? crossoutPrice,
      int? stock,
      int? limit,
      String id,
      String name,
      int price,
      int weight,
      String description,
      String image,
      String categoryId,
      String categoryCode,
      String categoryName,
      List<OutletListProductDataVariantResponse> variants,
      List<OutletListProductDataModifierGroupResponse> modifierGroups});
}

/// @nodoc
class __$OutletListProductDataResponseCopyWithImpl<$Res>
    extends _$OutletListProductDataResponseCopyWithImpl<$Res>
    implements _$OutletListProductDataResponseCopyWith<$Res> {
  __$OutletListProductDataResponseCopyWithImpl(
      _OutletListProductDataResponse _value,
      $Res Function(_OutletListProductDataResponse) _then)
      : super(_value, (v) => _then(v as _OutletListProductDataResponse));

  @override
  _OutletListProductDataResponse get _value =>
      super._value as _OutletListProductDataResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? crossoutPrice = freezed,
    Object? stock = freezed,
    Object? limit = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? variants = freezed,
    Object? modifierGroups = freezed,
  }) {
    return _then(_OutletListProductDataResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      crossoutPrice: crossoutPrice == freezed
          ? _value.crossoutPrice
          : crossoutPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataVariantResponse>,
      modifierGroups: modifierGroups == freezed
          ? _value.modifierGroups
          : modifierGroups // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataModifierGroupResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletListProductDataResponse
    implements _OutletListProductDataResponse {
  const _$_OutletListProductDataResponse(
      {required this.code,
      required this.sku,
      required this.isPreorder,
      required this.preorderPeriod,
      required this.crossoutPrice,
      required this.stock,
      required this.limit,
      required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.description,
      required this.image,
      required this.categoryId,
      required this.categoryCode,
      required this.categoryName,
      required this.variants,
      required this.modifierGroups});

  factory _$_OutletListProductDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletListProductDataResponseFromJson(json);

  @override
  final String code;
  @override
  final String? sku;
  @override
  final bool isPreorder;
  @override
  final int? preorderPeriod;
  @override
  final int? crossoutPrice;
  @override
  final int? stock;
  @override
  final int? limit;
  @override
  final String id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int weight;
  @override
  final String description;
  @override
  final String image;
  @override
  final String categoryId;
  @override
  final String categoryCode;
  @override
  final String categoryName;
  @override
  final List<OutletListProductDataVariantResponse> variants;
  @override
  final List<OutletListProductDataModifierGroupResponse> modifierGroups;

  @override
  String toString() {
    return 'OutletListProductDataResponse(code: $code, sku: $sku, isPreorder: $isPreorder, preorderPeriod: $preorderPeriod, crossoutPrice: $crossoutPrice, stock: $stock, limit: $limit, id: $id, name: $name, price: $price, weight: $weight, description: $description, image: $image, categoryId: $categoryId, categoryCode: $categoryCode, categoryName: $categoryName, variants: $variants, modifierGroups: $modifierGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletListProductDataResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.isPreorder, isPreorder) ||
                const DeepCollectionEquality()
                    .equals(other.isPreorder, isPreorder)) &&
            (identical(other.preorderPeriod, preorderPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.preorderPeriod, preorderPeriod)) &&
            (identical(other.crossoutPrice, crossoutPrice) ||
                const DeepCollectionEquality()
                    .equals(other.crossoutPrice, crossoutPrice)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.variants, variants) ||
                const DeepCollectionEquality()
                    .equals(other.variants, variants)) &&
            (identical(other.modifierGroups, modifierGroups) ||
                const DeepCollectionEquality()
                    .equals(other.modifierGroups, modifierGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(isPreorder) ^
      const DeepCollectionEquality().hash(preorderPeriod) ^
      const DeepCollectionEquality().hash(crossoutPrice) ^
      const DeepCollectionEquality().hash(stock) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(variants) ^
      const DeepCollectionEquality().hash(modifierGroups);

  @JsonKey(ignore: true)
  @override
  _$OutletListProductDataResponseCopyWith<_OutletListProductDataResponse>
      get copyWith => __$OutletListProductDataResponseCopyWithImpl<
          _OutletListProductDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletListProductDataResponseToJson(this);
  }
}

abstract class _OutletListProductDataResponse
    implements OutletListProductDataResponse {
  const factory _OutletListProductDataResponse(
      {required String code,
      required String? sku,
      required bool isPreorder,
      required int? preorderPeriod,
      required int? crossoutPrice,
      required int? stock,
      required int? limit,
      required String id,
      required String name,
      required int price,
      required int weight,
      required String description,
      required String image,
      required String categoryId,
      required String categoryCode,
      required String categoryName,
      required List<OutletListProductDataVariantResponse> variants,
      required List<OutletListProductDataModifierGroupResponse>
          modifierGroups}) = _$_OutletListProductDataResponse;

  factory _OutletListProductDataResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletListProductDataResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String? get sku => throw _privateConstructorUsedError;
  @override
  bool get isPreorder => throw _privateConstructorUsedError;
  @override
  int? get preorderPeriod => throw _privateConstructorUsedError;
  @override
  int? get crossoutPrice => throw _privateConstructorUsedError;
  @override
  int? get stock => throw _privateConstructorUsedError;
  @override
  int? get limit => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get categoryId => throw _privateConstructorUsedError;
  @override
  String get categoryCode => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  List<OutletListProductDataVariantResponse> get variants =>
      throw _privateConstructorUsedError;
  @override
  List<OutletListProductDataModifierGroupResponse> get modifierGroups =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletListProductDataResponseCopyWith<_OutletListProductDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletListProductDataVariantResponse
    _$OutletListProductDataVariantResponseFromJson(Map<String, dynamic> json) {
  return _OutletListProductDataVariantResponse.fromJson(json);
}

/// @nodoc
class _$OutletListProductDataVariantResponseTearOff {
  const _$OutletListProductDataVariantResponseTearOff();

  _OutletListProductDataVariantResponse call(
      {required String code,
      required String? sku,
      required bool isPreorder,
      required int? preorderPeriod,
      required int? crossoutPrice,
      required int? stock,
      required int? limit,
      required String id,
      required String name,
      required int price,
      required int weight,
      required String description,
      required String image,
      required String categoryId,
      required String categoryCode,
      required String categoryName,
      required List<OutletListProductDataModifierGroupResponse>
          modifierGroups}) {
    return _OutletListProductDataVariantResponse(
      code: code,
      sku: sku,
      isPreorder: isPreorder,
      preorderPeriod: preorderPeriod,
      crossoutPrice: crossoutPrice,
      stock: stock,
      limit: limit,
      id: id,
      name: name,
      price: price,
      weight: weight,
      description: description,
      image: image,
      categoryId: categoryId,
      categoryCode: categoryCode,
      categoryName: categoryName,
      modifierGroups: modifierGroups,
    );
  }

  OutletListProductDataVariantResponse fromJson(Map<String, Object> json) {
    return OutletListProductDataVariantResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletListProductDataVariantResponse =
    _$OutletListProductDataVariantResponseTearOff();

/// @nodoc
mixin _$OutletListProductDataVariantResponse {
  String get code => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  bool get isPreorder => throw _privateConstructorUsedError;
  int? get preorderPeriod => throw _privateConstructorUsedError;
  int? get crossoutPrice => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  List<OutletListProductDataModifierGroupResponse> get modifierGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletListProductDataVariantResponseCopyWith<
          OutletListProductDataVariantResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletListProductDataVariantResponseCopyWith<$Res> {
  factory $OutletListProductDataVariantResponseCopyWith(
          OutletListProductDataVariantResponse value,
          $Res Function(OutletListProductDataVariantResponse) then) =
      _$OutletListProductDataVariantResponseCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String? sku,
      bool isPreorder,
      int? preorderPeriod,
      int? crossoutPrice,
      int? stock,
      int? limit,
      String id,
      String name,
      int price,
      int weight,
      String description,
      String image,
      String categoryId,
      String categoryCode,
      String categoryName,
      List<OutletListProductDataModifierGroupResponse> modifierGroups});
}

/// @nodoc
class _$OutletListProductDataVariantResponseCopyWithImpl<$Res>
    implements $OutletListProductDataVariantResponseCopyWith<$Res> {
  _$OutletListProductDataVariantResponseCopyWithImpl(this._value, this._then);

  final OutletListProductDataVariantResponse _value;
  // ignore: unused_field
  final $Res Function(OutletListProductDataVariantResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? crossoutPrice = freezed,
    Object? stock = freezed,
    Object? limit = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? modifierGroups = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      crossoutPrice: crossoutPrice == freezed
          ? _value.crossoutPrice
          : crossoutPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      modifierGroups: modifierGroups == freezed
          ? _value.modifierGroups
          : modifierGroups // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataModifierGroupResponse>,
    ));
  }
}

/// @nodoc
abstract class _$OutletListProductDataVariantResponseCopyWith<$Res>
    implements $OutletListProductDataVariantResponseCopyWith<$Res> {
  factory _$OutletListProductDataVariantResponseCopyWith(
          _OutletListProductDataVariantResponse value,
          $Res Function(_OutletListProductDataVariantResponse) then) =
      __$OutletListProductDataVariantResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String? sku,
      bool isPreorder,
      int? preorderPeriod,
      int? crossoutPrice,
      int? stock,
      int? limit,
      String id,
      String name,
      int price,
      int weight,
      String description,
      String image,
      String categoryId,
      String categoryCode,
      String categoryName,
      List<OutletListProductDataModifierGroupResponse> modifierGroups});
}

/// @nodoc
class __$OutletListProductDataVariantResponseCopyWithImpl<$Res>
    extends _$OutletListProductDataVariantResponseCopyWithImpl<$Res>
    implements _$OutletListProductDataVariantResponseCopyWith<$Res> {
  __$OutletListProductDataVariantResponseCopyWithImpl(
      _OutletListProductDataVariantResponse _value,
      $Res Function(_OutletListProductDataVariantResponse) _then)
      : super(_value, (v) => _then(v as _OutletListProductDataVariantResponse));

  @override
  _OutletListProductDataVariantResponse get _value =>
      super._value as _OutletListProductDataVariantResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? isPreorder = freezed,
    Object? preorderPeriod = freezed,
    Object? crossoutPrice = freezed,
    Object? stock = freezed,
    Object? limit = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? modifierGroups = freezed,
  }) {
    return _then(_OutletListProductDataVariantResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreorder: isPreorder == freezed
          ? _value.isPreorder
          : isPreorder // ignore: cast_nullable_to_non_nullable
              as bool,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      crossoutPrice: crossoutPrice == freezed
          ? _value.crossoutPrice
          : crossoutPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      modifierGroups: modifierGroups == freezed
          ? _value.modifierGroups
          : modifierGroups // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataModifierGroupResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletListProductDataVariantResponse
    implements _OutletListProductDataVariantResponse {
  const _$_OutletListProductDataVariantResponse(
      {required this.code,
      required this.sku,
      required this.isPreorder,
      required this.preorderPeriod,
      required this.crossoutPrice,
      required this.stock,
      required this.limit,
      required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.description,
      required this.image,
      required this.categoryId,
      required this.categoryCode,
      required this.categoryName,
      required this.modifierGroups});

  factory _$_OutletListProductDataVariantResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletListProductDataVariantResponseFromJson(json);

  @override
  final String code;
  @override
  final String? sku;
  @override
  final bool isPreorder;
  @override
  final int? preorderPeriod;
  @override
  final int? crossoutPrice;
  @override
  final int? stock;
  @override
  final int? limit;
  @override
  final String id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int weight;
  @override
  final String description;
  @override
  final String image;
  @override
  final String categoryId;
  @override
  final String categoryCode;
  @override
  final String categoryName;
  @override
  final List<OutletListProductDataModifierGroupResponse> modifierGroups;

  @override
  String toString() {
    return 'OutletListProductDataVariantResponse(code: $code, sku: $sku, isPreorder: $isPreorder, preorderPeriod: $preorderPeriod, crossoutPrice: $crossoutPrice, stock: $stock, limit: $limit, id: $id, name: $name, price: $price, weight: $weight, description: $description, image: $image, categoryId: $categoryId, categoryCode: $categoryCode, categoryName: $categoryName, modifierGroups: $modifierGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletListProductDataVariantResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.isPreorder, isPreorder) ||
                const DeepCollectionEquality()
                    .equals(other.isPreorder, isPreorder)) &&
            (identical(other.preorderPeriod, preorderPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.preorderPeriod, preorderPeriod)) &&
            (identical(other.crossoutPrice, crossoutPrice) ||
                const DeepCollectionEquality()
                    .equals(other.crossoutPrice, crossoutPrice)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.modifierGroups, modifierGroups) ||
                const DeepCollectionEquality()
                    .equals(other.modifierGroups, modifierGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(isPreorder) ^
      const DeepCollectionEquality().hash(preorderPeriod) ^
      const DeepCollectionEquality().hash(crossoutPrice) ^
      const DeepCollectionEquality().hash(stock) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(modifierGroups);

  @JsonKey(ignore: true)
  @override
  _$OutletListProductDataVariantResponseCopyWith<
          _OutletListProductDataVariantResponse>
      get copyWith => __$OutletListProductDataVariantResponseCopyWithImpl<
          _OutletListProductDataVariantResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletListProductDataVariantResponseToJson(this);
  }
}

abstract class _OutletListProductDataVariantResponse
    implements OutletListProductDataVariantResponse {
  const factory _OutletListProductDataVariantResponse(
      {required String code,
      required String? sku,
      required bool isPreorder,
      required int? preorderPeriod,
      required int? crossoutPrice,
      required int? stock,
      required int? limit,
      required String id,
      required String name,
      required int price,
      required int weight,
      required String description,
      required String image,
      required String categoryId,
      required String categoryCode,
      required String categoryName,
      required List<OutletListProductDataModifierGroupResponse>
          modifierGroups}) = _$_OutletListProductDataVariantResponse;

  factory _OutletListProductDataVariantResponse.fromJson(
          Map<String, dynamic> json) =
      _$_OutletListProductDataVariantResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String? get sku => throw _privateConstructorUsedError;
  @override
  bool get isPreorder => throw _privateConstructorUsedError;
  @override
  int? get preorderPeriod => throw _privateConstructorUsedError;
  @override
  int? get crossoutPrice => throw _privateConstructorUsedError;
  @override
  int? get stock => throw _privateConstructorUsedError;
  @override
  int? get limit => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get categoryId => throw _privateConstructorUsedError;
  @override
  String get categoryCode => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  List<OutletListProductDataModifierGroupResponse> get modifierGroups =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletListProductDataVariantResponseCopyWith<
          _OutletListProductDataVariantResponse>
      get copyWith => throw _privateConstructorUsedError;
}
