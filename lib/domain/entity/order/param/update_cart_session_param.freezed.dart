// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_cart_session_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCartSessionParam _$UpdateCartSessionParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionParamTearOff {
  const _$UpdateCartSessionParamTearOff();

  _UpdateCartSessionParam call(
      {required UpdateCartSessionQueryParam queryString,
      required UpdateCartSessionBodyParam body}) {
    return _UpdateCartSessionParam(
      queryString: queryString,
      body: body,
    );
  }

  UpdateCartSessionParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionParam = _$UpdateCartSessionParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionParam {
  UpdateCartSessionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  UpdateCartSessionBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionParamCopyWith<UpdateCartSessionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionParamCopyWith<$Res> {
  factory $UpdateCartSessionParamCopyWith(UpdateCartSessionParam value,
          $Res Function(UpdateCartSessionParam) then) =
      _$UpdateCartSessionParamCopyWithImpl<$Res>;
  $Res call(
      {UpdateCartSessionQueryParam queryString,
      UpdateCartSessionBodyParam body});

  $UpdateCartSessionQueryParamCopyWith<$Res> get queryString;
  $UpdateCartSessionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$UpdateCartSessionParamCopyWithImpl<$Res>
    implements $UpdateCartSessionParamCopyWith<$Res> {
  _$UpdateCartSessionParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionBodyParam,
    ));
  }

  @override
  $UpdateCartSessionQueryParamCopyWith<$Res> get queryString {
    return $UpdateCartSessionQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $UpdateCartSessionBodyParamCopyWith<$Res> get body {
    return $UpdateCartSessionBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateCartSessionParamCopyWith<$Res>
    implements $UpdateCartSessionParamCopyWith<$Res> {
  factory _$UpdateCartSessionParamCopyWith(_UpdateCartSessionParam value,
          $Res Function(_UpdateCartSessionParam) then) =
      __$UpdateCartSessionParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {UpdateCartSessionQueryParam queryString,
      UpdateCartSessionBodyParam body});

  @override
  $UpdateCartSessionQueryParamCopyWith<$Res> get queryString;
  @override
  $UpdateCartSessionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$UpdateCartSessionParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionParamCopyWith<$Res> {
  __$UpdateCartSessionParamCopyWithImpl(_UpdateCartSessionParam _value,
      $Res Function(_UpdateCartSessionParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionParam));

  @override
  _UpdateCartSessionParam get _value => super._value as _UpdateCartSessionParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_UpdateCartSessionParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_UpdateCartSessionParam implements _UpdateCartSessionParam {
  const _$_UpdateCartSessionParam(
      {required this.queryString, required this.body});

  factory _$_UpdateCartSessionParam.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionParamFromJson(json);

  @override
  final UpdateCartSessionQueryParam queryString;
  @override
  final UpdateCartSessionBodyParam body;

  @override
  String toString() {
    return 'UpdateCartSessionParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionParam &&
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
  _$UpdateCartSessionParamCopyWith<_UpdateCartSessionParam> get copyWith =>
      __$UpdateCartSessionParamCopyWithImpl<_UpdateCartSessionParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionParamToJson(this);
  }
}

abstract class _UpdateCartSessionParam implements UpdateCartSessionParam {
  const factory _UpdateCartSessionParam(
      {required UpdateCartSessionQueryParam queryString,
      required UpdateCartSessionBodyParam body}) = _$_UpdateCartSessionParam;

  factory _UpdateCartSessionParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionParam.fromJson;

  @override
  UpdateCartSessionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  UpdateCartSessionBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionParamCopyWith<_UpdateCartSessionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateCartSessionBodyParam _$UpdateCartSessionBodyParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionBodyParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionBodyParamTearOff {
  const _$UpdateCartSessionBodyParamTearOff();

  _UpdateCartSessionBodyParam call(
      {required String paymentType,
      required String customerNote,
      required List<UpdateCartSessionBodyItemParam> items}) {
    return _UpdateCartSessionBodyParam(
      paymentType: paymentType,
      customerNote: customerNote,
      items: items,
    );
  }

  UpdateCartSessionBodyParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionBodyParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionBodyParam = _$UpdateCartSessionBodyParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionBodyParam {
  String get paymentType => throw _privateConstructorUsedError;
  String get customerNote => throw _privateConstructorUsedError;
  List<UpdateCartSessionBodyItemParam> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionBodyParamCopyWith<UpdateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionBodyParamCopyWith<$Res> {
  factory $UpdateCartSessionBodyParamCopyWith(UpdateCartSessionBodyParam value,
          $Res Function(UpdateCartSessionBodyParam) then) =
      _$UpdateCartSessionBodyParamCopyWithImpl<$Res>;
  $Res call(
      {String paymentType,
      String customerNote,
      List<UpdateCartSessionBodyItemParam> items});
}

/// @nodoc
class _$UpdateCartSessionBodyParamCopyWithImpl<$Res>
    implements $UpdateCartSessionBodyParamCopyWith<$Res> {
  _$UpdateCartSessionBodyParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionBodyParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionBodyParam) _then;

  @override
  $Res call({
    Object? paymentType = freezed,
    Object? customerNote = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: customerNote == freezed
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UpdateCartSessionBodyItemParam>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateCartSessionBodyParamCopyWith<$Res>
    implements $UpdateCartSessionBodyParamCopyWith<$Res> {
  factory _$UpdateCartSessionBodyParamCopyWith(
          _UpdateCartSessionBodyParam value,
          $Res Function(_UpdateCartSessionBodyParam) then) =
      __$UpdateCartSessionBodyParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String paymentType,
      String customerNote,
      List<UpdateCartSessionBodyItemParam> items});
}

/// @nodoc
class __$UpdateCartSessionBodyParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionBodyParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionBodyParamCopyWith<$Res> {
  __$UpdateCartSessionBodyParamCopyWithImpl(_UpdateCartSessionBodyParam _value,
      $Res Function(_UpdateCartSessionBodyParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionBodyParam));

  @override
  _UpdateCartSessionBodyParam get _value =>
      super._value as _UpdateCartSessionBodyParam;

  @override
  $Res call({
    Object? paymentType = freezed,
    Object? customerNote = freezed,
    Object? items = freezed,
  }) {
    return _then(_UpdateCartSessionBodyParam(
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: customerNote == freezed
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UpdateCartSessionBodyItemParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCartSessionBodyParam implements _UpdateCartSessionBodyParam {
  const _$_UpdateCartSessionBodyParam(
      {required this.paymentType,
      required this.customerNote,
      required this.items});

  factory _$_UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionBodyParamFromJson(json);

  @override
  final String paymentType;
  @override
  final String customerNote;
  @override
  final List<UpdateCartSessionBodyItemParam> items;

  @override
  String toString() {
    return 'UpdateCartSessionBodyParam(paymentType: $paymentType, customerNote: $customerNote, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionBodyParam &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.customerNote, customerNote) ||
                const DeepCollectionEquality()
                    .equals(other.customerNote, customerNote)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(customerNote) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionBodyParamCopyWith<_UpdateCartSessionBodyParam>
      get copyWith => __$UpdateCartSessionBodyParamCopyWithImpl<
          _UpdateCartSessionBodyParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionBodyParamToJson(this);
  }
}

abstract class _UpdateCartSessionBodyParam
    implements UpdateCartSessionBodyParam {
  const factory _UpdateCartSessionBodyParam(
          {required String paymentType,
          required String customerNote,
          required List<UpdateCartSessionBodyItemParam> items}) =
      _$_UpdateCartSessionBodyParam;

  factory _UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionBodyParam.fromJson;

  @override
  String get paymentType => throw _privateConstructorUsedError;
  @override
  String get customerNote => throw _privateConstructorUsedError;
  @override
  List<UpdateCartSessionBodyItemParam> get items =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionBodyParamCopyWith<_UpdateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCartSessionBodyItemParam _$UpdateCartSessionBodyItemParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionBodyItemParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionBodyItemParamTearOff {
  const _$UpdateCartSessionBodyItemParamTearOff();

  _UpdateCartSessionBodyItemParam call(
      {required int productId,
      required List<UpdateCartSessionBodyItemModifierParam> modifiers,
      required String note,
      required int qty}) {
    return _UpdateCartSessionBodyItemParam(
      productId: productId,
      modifiers: modifiers,
      note: note,
      qty: qty,
    );
  }

  UpdateCartSessionBodyItemParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionBodyItemParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionBodyItemParam =
    _$UpdateCartSessionBodyItemParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionBodyItemParam {
  int get productId => throw _privateConstructorUsedError;
  List<UpdateCartSessionBodyItemModifierParam> get modifiers =>
      throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionBodyItemParamCopyWith<UpdateCartSessionBodyItemParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionBodyItemParamCopyWith<$Res> {
  factory $UpdateCartSessionBodyItemParamCopyWith(
          UpdateCartSessionBodyItemParam value,
          $Res Function(UpdateCartSessionBodyItemParam) then) =
      _$UpdateCartSessionBodyItemParamCopyWithImpl<$Res>;
  $Res call(
      {int productId,
      List<UpdateCartSessionBodyItemModifierParam> modifiers,
      String note,
      int qty});
}

/// @nodoc
class _$UpdateCartSessionBodyItemParamCopyWithImpl<$Res>
    implements $UpdateCartSessionBodyItemParamCopyWith<$Res> {
  _$UpdateCartSessionBodyItemParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionBodyItemParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionBodyItemParam) _then;

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
              as List<UpdateCartSessionBodyItemModifierParam>,
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
abstract class _$UpdateCartSessionBodyItemParamCopyWith<$Res>
    implements $UpdateCartSessionBodyItemParamCopyWith<$Res> {
  factory _$UpdateCartSessionBodyItemParamCopyWith(
          _UpdateCartSessionBodyItemParam value,
          $Res Function(_UpdateCartSessionBodyItemParam) then) =
      __$UpdateCartSessionBodyItemParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {int productId,
      List<UpdateCartSessionBodyItemModifierParam> modifiers,
      String note,
      int qty});
}

/// @nodoc
class __$UpdateCartSessionBodyItemParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionBodyItemParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionBodyItemParamCopyWith<$Res> {
  __$UpdateCartSessionBodyItemParamCopyWithImpl(
      _UpdateCartSessionBodyItemParam _value,
      $Res Function(_UpdateCartSessionBodyItemParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionBodyItemParam));

  @override
  _UpdateCartSessionBodyItemParam get _value =>
      super._value as _UpdateCartSessionBodyItemParam;

  @override
  $Res call({
    Object? productId = freezed,
    Object? modifiers = freezed,
    Object? note = freezed,
    Object? qty = freezed,
  }) {
    return _then(_UpdateCartSessionBodyItemParam(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      modifiers: modifiers == freezed
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<UpdateCartSessionBodyItemModifierParam>,
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
class _$_UpdateCartSessionBodyItemParam
    implements _UpdateCartSessionBodyItemParam {
  const _$_UpdateCartSessionBodyItemParam(
      {required this.productId,
      required this.modifiers,
      required this.note,
      required this.qty});

  factory _$_UpdateCartSessionBodyItemParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionBodyItemParamFromJson(json);

  @override
  final int productId;
  @override
  final List<UpdateCartSessionBodyItemModifierParam> modifiers;
  @override
  final String note;
  @override
  final int qty;

  @override
  String toString() {
    return 'UpdateCartSessionBodyItemParam(productId: $productId, modifiers: $modifiers, note: $note, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionBodyItemParam &&
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
  _$UpdateCartSessionBodyItemParamCopyWith<_UpdateCartSessionBodyItemParam>
      get copyWith => __$UpdateCartSessionBodyItemParamCopyWithImpl<
          _UpdateCartSessionBodyItemParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionBodyItemParamToJson(this);
  }
}

abstract class _UpdateCartSessionBodyItemParam
    implements UpdateCartSessionBodyItemParam {
  const factory _UpdateCartSessionBodyItemParam(
      {required int productId,
      required List<UpdateCartSessionBodyItemModifierParam> modifiers,
      required String note,
      required int qty}) = _$_UpdateCartSessionBodyItemParam;

  factory _UpdateCartSessionBodyItemParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionBodyItemParam.fromJson;

  @override
  int get productId => throw _privateConstructorUsedError;
  @override
  List<UpdateCartSessionBodyItemModifierParam> get modifiers =>
      throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionBodyItemParamCopyWith<_UpdateCartSessionBodyItemParam>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCartSessionBodyItemModifierParam
    _$UpdateCartSessionBodyItemModifierParamFromJson(
        Map<String, dynamic> json) {
  return _UpdateCartSessionBodyItemModifierParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionBodyItemModifierParamTearOff {
  const _$UpdateCartSessionBodyItemModifierParamTearOff();

  _UpdateCartSessionBodyItemModifierParam call(
      {required int modifierId,
      required String modifierGroupId,
      required int qty}) {
    return _UpdateCartSessionBodyItemModifierParam(
      modifierId: modifierId,
      modifierGroupId: modifierGroupId,
      qty: qty,
    );
  }

  UpdateCartSessionBodyItemModifierParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionBodyItemModifierParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionBodyItemModifierParam =
    _$UpdateCartSessionBodyItemModifierParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionBodyItemModifierParam {
  int get modifierId => throw _privateConstructorUsedError;
  String get modifierGroupId => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionBodyItemModifierParamCopyWith<
          UpdateCartSessionBodyItemModifierParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionBodyItemModifierParamCopyWith<$Res> {
  factory $UpdateCartSessionBodyItemModifierParamCopyWith(
          UpdateCartSessionBodyItemModifierParam value,
          $Res Function(UpdateCartSessionBodyItemModifierParam) then) =
      _$UpdateCartSessionBodyItemModifierParamCopyWithImpl<$Res>;
  $Res call({int modifierId, String modifierGroupId, int qty});
}

/// @nodoc
class _$UpdateCartSessionBodyItemModifierParamCopyWithImpl<$Res>
    implements $UpdateCartSessionBodyItemModifierParamCopyWith<$Res> {
  _$UpdateCartSessionBodyItemModifierParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionBodyItemModifierParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionBodyItemModifierParam) _then;

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
abstract class _$UpdateCartSessionBodyItemModifierParamCopyWith<$Res>
    implements $UpdateCartSessionBodyItemModifierParamCopyWith<$Res> {
  factory _$UpdateCartSessionBodyItemModifierParamCopyWith(
          _UpdateCartSessionBodyItemModifierParam value,
          $Res Function(_UpdateCartSessionBodyItemModifierParam) then) =
      __$UpdateCartSessionBodyItemModifierParamCopyWithImpl<$Res>;
  @override
  $Res call({int modifierId, String modifierGroupId, int qty});
}

/// @nodoc
class __$UpdateCartSessionBodyItemModifierParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionBodyItemModifierParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionBodyItemModifierParamCopyWith<$Res> {
  __$UpdateCartSessionBodyItemModifierParamCopyWithImpl(
      _UpdateCartSessionBodyItemModifierParam _value,
      $Res Function(_UpdateCartSessionBodyItemModifierParam) _then)
      : super(
            _value, (v) => _then(v as _UpdateCartSessionBodyItemModifierParam));

  @override
  _UpdateCartSessionBodyItemModifierParam get _value =>
      super._value as _UpdateCartSessionBodyItemModifierParam;

  @override
  $Res call({
    Object? modifierId = freezed,
    Object? modifierGroupId = freezed,
    Object? qty = freezed,
  }) {
    return _then(_UpdateCartSessionBodyItemModifierParam(
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
class _$_UpdateCartSessionBodyItemModifierParam
    implements _UpdateCartSessionBodyItemModifierParam {
  const _$_UpdateCartSessionBodyItemModifierParam(
      {required this.modifierId,
      required this.modifierGroupId,
      required this.qty});

  factory _$_UpdateCartSessionBodyItemModifierParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionBodyItemModifierParamFromJson(json);

  @override
  final int modifierId;
  @override
  final String modifierGroupId;
  @override
  final int qty;

  @override
  String toString() {
    return 'UpdateCartSessionBodyItemModifierParam(modifierId: $modifierId, modifierGroupId: $modifierGroupId, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionBodyItemModifierParam &&
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
  _$UpdateCartSessionBodyItemModifierParamCopyWith<
          _UpdateCartSessionBodyItemModifierParam>
      get copyWith => __$UpdateCartSessionBodyItemModifierParamCopyWithImpl<
          _UpdateCartSessionBodyItemModifierParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionBodyItemModifierParamToJson(this);
  }
}

abstract class _UpdateCartSessionBodyItemModifierParam
    implements UpdateCartSessionBodyItemModifierParam {
  const factory _UpdateCartSessionBodyItemModifierParam(
      {required int modifierId,
      required String modifierGroupId,
      required int qty}) = _$_UpdateCartSessionBodyItemModifierParam;

  factory _UpdateCartSessionBodyItemModifierParam.fromJson(
          Map<String, dynamic> json) =
      _$_UpdateCartSessionBodyItemModifierParam.fromJson;

  @override
  int get modifierId => throw _privateConstructorUsedError;
  @override
  String get modifierGroupId => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionBodyItemModifierParamCopyWith<
          _UpdateCartSessionBodyItemModifierParam>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCartSessionQueryParam _$UpdateCartSessionQueryParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionQueryParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionQueryParamTearOff {
  const _$UpdateCartSessionQueryParamTearOff();

  _UpdateCartSessionQueryParam call({required String sessionId}) {
    return _UpdateCartSessionQueryParam(
      sessionId: sessionId,
    );
  }

  UpdateCartSessionQueryParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionQueryParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionQueryParam = _$UpdateCartSessionQueryParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionQueryParam {
  String get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionQueryParamCopyWith<UpdateCartSessionQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionQueryParamCopyWith<$Res> {
  factory $UpdateCartSessionQueryParamCopyWith(
          UpdateCartSessionQueryParam value,
          $Res Function(UpdateCartSessionQueryParam) then) =
      _$UpdateCartSessionQueryParamCopyWithImpl<$Res>;
  $Res call({String sessionId});
}

/// @nodoc
class _$UpdateCartSessionQueryParamCopyWithImpl<$Res>
    implements $UpdateCartSessionQueryParamCopyWith<$Res> {
  _$UpdateCartSessionQueryParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionQueryParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionQueryParam) _then;

  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateCartSessionQueryParamCopyWith<$Res>
    implements $UpdateCartSessionQueryParamCopyWith<$Res> {
  factory _$UpdateCartSessionQueryParamCopyWith(
          _UpdateCartSessionQueryParam value,
          $Res Function(_UpdateCartSessionQueryParam) then) =
      __$UpdateCartSessionQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String sessionId});
}

/// @nodoc
class __$UpdateCartSessionQueryParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionQueryParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionQueryParamCopyWith<$Res> {
  __$UpdateCartSessionQueryParamCopyWithImpl(
      _UpdateCartSessionQueryParam _value,
      $Res Function(_UpdateCartSessionQueryParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionQueryParam));

  @override
  _UpdateCartSessionQueryParam get _value =>
      super._value as _UpdateCartSessionQueryParam;

  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_UpdateCartSessionQueryParam(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCartSessionQueryParam implements _UpdateCartSessionQueryParam {
  const _$_UpdateCartSessionQueryParam({required this.sessionId});

  factory _$_UpdateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionQueryParamFromJson(json);

  @override
  final String sessionId;

  @override
  String toString() {
    return 'UpdateCartSessionQueryParam(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionQueryParam &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessionId);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionQueryParamCopyWith<_UpdateCartSessionQueryParam>
      get copyWith => __$UpdateCartSessionQueryParamCopyWithImpl<
          _UpdateCartSessionQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionQueryParamToJson(this);
  }
}

abstract class _UpdateCartSessionQueryParam
    implements UpdateCartSessionQueryParam {
  const factory _UpdateCartSessionQueryParam({required String sessionId}) =
      _$_UpdateCartSessionQueryParam;

  factory _UpdateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionQueryParam.fromJson;

  @override
  String get sessionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionQueryParamCopyWith<_UpdateCartSessionQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
