// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_cart_session_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateCartSessionParam _$CreateCartSessionParamFromJson(
    Map<String, dynamic> json) {
  return _CreateCartSessionParam.fromJson(json);
}

/// @nodoc
class _$CreateCartSessionParamTearOff {
  const _$CreateCartSessionParamTearOff();

  _CreateCartSessionParam call(
      {required CreateCartSessionQueryParam queryString,
      required CreateCartSessionBodyParam body}) {
    return _CreateCartSessionParam(
      queryString: queryString,
      body: body,
    );
  }

  CreateCartSessionParam fromJson(Map<String, Object> json) {
    return CreateCartSessionParam.fromJson(json);
  }
}

/// @nodoc
const $CreateCartSessionParam = _$CreateCartSessionParamTearOff();

/// @nodoc
mixin _$CreateCartSessionParam {
  CreateCartSessionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  CreateCartSessionBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCartSessionParamCopyWith<CreateCartSessionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartSessionParamCopyWith<$Res> {
  factory $CreateCartSessionParamCopyWith(CreateCartSessionParam value,
          $Res Function(CreateCartSessionParam) then) =
      _$CreateCartSessionParamCopyWithImpl<$Res>;
  $Res call(
      {CreateCartSessionQueryParam queryString,
      CreateCartSessionBodyParam body});

  $CreateCartSessionQueryParamCopyWith<$Res> get queryString;
  $CreateCartSessionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$CreateCartSessionParamCopyWithImpl<$Res>
    implements $CreateCartSessionParamCopyWith<$Res> {
  _$CreateCartSessionParamCopyWithImpl(this._value, this._then);

  final CreateCartSessionParam _value;
  // ignore: unused_field
  final $Res Function(CreateCartSessionParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as CreateCartSessionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as CreateCartSessionBodyParam,
    ));
  }

  @override
  $CreateCartSessionQueryParamCopyWith<$Res> get queryString {
    return $CreateCartSessionQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $CreateCartSessionBodyParamCopyWith<$Res> get body {
    return $CreateCartSessionBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$CreateCartSessionParamCopyWith<$Res>
    implements $CreateCartSessionParamCopyWith<$Res> {
  factory _$CreateCartSessionParamCopyWith(_CreateCartSessionParam value,
          $Res Function(_CreateCartSessionParam) then) =
      __$CreateCartSessionParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreateCartSessionQueryParam queryString,
      CreateCartSessionBodyParam body});

  @override
  $CreateCartSessionQueryParamCopyWith<$Res> get queryString;
  @override
  $CreateCartSessionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$CreateCartSessionParamCopyWithImpl<$Res>
    extends _$CreateCartSessionParamCopyWithImpl<$Res>
    implements _$CreateCartSessionParamCopyWith<$Res> {
  __$CreateCartSessionParamCopyWithImpl(_CreateCartSessionParam _value,
      $Res Function(_CreateCartSessionParam) _then)
      : super(_value, (v) => _then(v as _CreateCartSessionParam));

  @override
  _CreateCartSessionParam get _value => super._value as _CreateCartSessionParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_CreateCartSessionParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as CreateCartSessionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as CreateCartSessionBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CreateCartSessionParam implements _CreateCartSessionParam {
  const _$_CreateCartSessionParam(
      {required this.queryString, required this.body});

  factory _$_CreateCartSessionParam.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCartSessionParamFromJson(json);

  @override
  final CreateCartSessionQueryParam queryString;
  @override
  final CreateCartSessionBodyParam body;

  @override
  String toString() {
    return 'CreateCartSessionParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCartSessionParam &&
            (identical(other.queryString, queryString) ||
                const DeepCollectionEquality()
                    .equals(other.queryString, queryString)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(queryString) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$CreateCartSessionParamCopyWith<_CreateCartSessionParam> get copyWith =>
      __$CreateCartSessionParamCopyWithImpl<_CreateCartSessionParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCartSessionParamToJson(this);
  }
}

abstract class _CreateCartSessionParam implements CreateCartSessionParam {
  const factory _CreateCartSessionParam(
      {required CreateCartSessionQueryParam queryString,
      required CreateCartSessionBodyParam body}) = _$_CreateCartSessionParam;

  factory _CreateCartSessionParam.fromJson(Map<String, dynamic> json) =
      _$_CreateCartSessionParam.fromJson;

  @override
  CreateCartSessionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  CreateCartSessionBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateCartSessionParamCopyWith<_CreateCartSessionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateCartSessionBodyParam _$CreateCartSessionBodyParamFromJson(
    Map<String, dynamic> json) {
  return _CreateCartSessionBodyParam.fromJson(json);
}

/// @nodoc
class _$CreateCartSessionBodyParamTearOff {
  const _$CreateCartSessionBodyParamTearOff();

  _CreateCartSessionBodyParam call(
      {required String outletName,
      required String customerName,
      required String customerPhone,
      required String customerTableNumber,
      required bool customerSmoking,
      required String customerPax,
      required String customerNote,
      required String customerCarType,
      required String customerCarColor,
      required String customerCarNumber,
      required String eta,
      required String salesType,
      required String receiptCode,
      required List<CreateUpdateCartSessionItemParam> items}) {
    return _CreateCartSessionBodyParam(
      outletName: outletName,
      customerName: customerName,
      customerPhone: customerPhone,
      customerTableNumber: customerTableNumber,
      customerSmoking: customerSmoking,
      customerPax: customerPax,
      customerNote: customerNote,
      customerCarType: customerCarType,
      customerCarColor: customerCarColor,
      customerCarNumber: customerCarNumber,
      eta: eta,
      salesType: salesType,
      receiptCode: receiptCode,
      items: items,
    );
  }

  CreateCartSessionBodyParam fromJson(Map<String, Object> json) {
    return CreateCartSessionBodyParam.fromJson(json);
  }
}

/// @nodoc
const $CreateCartSessionBodyParam = _$CreateCartSessionBodyParamTearOff();

/// @nodoc
mixin _$CreateCartSessionBodyParam {
  String get outletName => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String get customerTableNumber => throw _privateConstructorUsedError;
  bool get customerSmoking => throw _privateConstructorUsedError;
  String get customerPax => throw _privateConstructorUsedError;
  String get customerNote => throw _privateConstructorUsedError;
  String get customerCarType => throw _privateConstructorUsedError;
  String get customerCarColor => throw _privateConstructorUsedError;
  String get customerCarNumber => throw _privateConstructorUsedError;
  String get eta => throw _privateConstructorUsedError;
  String get salesType => throw _privateConstructorUsedError;
  String get receiptCode => throw _privateConstructorUsedError;
  List<CreateUpdateCartSessionItemParam> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCartSessionBodyParamCopyWith<CreateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartSessionBodyParamCopyWith<$Res> {
  factory $CreateCartSessionBodyParamCopyWith(CreateCartSessionBodyParam value,
          $Res Function(CreateCartSessionBodyParam) then) =
      _$CreateCartSessionBodyParamCopyWithImpl<$Res>;
  $Res call(
      {String outletName,
      String customerName,
      String customerPhone,
      String customerTableNumber,
      bool customerSmoking,
      String customerPax,
      String customerNote,
      String customerCarType,
      String customerCarColor,
      String customerCarNumber,
      String eta,
      String salesType,
      String receiptCode,
      List<CreateUpdateCartSessionItemParam> items});
}

/// @nodoc
class _$CreateCartSessionBodyParamCopyWithImpl<$Res>
    implements $CreateCartSessionBodyParamCopyWith<$Res> {
  _$CreateCartSessionBodyParamCopyWithImpl(this._value, this._then);

  final CreateCartSessionBodyParam _value;
  // ignore: unused_field
  final $Res Function(CreateCartSessionBodyParam) _then;

  @override
  $Res call({
    Object? outletName = freezed,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? customerTableNumber = freezed,
    Object? customerSmoking = freezed,
    Object? customerPax = freezed,
    Object? customerNote = freezed,
    Object? customerCarType = freezed,
    Object? customerCarColor = freezed,
    Object? customerCarNumber = freezed,
    Object? eta = freezed,
    Object? salesType = freezed,
    Object? receiptCode = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerTableNumber: customerTableNumber == freezed
          ? _value.customerTableNumber
          : customerTableNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerSmoking: customerSmoking == freezed
          ? _value.customerSmoking
          : customerSmoking // ignore: cast_nullable_to_non_nullable
              as bool,
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
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateUpdateCartSessionItemParam>,
    ));
  }
}

/// @nodoc
abstract class _$CreateCartSessionBodyParamCopyWith<$Res>
    implements $CreateCartSessionBodyParamCopyWith<$Res> {
  factory _$CreateCartSessionBodyParamCopyWith(
          _CreateCartSessionBodyParam value,
          $Res Function(_CreateCartSessionBodyParam) then) =
      __$CreateCartSessionBodyParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String outletName,
      String customerName,
      String customerPhone,
      String customerTableNumber,
      bool customerSmoking,
      String customerPax,
      String customerNote,
      String customerCarType,
      String customerCarColor,
      String customerCarNumber,
      String eta,
      String salesType,
      String receiptCode,
      List<CreateUpdateCartSessionItemParam> items});
}

/// @nodoc
class __$CreateCartSessionBodyParamCopyWithImpl<$Res>
    extends _$CreateCartSessionBodyParamCopyWithImpl<$Res>
    implements _$CreateCartSessionBodyParamCopyWith<$Res> {
  __$CreateCartSessionBodyParamCopyWithImpl(_CreateCartSessionBodyParam _value,
      $Res Function(_CreateCartSessionBodyParam) _then)
      : super(_value, (v) => _then(v as _CreateCartSessionBodyParam));

  @override
  _CreateCartSessionBodyParam get _value =>
      super._value as _CreateCartSessionBodyParam;

  @override
  $Res call({
    Object? outletName = freezed,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? customerTableNumber = freezed,
    Object? customerSmoking = freezed,
    Object? customerPax = freezed,
    Object? customerNote = freezed,
    Object? customerCarType = freezed,
    Object? customerCarColor = freezed,
    Object? customerCarNumber = freezed,
    Object? eta = freezed,
    Object? salesType = freezed,
    Object? receiptCode = freezed,
    Object? items = freezed,
  }) {
    return _then(_CreateCartSessionBodyParam(
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerTableNumber: customerTableNumber == freezed
          ? _value.customerTableNumber
          : customerTableNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerSmoking: customerSmoking == freezed
          ? _value.customerSmoking
          : customerSmoking // ignore: cast_nullable_to_non_nullable
              as bool,
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
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateUpdateCartSessionItemParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCartSessionBodyParam implements _CreateCartSessionBodyParam {
  const _$_CreateCartSessionBodyParam(
      {required this.outletName,
      required this.customerName,
      required this.customerPhone,
      required this.customerTableNumber,
      required this.customerSmoking,
      required this.customerPax,
      required this.customerNote,
      required this.customerCarType,
      required this.customerCarColor,
      required this.customerCarNumber,
      required this.eta,
      required this.salesType,
      required this.receiptCode,
      required this.items});

  factory _$_CreateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCartSessionBodyParamFromJson(json);

  @override
  final String outletName;
  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final String customerTableNumber;
  @override
  final bool customerSmoking;
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
  final String salesType;
  @override
  final String receiptCode;
  @override
  final List<CreateUpdateCartSessionItemParam> items;

  @override
  String toString() {
    return 'CreateCartSessionBodyParam(outletName: $outletName, customerName: $customerName, customerPhone: $customerPhone, customerTableNumber: $customerTableNumber, customerSmoking: $customerSmoking, customerPax: $customerPax, customerNote: $customerNote, customerCarType: $customerCarType, customerCarColor: $customerCarColor, customerCarNumber: $customerCarNumber, eta: $eta, salesType: $salesType, receiptCode: $receiptCode, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCartSessionBodyParam &&
            (identical(other.outletName, outletName) ||
                const DeepCollectionEquality()
                    .equals(other.outletName, outletName)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.customerPhone, customerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.customerPhone, customerPhone)) &&
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
            (identical(other.salesType, salesType) ||
                const DeepCollectionEquality()
                    .equals(other.salesType, salesType)) &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outletName) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(customerPhone) ^
      const DeepCollectionEquality().hash(customerTableNumber) ^
      const DeepCollectionEquality().hash(customerSmoking) ^
      const DeepCollectionEquality().hash(customerPax) ^
      const DeepCollectionEquality().hash(customerNote) ^
      const DeepCollectionEquality().hash(customerCarType) ^
      const DeepCollectionEquality().hash(customerCarColor) ^
      const DeepCollectionEquality().hash(customerCarNumber) ^
      const DeepCollectionEquality().hash(eta) ^
      const DeepCollectionEquality().hash(salesType) ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$CreateCartSessionBodyParamCopyWith<_CreateCartSessionBodyParam>
      get copyWith => __$CreateCartSessionBodyParamCopyWithImpl<
          _CreateCartSessionBodyParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCartSessionBodyParamToJson(this);
  }
}

abstract class _CreateCartSessionBodyParam
    implements CreateCartSessionBodyParam {
  const factory _CreateCartSessionBodyParam(
          {required String outletName,
          required String customerName,
          required String customerPhone,
          required String customerTableNumber,
          required bool customerSmoking,
          required String customerPax,
          required String customerNote,
          required String customerCarType,
          required String customerCarColor,
          required String customerCarNumber,
          required String eta,
          required String salesType,
          required String receiptCode,
          required List<CreateUpdateCartSessionItemParam> items}) =
      _$_CreateCartSessionBodyParam;

  factory _CreateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =
      _$_CreateCartSessionBodyParam.fromJson;

  @override
  String get outletName => throw _privateConstructorUsedError;
  @override
  String get customerName => throw _privateConstructorUsedError;
  @override
  String get customerPhone => throw _privateConstructorUsedError;
  @override
  String get customerTableNumber => throw _privateConstructorUsedError;
  @override
  bool get customerSmoking => throw _privateConstructorUsedError;
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
  String get salesType => throw _privateConstructorUsedError;
  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  List<CreateUpdateCartSessionItemParam> get items =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateCartSessionBodyParamCopyWith<_CreateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

CreateUpdateCartSessionItemParam _$CreateUpdateCartSessionItemParamFromJson(
    Map<String, dynamic> json) {
  return _CreateUpdateCartSessionItemParam.fromJson(json);
}

/// @nodoc
class _$CreateUpdateCartSessionItemParamTearOff {
  const _$CreateUpdateCartSessionItemParamTearOff();

  _CreateUpdateCartSessionItemParam call(
      {required int productId,
      required List<CreateCartSessionItemModifierParam> modifiers,
      required String note,
      required int qty}) {
    return _CreateUpdateCartSessionItemParam(
      productId: productId,
      modifiers: modifiers,
      note: note,
      qty: qty,
    );
  }

  CreateUpdateCartSessionItemParam fromJson(Map<String, Object> json) {
    return CreateUpdateCartSessionItemParam.fromJson(json);
  }
}

/// @nodoc
const $CreateUpdateCartSessionItemParam =
    _$CreateUpdateCartSessionItemParamTearOff();

/// @nodoc
mixin _$CreateUpdateCartSessionItemParam {
  int get productId => throw _privateConstructorUsedError;
  List<CreateCartSessionItemModifierParam> get modifiers =>
      throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUpdateCartSessionItemParamCopyWith<CreateUpdateCartSessionItemParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUpdateCartSessionItemParamCopyWith<$Res> {
  factory $CreateUpdateCartSessionItemParamCopyWith(
          CreateUpdateCartSessionItemParam value,
          $Res Function(CreateUpdateCartSessionItemParam) then) =
      _$CreateUpdateCartSessionItemParamCopyWithImpl<$Res>;
  $Res call(
      {int productId,
      List<CreateCartSessionItemModifierParam> modifiers,
      String note,
      int qty});
}

/// @nodoc
class _$CreateUpdateCartSessionItemParamCopyWithImpl<$Res>
    implements $CreateUpdateCartSessionItemParamCopyWith<$Res> {
  _$CreateUpdateCartSessionItemParamCopyWithImpl(this._value, this._then);

  final CreateUpdateCartSessionItemParam _value;
  // ignore: unused_field
  final $Res Function(CreateUpdateCartSessionItemParam) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? modifiers = freezed,
    Object? note = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<CreateCartSessionItemModifierParam>,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateUpdateCartSessionItemParamCopyWith<$Res>
    implements $CreateUpdateCartSessionItemParamCopyWith<$Res> {
  factory _$CreateUpdateCartSessionItemParamCopyWith(
          _CreateUpdateCartSessionItemParam value,
          $Res Function(_CreateUpdateCartSessionItemParam) then) =
      __$CreateUpdateCartSessionItemParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {int productId,
      List<CreateCartSessionItemModifierParam> modifiers,
      String note,
      int qty});
}

/// @nodoc
class __$CreateUpdateCartSessionItemParamCopyWithImpl<$Res>
    extends _$CreateUpdateCartSessionItemParamCopyWithImpl<$Res>
    implements _$CreateUpdateCartSessionItemParamCopyWith<$Res> {
  __$CreateUpdateCartSessionItemParamCopyWithImpl(
      _CreateUpdateCartSessionItemParam _value,
      $Res Function(_CreateUpdateCartSessionItemParam) _then)
      : super(_value, (v) => _then(v as _CreateUpdateCartSessionItemParam));

  @override
  _CreateUpdateCartSessionItemParam get _value =>
      super._value as _CreateUpdateCartSessionItemParam;

  @override
  $Res call({
    Object? productId = freezed,
    Object? modifiers = freezed,
    Object? note = freezed,
    Object? qty = freezed,
  }) {
    return _then(_CreateUpdateCartSessionItemParam(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<CreateCartSessionItemModifierParam>,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUpdateCartSessionItemParam
    implements _CreateUpdateCartSessionItemParam {
  const _$_CreateUpdateCartSessionItemParam(
      {required this.productId,
      required this.modifiers,
      required this.note,
      required this.qty});

  factory _$_CreateUpdateCartSessionItemParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateUpdateCartSessionItemParamFromJson(json);

  @override
  final int productId;
  @override
  final List<CreateCartSessionItemModifierParam> modifiers;
  @override
  final String note;
  @override
  final int qty;

  @override
  String toString() {
    return 'CreateUpdateCartSessionItemParam(productId: $productId, modifiers: $modifiers, note: $note, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateUpdateCartSessionItemParam &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.modifiers, modifiers) ||
                const DeepCollectionEquality()
                    .equals(other.modifiers, modifiers)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(modifiers) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(qty);

  @JsonKey(ignore: true)
  @override
  _$CreateUpdateCartSessionItemParamCopyWith<_CreateUpdateCartSessionItemParam>
      get copyWith => __$CreateUpdateCartSessionItemParamCopyWithImpl<
          _CreateUpdateCartSessionItemParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUpdateCartSessionItemParamToJson(this);
  }
}

abstract class _CreateUpdateCartSessionItemParam
    implements CreateUpdateCartSessionItemParam {
  const factory _CreateUpdateCartSessionItemParam(
      {required int productId,
      required List<CreateCartSessionItemModifierParam> modifiers,
      required String note,
      required int qty}) = _$_CreateUpdateCartSessionItemParam;

  factory _CreateUpdateCartSessionItemParam.fromJson(
      Map<String, dynamic> json) = _$_CreateUpdateCartSessionItemParam.fromJson;

  @override
  int get productId => throw _privateConstructorUsedError;
  @override
  List<CreateCartSessionItemModifierParam> get modifiers =>
      throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateUpdateCartSessionItemParamCopyWith<_CreateUpdateCartSessionItemParam>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCartSessionItemModifierParam _$CreateCartSessionItemModifierParamFromJson(
    Map<String, dynamic> json) {
  return _CreateCartSessionItemModifierParam.fromJson(json);
}

/// @nodoc
class _$CreateCartSessionItemModifierParamTearOff {
  const _$CreateCartSessionItemModifierParamTearOff();

  _CreateCartSessionItemModifierParam call(
      {required int modifierId,
      required String modifierGroupId,
      required int qty}) {
    return _CreateCartSessionItemModifierParam(
      modifierId: modifierId,
      modifierGroupId: modifierGroupId,
      qty: qty,
    );
  }

  CreateCartSessionItemModifierParam fromJson(Map<String, Object> json) {
    return CreateCartSessionItemModifierParam.fromJson(json);
  }
}

/// @nodoc
const $CreateCartSessionItemModifierParam =
    _$CreateCartSessionItemModifierParamTearOff();

/// @nodoc
mixin _$CreateCartSessionItemModifierParam {
  int get modifierId => throw _privateConstructorUsedError;
  String get modifierGroupId => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCartSessionItemModifierParamCopyWith<
          CreateCartSessionItemModifierParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartSessionItemModifierParamCopyWith<$Res> {
  factory $CreateCartSessionItemModifierParamCopyWith(
          CreateCartSessionItemModifierParam value,
          $Res Function(CreateCartSessionItemModifierParam) then) =
      _$CreateCartSessionItemModifierParamCopyWithImpl<$Res>;
  $Res call({int modifierId, String modifierGroupId, int qty});
}

/// @nodoc
class _$CreateCartSessionItemModifierParamCopyWithImpl<$Res>
    implements $CreateCartSessionItemModifierParamCopyWith<$Res> {
  _$CreateCartSessionItemModifierParamCopyWithImpl(this._value, this._then);

  final CreateCartSessionItemModifierParam _value;
  // ignore: unused_field
  final $Res Function(CreateCartSessionItemModifierParam) _then;

  @override
  $Res call({
    Object? modifierId = freezed,
    Object? modifierGroupId = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      modifierId: modifierId == freezed
          ? _value.modifierId
          : modifierId // ignore: cast_nullable_to_non_nullable
              as int,
      modifierGroupId: modifierGroupId == freezed
          ? _value.modifierGroupId
          : modifierGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateCartSessionItemModifierParamCopyWith<$Res>
    implements $CreateCartSessionItemModifierParamCopyWith<$Res> {
  factory _$CreateCartSessionItemModifierParamCopyWith(
          _CreateCartSessionItemModifierParam value,
          $Res Function(_CreateCartSessionItemModifierParam) then) =
      __$CreateCartSessionItemModifierParamCopyWithImpl<$Res>;
  @override
  $Res call({int modifierId, String modifierGroupId, int qty});
}

/// @nodoc
class __$CreateCartSessionItemModifierParamCopyWithImpl<$Res>
    extends _$CreateCartSessionItemModifierParamCopyWithImpl<$Res>
    implements _$CreateCartSessionItemModifierParamCopyWith<$Res> {
  __$CreateCartSessionItemModifierParamCopyWithImpl(
      _CreateCartSessionItemModifierParam _value,
      $Res Function(_CreateCartSessionItemModifierParam) _then)
      : super(_value, (v) => _then(v as _CreateCartSessionItemModifierParam));

  @override
  _CreateCartSessionItemModifierParam get _value =>
      super._value as _CreateCartSessionItemModifierParam;

  @override
  $Res call({
    Object? modifierId = freezed,
    Object? modifierGroupId = freezed,
    Object? qty = freezed,
  }) {
    return _then(_CreateCartSessionItemModifierParam(
      modifierId: modifierId == freezed
          ? _value.modifierId
          : modifierId // ignore: cast_nullable_to_non_nullable
              as int,
      modifierGroupId: modifierGroupId == freezed
          ? _value.modifierGroupId
          : modifierGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCartSessionItemModifierParam
    implements _CreateCartSessionItemModifierParam {
  const _$_CreateCartSessionItemModifierParam(
      {required this.modifierId,
      required this.modifierGroupId,
      required this.qty});

  factory _$_CreateCartSessionItemModifierParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateCartSessionItemModifierParamFromJson(json);

  @override
  final int modifierId;
  @override
  final String modifierGroupId;
  @override
  final int qty;

  @override
  String toString() {
    return 'CreateCartSessionItemModifierParam(modifierId: $modifierId, modifierGroupId: $modifierGroupId, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCartSessionItemModifierParam &&
            (identical(other.modifierId, modifierId) ||
                const DeepCollectionEquality()
                    .equals(other.modifierId, modifierId)) &&
            (identical(other.modifierGroupId, modifierGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.modifierGroupId, modifierGroupId)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(modifierId) ^
      const DeepCollectionEquality().hash(modifierGroupId) ^
      const DeepCollectionEquality().hash(qty);

  @JsonKey(ignore: true)
  @override
  _$CreateCartSessionItemModifierParamCopyWith<
          _CreateCartSessionItemModifierParam>
      get copyWith => __$CreateCartSessionItemModifierParamCopyWithImpl<
          _CreateCartSessionItemModifierParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCartSessionItemModifierParamToJson(this);
  }
}

abstract class _CreateCartSessionItemModifierParam
    implements CreateCartSessionItemModifierParam {
  const factory _CreateCartSessionItemModifierParam(
      {required int modifierId,
      required String modifierGroupId,
      required int qty}) = _$_CreateCartSessionItemModifierParam;

  factory _CreateCartSessionItemModifierParam.fromJson(
          Map<String, dynamic> json) =
      _$_CreateCartSessionItemModifierParam.fromJson;

  @override
  int get modifierId => throw _privateConstructorUsedError;
  @override
  String get modifierGroupId => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateCartSessionItemModifierParamCopyWith<
          _CreateCartSessionItemModifierParam>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCartSessionQueryParam _$CreateCartSessionQueryParamFromJson(
    Map<String, dynamic> json) {
  return _CreateCartSessionQueryParam.fromJson(json);
}

/// @nodoc
class _$CreateCartSessionQueryParamTearOff {
  const _$CreateCartSessionQueryParamTearOff();

  _CreateCartSessionQueryParam call() {
    return const _CreateCartSessionQueryParam();
  }

  CreateCartSessionQueryParam fromJson(Map<String, Object> json) {
    return CreateCartSessionQueryParam.fromJson(json);
  }
}

/// @nodoc
const $CreateCartSessionQueryParam = _$CreateCartSessionQueryParamTearOff();

/// @nodoc
mixin _$CreateCartSessionQueryParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartSessionQueryParamCopyWith<$Res> {
  factory $CreateCartSessionQueryParamCopyWith(
          CreateCartSessionQueryParam value,
          $Res Function(CreateCartSessionQueryParam) then) =
      _$CreateCartSessionQueryParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCartSessionQueryParamCopyWithImpl<$Res>
    implements $CreateCartSessionQueryParamCopyWith<$Res> {
  _$CreateCartSessionQueryParamCopyWithImpl(this._value, this._then);

  final CreateCartSessionQueryParam _value;
  // ignore: unused_field
  final $Res Function(CreateCartSessionQueryParam) _then;
}

/// @nodoc
abstract class _$CreateCartSessionQueryParamCopyWith<$Res> {
  factory _$CreateCartSessionQueryParamCopyWith(
          _CreateCartSessionQueryParam value,
          $Res Function(_CreateCartSessionQueryParam) then) =
      __$CreateCartSessionQueryParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateCartSessionQueryParamCopyWithImpl<$Res>
    extends _$CreateCartSessionQueryParamCopyWithImpl<$Res>
    implements _$CreateCartSessionQueryParamCopyWith<$Res> {
  __$CreateCartSessionQueryParamCopyWithImpl(
      _CreateCartSessionQueryParam _value,
      $Res Function(_CreateCartSessionQueryParam) _then)
      : super(_value, (v) => _then(v as _CreateCartSessionQueryParam));

  @override
  _CreateCartSessionQueryParam get _value =>
      super._value as _CreateCartSessionQueryParam;
}

/// @nodoc
@JsonSerializable()
class _$_CreateCartSessionQueryParam implements _CreateCartSessionQueryParam {
  const _$_CreateCartSessionQueryParam();

  factory _$_CreateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCartSessionQueryParamFromJson(json);

  @override
  String toString() {
    return 'CreateCartSessionQueryParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateCartSessionQueryParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCartSessionQueryParamToJson(this);
  }
}

abstract class _CreateCartSessionQueryParam
    implements CreateCartSessionQueryParam {
  const factory _CreateCartSessionQueryParam() = _$_CreateCartSessionQueryParam;

  factory _CreateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =
      _$_CreateCartSessionQueryParam.fromJson;
}
