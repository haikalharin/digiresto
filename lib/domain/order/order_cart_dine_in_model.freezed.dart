// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_cart_dine_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderCartDineInModel _$OrderCartDineInModelFromJson(Map<String, dynamic> json) {
  return _OrderCartDineInModel.fromJson(json);
}

/// @nodoc
class _$OrderCartDineInModelTearOff {
  const _$OrderCartDineInModelTearOff();

  _OrderCartDineInModel call(
      {required bool useSchedule,
      required DateTime selectedDate,
      required String selectedKeyClock,
      required String selectedKeySmoking,
      required int pax}) {
    return _OrderCartDineInModel(
      useSchedule: useSchedule,
      selectedDate: selectedDate,
      selectedKeyClock: selectedKeyClock,
      selectedKeySmoking: selectedKeySmoking,
      pax: pax,
    );
  }

  OrderCartDineInModel fromJson(Map<String, Object> json) {
    return OrderCartDineInModel.fromJson(json);
  }
}

/// @nodoc
const $OrderCartDineInModel = _$OrderCartDineInModelTearOff();

/// @nodoc
mixin _$OrderCartDineInModel {
  bool get useSchedule => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  String get selectedKeyClock => throw _privateConstructorUsedError;
  String get selectedKeySmoking => throw _privateConstructorUsedError;
  int get pax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCartDineInModelCopyWith<OrderCartDineInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCartDineInModelCopyWith<$Res> {
  factory $OrderCartDineInModelCopyWith(OrderCartDineInModel value,
          $Res Function(OrderCartDineInModel) then) =
      _$OrderCartDineInModelCopyWithImpl<$Res>;
  $Res call(
      {bool useSchedule,
      DateTime selectedDate,
      String selectedKeyClock,
      String selectedKeySmoking,
      int pax});
}

/// @nodoc
class _$OrderCartDineInModelCopyWithImpl<$Res>
    implements $OrderCartDineInModelCopyWith<$Res> {
  _$OrderCartDineInModelCopyWithImpl(this._value, this._then);

  final OrderCartDineInModel _value;
  // ignore: unused_field
  final $Res Function(OrderCartDineInModel) _then;

  @override
  $Res call({
    Object? useSchedule = freezed,
    Object? selectedDate = freezed,
    Object? selectedKeyClock = freezed,
    Object? selectedKeySmoking = freezed,
    Object? pax = freezed,
  }) {
    return _then(_value.copyWith(
      useSchedule: useSchedule == freezed
          ? _value.useSchedule
          : useSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedKeyClock: selectedKeyClock == freezed
          ? _value.selectedKeyClock
          : selectedKeyClock // ignore: cast_nullable_to_non_nullable
              as String,
      selectedKeySmoking: selectedKeySmoking == freezed
          ? _value.selectedKeySmoking
          : selectedKeySmoking // ignore: cast_nullable_to_non_nullable
              as String,
      pax: pax == freezed
          ? _value.pax
          : pax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OrderCartDineInModelCopyWith<$Res>
    implements $OrderCartDineInModelCopyWith<$Res> {
  factory _$OrderCartDineInModelCopyWith(_OrderCartDineInModel value,
          $Res Function(_OrderCartDineInModel) then) =
      __$OrderCartDineInModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool useSchedule,
      DateTime selectedDate,
      String selectedKeyClock,
      String selectedKeySmoking,
      int pax});
}

/// @nodoc
class __$OrderCartDineInModelCopyWithImpl<$Res>
    extends _$OrderCartDineInModelCopyWithImpl<$Res>
    implements _$OrderCartDineInModelCopyWith<$Res> {
  __$OrderCartDineInModelCopyWithImpl(
      _OrderCartDineInModel _value, $Res Function(_OrderCartDineInModel) _then)
      : super(_value, (v) => _then(v as _OrderCartDineInModel));

  @override
  _OrderCartDineInModel get _value => super._value as _OrderCartDineInModel;

  @override
  $Res call({
    Object? useSchedule = freezed,
    Object? selectedDate = freezed,
    Object? selectedKeyClock = freezed,
    Object? selectedKeySmoking = freezed,
    Object? pax = freezed,
  }) {
    return _then(_OrderCartDineInModel(
      useSchedule: useSchedule == freezed
          ? _value.useSchedule
          : useSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedKeyClock: selectedKeyClock == freezed
          ? _value.selectedKeyClock
          : selectedKeyClock // ignore: cast_nullable_to_non_nullable
              as String,
      selectedKeySmoking: selectedKeySmoking == freezed
          ? _value.selectedKeySmoking
          : selectedKeySmoking // ignore: cast_nullable_to_non_nullable
              as String,
      pax: pax == freezed
          ? _value.pax
          : pax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderCartDineInModel implements _OrderCartDineInModel {
  const _$_OrderCartDineInModel(
      {required this.useSchedule,
      required this.selectedDate,
      required this.selectedKeyClock,
      required this.selectedKeySmoking,
      required this.pax});

  factory _$_OrderCartDineInModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderCartDineInModelFromJson(json);

  @override
  final bool useSchedule;
  @override
  final DateTime selectedDate;
  @override
  final String selectedKeyClock;
  @override
  final String selectedKeySmoking;
  @override
  final int pax;

  @override
  String toString() {
    return 'OrderCartDineInModel(useSchedule: $useSchedule, selectedDate: $selectedDate, selectedKeyClock: $selectedKeyClock, selectedKeySmoking: $selectedKeySmoking, pax: $pax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderCartDineInModel &&
            (identical(other.useSchedule, useSchedule) ||
                const DeepCollectionEquality()
                    .equals(other.useSchedule, useSchedule)) &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)) &&
            (identical(other.selectedKeyClock, selectedKeyClock) ||
                const DeepCollectionEquality()
                    .equals(other.selectedKeyClock, selectedKeyClock)) &&
            (identical(other.selectedKeySmoking, selectedKeySmoking) ||
                const DeepCollectionEquality()
                    .equals(other.selectedKeySmoking, selectedKeySmoking)) &&
            (identical(other.pax, pax) ||
                const DeepCollectionEquality().equals(other.pax, pax)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(useSchedule) ^
      const DeepCollectionEquality().hash(selectedDate) ^
      const DeepCollectionEquality().hash(selectedKeyClock) ^
      const DeepCollectionEquality().hash(selectedKeySmoking) ^
      const DeepCollectionEquality().hash(pax);

  @JsonKey(ignore: true)
  @override
  _$OrderCartDineInModelCopyWith<_OrderCartDineInModel> get copyWith =>
      __$OrderCartDineInModelCopyWithImpl<_OrderCartDineInModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderCartDineInModelToJson(this);
  }
}

abstract class _OrderCartDineInModel implements OrderCartDineInModel {
  const factory _OrderCartDineInModel(
      {required bool useSchedule,
      required DateTime selectedDate,
      required String selectedKeyClock,
      required String selectedKeySmoking,
      required int pax}) = _$_OrderCartDineInModel;

  factory _OrderCartDineInModel.fromJson(Map<String, dynamic> json) =
      _$_OrderCartDineInModel.fromJson;

  @override
  bool get useSchedule => throw _privateConstructorUsedError;
  @override
  DateTime get selectedDate => throw _privateConstructorUsedError;
  @override
  String get selectedKeyClock => throw _privateConstructorUsedError;
  @override
  String get selectedKeySmoking => throw _privateConstructorUsedError;
  @override
  int get pax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderCartDineInModelCopyWith<_OrderCartDineInModel> get copyWith =>
      throw _privateConstructorUsedError;
}
