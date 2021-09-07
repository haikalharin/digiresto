// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistory _$OrderHistoryFromJson(Map<String, dynamic> json) {
  return _OrderHistory.fromJson(json);
}

/// @nodoc
class _$OrderHistoryTearOff {
  const _$OrderHistoryTearOff();

  _OrderHistory call(
      {required DateTime deviceTimestamp,
      required Outlet outlet,
      required String receiptCode,
      required int preorderPeriod,
      required String salesType,
      required String status,
      required String finalAmount,
      required String discountAmount}) {
    return _OrderHistory(
      deviceTimestamp: deviceTimestamp,
      outlet: outlet,
      receiptCode: receiptCode,
      preorderPeriod: preorderPeriod,
      salesType: salesType,
      status: status,
      finalAmount: finalAmount,
      discountAmount: discountAmount,
    );
  }

  OrderHistory fromJson(Map<String, Object> json) {
    return OrderHistory.fromJson(json);
  }
}

/// @nodoc
const $OrderHistory = _$OrderHistoryTearOff();

/// @nodoc
mixin _$OrderHistory {
  DateTime get deviceTimestamp => throw _privateConstructorUsedError;
  Outlet get outlet => throw _privateConstructorUsedError;
  String get receiptCode => throw _privateConstructorUsedError;
  int get preorderPeriod => throw _privateConstructorUsedError;
  String get salesType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get finalAmount => throw _privateConstructorUsedError;
  String get discountAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryCopyWith<OrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryCopyWith<$Res> {
  factory $OrderHistoryCopyWith(
          OrderHistory value, $Res Function(OrderHistory) then) =
      _$OrderHistoryCopyWithImpl<$Res>;
  $Res call(
      {DateTime deviceTimestamp,
      Outlet outlet,
      String receiptCode,
      int preorderPeriod,
      String salesType,
      String status,
      String finalAmount,
      String discountAmount});

  $OutletCopyWith<$Res> get outlet;
}

/// @nodoc
class _$OrderHistoryCopyWithImpl<$Res> implements $OrderHistoryCopyWith<$Res> {
  _$OrderHistoryCopyWithImpl(this._value, this._then);

  final OrderHistory _value;
  // ignore: unused_field
  final $Res Function(OrderHistory) _then;

  @override
  $Res call({
    Object? deviceTimestamp = freezed,
    Object? outlet = freezed,
    Object? receiptCode = freezed,
    Object? preorderPeriod = freezed,
    Object? salesType = freezed,
    Object? status = freezed,
    Object? finalAmount = freezed,
    Object? discountAmount = freezed,
  }) {
    return _then(_value.copyWith(
      deviceTimestamp: deviceTimestamp == freezed
          ? _value.deviceTimestamp
          : deviceTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outlet: outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as Outlet,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $OutletCopyWith<$Res> get outlet {
    return $OutletCopyWith<$Res>(_value.outlet, (value) {
      return _then(_value.copyWith(outlet: value));
    });
  }
}

/// @nodoc
abstract class _$OrderHistoryCopyWith<$Res>
    implements $OrderHistoryCopyWith<$Res> {
  factory _$OrderHistoryCopyWith(
          _OrderHistory value, $Res Function(_OrderHistory) then) =
      __$OrderHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime deviceTimestamp,
      Outlet outlet,
      String receiptCode,
      int preorderPeriod,
      String salesType,
      String status,
      String finalAmount,
      String discountAmount});

  @override
  $OutletCopyWith<$Res> get outlet;
}

/// @nodoc
class __$OrderHistoryCopyWithImpl<$Res> extends _$OrderHistoryCopyWithImpl<$Res>
    implements _$OrderHistoryCopyWith<$Res> {
  __$OrderHistoryCopyWithImpl(
      _OrderHistory _value, $Res Function(_OrderHistory) _then)
      : super(_value, (v) => _then(v as _OrderHistory));

  @override
  _OrderHistory get _value => super._value as _OrderHistory;

  @override
  $Res call({
    Object? deviceTimestamp = freezed,
    Object? outlet = freezed,
    Object? receiptCode = freezed,
    Object? preorderPeriod = freezed,
    Object? salesType = freezed,
    Object? status = freezed,
    Object? finalAmount = freezed,
    Object? discountAmount = freezed,
  }) {
    return _then(_OrderHistory(
      deviceTimestamp: deviceTimestamp == freezed
          ? _value.deviceTimestamp
          : deviceTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outlet: outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as Outlet,
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      preorderPeriod: preorderPeriod == freezed
          ? _value.preorderPeriod
          : preorderPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistory implements _OrderHistory {
  const _$_OrderHistory(
      {required this.deviceTimestamp,
      required this.outlet,
      required this.receiptCode,
      required this.preorderPeriod,
      required this.salesType,
      required this.status,
      required this.finalAmount,
      required this.discountAmount});

  factory _$_OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderHistoryFromJson(json);

  @override
  final DateTime deviceTimestamp;
  @override
  final Outlet outlet;
  @override
  final String receiptCode;
  @override
  final int preorderPeriod;
  @override
  final String salesType;
  @override
  final String status;
  @override
  final String finalAmount;
  @override
  final String discountAmount;

  @override
  String toString() {
    return 'OrderHistory(deviceTimestamp: $deviceTimestamp, outlet: $outlet, receiptCode: $receiptCode, preorderPeriod: $preorderPeriod, salesType: $salesType, status: $status, finalAmount: $finalAmount, discountAmount: $discountAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderHistory &&
            (identical(other.deviceTimestamp, deviceTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.deviceTimestamp, deviceTimestamp)) &&
            (identical(other.outlet, outlet) ||
                const DeepCollectionEquality().equals(other.outlet, outlet)) &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)) &&
            (identical(other.preorderPeriod, preorderPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.preorderPeriod, preorderPeriod)) &&
            (identical(other.salesType, salesType) ||
                const DeepCollectionEquality()
                    .equals(other.salesType, salesType)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.finalAmount, finalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.finalAmount, finalAmount)) &&
            (identical(other.discountAmount, discountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.discountAmount, discountAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceTimestamp) ^
      const DeepCollectionEquality().hash(outlet) ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(preorderPeriod) ^
      const DeepCollectionEquality().hash(salesType) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(finalAmount) ^
      const DeepCollectionEquality().hash(discountAmount);

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryCopyWith<_OrderHistory> get copyWith =>
      __$OrderHistoryCopyWithImpl<_OrderHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderHistoryToJson(this);
  }
}

abstract class _OrderHistory implements OrderHistory {
  const factory _OrderHistory(
      {required DateTime deviceTimestamp,
      required Outlet outlet,
      required String receiptCode,
      required int preorderPeriod,
      required String salesType,
      required String status,
      required String finalAmount,
      required String discountAmount}) = _$_OrderHistory;

  factory _OrderHistory.fromJson(Map<String, dynamic> json) =
      _$_OrderHistory.fromJson;

  @override
  DateTime get deviceTimestamp => throw _privateConstructorUsedError;
  @override
  Outlet get outlet => throw _privateConstructorUsedError;
  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  int get preorderPeriod => throw _privateConstructorUsedError;
  @override
  String get salesType => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get finalAmount => throw _privateConstructorUsedError;
  @override
  String get discountAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryCopyWith<_OrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

Outlet _$OutletFromJson(Map<String, dynamic> json) {
  return _Outlet.fromJson(json);
}

/// @nodoc
class _$OutletTearOff {
  const _$OutletTearOff();

  _Outlet call({required Detail detail, required String poCutoff}) {
    return _Outlet(
      detail: detail,
      poCutoff: poCutoff,
    );
  }

  Outlet fromJson(Map<String, Object> json) {
    return Outlet.fromJson(json);
  }
}

/// @nodoc
const $Outlet = _$OutletTearOff();

/// @nodoc
mixin _$Outlet {
  Detail get detail => throw _privateConstructorUsedError;
  String get poCutoff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCopyWith<Outlet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCopyWith<$Res> {
  factory $OutletCopyWith(Outlet value, $Res Function(Outlet) then) =
      _$OutletCopyWithImpl<$Res>;
  $Res call({Detail detail, String poCutoff});

  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$OutletCopyWithImpl<$Res> implements $OutletCopyWith<$Res> {
  _$OutletCopyWithImpl(this._value, this._then);

  final Outlet _value;
  // ignore: unused_field
  final $Res Function(Outlet) _then;

  @override
  $Res call({
    Object? detail = freezed,
    Object? poCutoff = freezed,
  }) {
    return _then(_value.copyWith(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc
abstract class _$OutletCopyWith<$Res> implements $OutletCopyWith<$Res> {
  factory _$OutletCopyWith(_Outlet value, $Res Function(_Outlet) then) =
      __$OutletCopyWithImpl<$Res>;
  @override
  $Res call({Detail detail, String poCutoff});

  @override
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$OutletCopyWithImpl<$Res> extends _$OutletCopyWithImpl<$Res>
    implements _$OutletCopyWith<$Res> {
  __$OutletCopyWithImpl(_Outlet _value, $Res Function(_Outlet) _then)
      : super(_value, (v) => _then(v as _Outlet));

  @override
  _Outlet get _value => super._value as _Outlet;

  @override
  $Res call({
    Object? detail = freezed,
    Object? poCutoff = freezed,
  }) {
    return _then(_Outlet(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Outlet implements _Outlet {
  const _$_Outlet({required this.detail, required this.poCutoff});

  factory _$_Outlet.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletFromJson(json);

  @override
  final Detail detail;
  @override
  final String poCutoff;

  @override
  String toString() {
    return 'Outlet(detail: $detail, poCutoff: $poCutoff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Outlet &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.poCutoff, poCutoff) ||
                const DeepCollectionEquality()
                    .equals(other.poCutoff, poCutoff)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(poCutoff);

  @JsonKey(ignore: true)
  @override
  _$OutletCopyWith<_Outlet> get copyWith =>
      __$OutletCopyWithImpl<_Outlet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletToJson(this);
  }
}

abstract class _Outlet implements Outlet {
  const factory _Outlet({required Detail detail, required String poCutoff}) =
      _$_Outlet;

  factory _Outlet.fromJson(Map<String, dynamic> json) = _$_Outlet.fromJson;

  @override
  Detail get detail => throw _privateConstructorUsedError;
  @override
  String get poCutoff => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCopyWith<_Outlet> get copyWith => throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
class _$DetailTearOff {
  const _$DetailTearOff();

  _Detail call({required String name}) {
    return _Detail(
      name: name,
    );
  }

  Detail fromJson(Map<String, Object> json) {
    return Detail.fromJson(json);
  }
}

/// @nodoc
const $Detail = _$DetailTearOff();

/// @nodoc
mixin _$Detail {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res> implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  final Detail _value;
  // ignore: unused_field
  final $Res Function(Detail) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$DetailCopyWith(_Detail value, $Res Function(_Detail) then) =
      __$DetailCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$DetailCopyWithImpl<$Res> extends _$DetailCopyWithImpl<$Res>
    implements _$DetailCopyWith<$Res> {
  __$DetailCopyWithImpl(_Detail _value, $Res Function(_Detail) _then)
      : super(_value, (v) => _then(v as _Detail));

  @override
  _Detail get _value => super._value as _Detail;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Detail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Detail implements _Detail {
  const _$_Detail({required this.name});

  factory _$_Detail.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Detail(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Detail &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$DetailCopyWith<_Detail> get copyWith =>
      __$DetailCopyWithImpl<_Detail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailToJson(this);
  }
}

abstract class _Detail implements Detail {
  const factory _Detail({required String name}) = _$_Detail;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$_Detail.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailCopyWith<_Detail> get copyWith => throw _privateConstructorUsedError;
}
