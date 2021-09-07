// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderHistoryEventTearOff {
  const _$OrderHistoryEventTearOff();

  _OrderPendingOpen orderPendingOpen() {
    return const _OrderPendingOpen();
  }

  _OrderOnProcessOpen orderOnProcessOpen() {
    return const _OrderOnProcessOpen();
  }

  _OrderCompletedOpen orderCompletedOpen() {
    return const _OrderCompletedOpen();
  }
}

/// @nodoc
const $OrderHistoryEvent = _$OrderHistoryEventTearOff();

/// @nodoc
mixin _$OrderHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderPendingOpen,
    required TResult Function() orderOnProcessOpen,
    required TResult Function() orderCompletedOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderPendingOpen,
    TResult Function()? orderOnProcessOpen,
    TResult Function()? orderCompletedOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPendingOpen value) orderPendingOpen,
    required TResult Function(_OrderOnProcessOpen value) orderOnProcessOpen,
    required TResult Function(_OrderCompletedOpen value) orderCompletedOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPendingOpen value)? orderPendingOpen,
    TResult Function(_OrderOnProcessOpen value)? orderOnProcessOpen,
    TResult Function(_OrderCompletedOpen value)? orderCompletedOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryEventCopyWith<$Res> {
  factory $OrderHistoryEventCopyWith(
          OrderHistoryEvent value, $Res Function(OrderHistoryEvent) then) =
      _$OrderHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderHistoryEventCopyWithImpl<$Res>
    implements $OrderHistoryEventCopyWith<$Res> {
  _$OrderHistoryEventCopyWithImpl(this._value, this._then);

  final OrderHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(OrderHistoryEvent) _then;
}

/// @nodoc
abstract class _$OrderPendingOpenCopyWith<$Res> {
  factory _$OrderPendingOpenCopyWith(
          _OrderPendingOpen value, $Res Function(_OrderPendingOpen) then) =
      __$OrderPendingOpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$OrderPendingOpenCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res>
    implements _$OrderPendingOpenCopyWith<$Res> {
  __$OrderPendingOpenCopyWithImpl(
      _OrderPendingOpen _value, $Res Function(_OrderPendingOpen) _then)
      : super(_value, (v) => _then(v as _OrderPendingOpen));

  @override
  _OrderPendingOpen get _value => super._value as _OrderPendingOpen;
}

/// @nodoc

class _$_OrderPendingOpen implements _OrderPendingOpen {
  const _$_OrderPendingOpen();

  @override
  String toString() {
    return 'OrderHistoryEvent.orderPendingOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OrderPendingOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderPendingOpen,
    required TResult Function() orderOnProcessOpen,
    required TResult Function() orderCompletedOpen,
  }) {
    return orderPendingOpen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderPendingOpen,
    TResult Function()? orderOnProcessOpen,
    TResult Function()? orderCompletedOpen,
    required TResult orElse(),
  }) {
    if (orderPendingOpen != null) {
      return orderPendingOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPendingOpen value) orderPendingOpen,
    required TResult Function(_OrderOnProcessOpen value) orderOnProcessOpen,
    required TResult Function(_OrderCompletedOpen value) orderCompletedOpen,
  }) {
    return orderPendingOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPendingOpen value)? orderPendingOpen,
    TResult Function(_OrderOnProcessOpen value)? orderOnProcessOpen,
    TResult Function(_OrderCompletedOpen value)? orderCompletedOpen,
    required TResult orElse(),
  }) {
    if (orderPendingOpen != null) {
      return orderPendingOpen(this);
    }
    return orElse();
  }
}

abstract class _OrderPendingOpen implements OrderHistoryEvent {
  const factory _OrderPendingOpen() = _$_OrderPendingOpen;
}

/// @nodoc
abstract class _$OrderOnProcessOpenCopyWith<$Res> {
  factory _$OrderOnProcessOpenCopyWith(
          _OrderOnProcessOpen value, $Res Function(_OrderOnProcessOpen) then) =
      __$OrderOnProcessOpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$OrderOnProcessOpenCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res>
    implements _$OrderOnProcessOpenCopyWith<$Res> {
  __$OrderOnProcessOpenCopyWithImpl(
      _OrderOnProcessOpen _value, $Res Function(_OrderOnProcessOpen) _then)
      : super(_value, (v) => _then(v as _OrderOnProcessOpen));

  @override
  _OrderOnProcessOpen get _value => super._value as _OrderOnProcessOpen;
}

/// @nodoc

class _$_OrderOnProcessOpen implements _OrderOnProcessOpen {
  const _$_OrderOnProcessOpen();

  @override
  String toString() {
    return 'OrderHistoryEvent.orderOnProcessOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OrderOnProcessOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderPendingOpen,
    required TResult Function() orderOnProcessOpen,
    required TResult Function() orderCompletedOpen,
  }) {
    return orderOnProcessOpen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderPendingOpen,
    TResult Function()? orderOnProcessOpen,
    TResult Function()? orderCompletedOpen,
    required TResult orElse(),
  }) {
    if (orderOnProcessOpen != null) {
      return orderOnProcessOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPendingOpen value) orderPendingOpen,
    required TResult Function(_OrderOnProcessOpen value) orderOnProcessOpen,
    required TResult Function(_OrderCompletedOpen value) orderCompletedOpen,
  }) {
    return orderOnProcessOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPendingOpen value)? orderPendingOpen,
    TResult Function(_OrderOnProcessOpen value)? orderOnProcessOpen,
    TResult Function(_OrderCompletedOpen value)? orderCompletedOpen,
    required TResult orElse(),
  }) {
    if (orderOnProcessOpen != null) {
      return orderOnProcessOpen(this);
    }
    return orElse();
  }
}

abstract class _OrderOnProcessOpen implements OrderHistoryEvent {
  const factory _OrderOnProcessOpen() = _$_OrderOnProcessOpen;
}

/// @nodoc
abstract class _$OrderCompletedOpenCopyWith<$Res> {
  factory _$OrderCompletedOpenCopyWith(
          _OrderCompletedOpen value, $Res Function(_OrderCompletedOpen) then) =
      __$OrderCompletedOpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$OrderCompletedOpenCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res>
    implements _$OrderCompletedOpenCopyWith<$Res> {
  __$OrderCompletedOpenCopyWithImpl(
      _OrderCompletedOpen _value, $Res Function(_OrderCompletedOpen) _then)
      : super(_value, (v) => _then(v as _OrderCompletedOpen));

  @override
  _OrderCompletedOpen get _value => super._value as _OrderCompletedOpen;
}

/// @nodoc

class _$_OrderCompletedOpen implements _OrderCompletedOpen {
  const _$_OrderCompletedOpen();

  @override
  String toString() {
    return 'OrderHistoryEvent.orderCompletedOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OrderCompletedOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderPendingOpen,
    required TResult Function() orderOnProcessOpen,
    required TResult Function() orderCompletedOpen,
  }) {
    return orderCompletedOpen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderPendingOpen,
    TResult Function()? orderOnProcessOpen,
    TResult Function()? orderCompletedOpen,
    required TResult orElse(),
  }) {
    if (orderCompletedOpen != null) {
      return orderCompletedOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPendingOpen value) orderPendingOpen,
    required TResult Function(_OrderOnProcessOpen value) orderOnProcessOpen,
    required TResult Function(_OrderCompletedOpen value) orderCompletedOpen,
  }) {
    return orderCompletedOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPendingOpen value)? orderPendingOpen,
    TResult Function(_OrderOnProcessOpen value)? orderOnProcessOpen,
    TResult Function(_OrderCompletedOpen value)? orderCompletedOpen,
    required TResult orElse(),
  }) {
    if (orderCompletedOpen != null) {
      return orderCompletedOpen(this);
    }
    return orElse();
  }
}

abstract class _OrderCompletedOpen implements OrderHistoryEvent {
  const factory _OrderCompletedOpen() = _$_OrderCompletedOpen;
}

/// @nodoc
class _$OrderHistoryStateTearOff {
  const _$OrderHistoryStateTearOff();

  _OrderHistoryState call(
      {required Option<Either<ProfileFailure, IList<OrderPending>>>
          orderPendingFailureOrSuccess,
      required Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderOnProccessFailureOrSuccess,
      required Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderCompletedFailureOrSuccess}) {
    return _OrderHistoryState(
      orderPendingFailureOrSuccess: orderPendingFailureOrSuccess,
      orderOnProccessFailureOrSuccess: orderOnProccessFailureOrSuccess,
      orderCompletedFailureOrSuccess: orderCompletedFailureOrSuccess,
    );
  }
}

/// @nodoc
const $OrderHistoryState = _$OrderHistoryStateTearOff();

/// @nodoc
mixin _$OrderHistoryState {
  Option<Either<ProfileFailure, IList<OrderPending>>>
      get orderPendingFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, IList<OrderHistory>>>
      get orderOnProccessFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, IList<OrderHistory>>>
      get orderCompletedFailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryStateCopyWith<OrderHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryStateCopyWith<$Res> {
  factory $OrderHistoryStateCopyWith(
          OrderHistoryState value, $Res Function(OrderHistoryState) then) =
      _$OrderHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ProfileFailure, IList<OrderPending>>>
          orderPendingFailureOrSuccess,
      Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderOnProccessFailureOrSuccess,
      Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderCompletedFailureOrSuccess});
}

/// @nodoc
class _$OrderHistoryStateCopyWithImpl<$Res>
    implements $OrderHistoryStateCopyWith<$Res> {
  _$OrderHistoryStateCopyWithImpl(this._value, this._then);

  final OrderHistoryState _value;
  // ignore: unused_field
  final $Res Function(OrderHistoryState) _then;

  @override
  $Res call({
    Object? orderPendingFailureOrSuccess = freezed,
    Object? orderOnProccessFailureOrSuccess = freezed,
    Object? orderCompletedFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      orderPendingFailureOrSuccess: orderPendingFailureOrSuccess == freezed
          ? _value.orderPendingFailureOrSuccess
          : orderPendingFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, IList<OrderPending>>>,
      orderOnProccessFailureOrSuccess: orderOnProccessFailureOrSuccess ==
              freezed
          ? _value.orderOnProccessFailureOrSuccess
          : orderOnProccessFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, IList<OrderHistory>>>,
      orderCompletedFailureOrSuccess: orderCompletedFailureOrSuccess == freezed
          ? _value.orderCompletedFailureOrSuccess
          : orderCompletedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, IList<OrderHistory>>>,
    ));
  }
}

/// @nodoc
abstract class _$OrderHistoryStateCopyWith<$Res>
    implements $OrderHistoryStateCopyWith<$Res> {
  factory _$OrderHistoryStateCopyWith(
          _OrderHistoryState value, $Res Function(_OrderHistoryState) then) =
      __$OrderHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ProfileFailure, IList<OrderPending>>>
          orderPendingFailureOrSuccess,
      Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderOnProccessFailureOrSuccess,
      Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderCompletedFailureOrSuccess});
}

/// @nodoc
class __$OrderHistoryStateCopyWithImpl<$Res>
    extends _$OrderHistoryStateCopyWithImpl<$Res>
    implements _$OrderHistoryStateCopyWith<$Res> {
  __$OrderHistoryStateCopyWithImpl(
      _OrderHistoryState _value, $Res Function(_OrderHistoryState) _then)
      : super(_value, (v) => _then(v as _OrderHistoryState));

  @override
  _OrderHistoryState get _value => super._value as _OrderHistoryState;

  @override
  $Res call({
    Object? orderPendingFailureOrSuccess = freezed,
    Object? orderOnProccessFailureOrSuccess = freezed,
    Object? orderCompletedFailureOrSuccess = freezed,
  }) {
    return _then(_OrderHistoryState(
      orderPendingFailureOrSuccess: orderPendingFailureOrSuccess == freezed
          ? _value.orderPendingFailureOrSuccess
          : orderPendingFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, IList<OrderPending>>>,
      orderOnProccessFailureOrSuccess: orderOnProccessFailureOrSuccess ==
              freezed
          ? _value.orderOnProccessFailureOrSuccess
          : orderOnProccessFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, IList<OrderHistory>>>,
      orderCompletedFailureOrSuccess: orderCompletedFailureOrSuccess == freezed
          ? _value.orderCompletedFailureOrSuccess
          : orderCompletedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, IList<OrderHistory>>>,
    ));
  }
}

/// @nodoc

class _$_OrderHistoryState implements _OrderHistoryState {
  const _$_OrderHistoryState(
      {required this.orderPendingFailureOrSuccess,
      required this.orderOnProccessFailureOrSuccess,
      required this.orderCompletedFailureOrSuccess});

  @override
  final Option<Either<ProfileFailure, IList<OrderPending>>>
      orderPendingFailureOrSuccess;
  @override
  final Option<Either<ProfileFailure, IList<OrderHistory>>>
      orderOnProccessFailureOrSuccess;
  @override
  final Option<Either<ProfileFailure, IList<OrderHistory>>>
      orderCompletedFailureOrSuccess;

  @override
  String toString() {
    return 'OrderHistoryState(orderPendingFailureOrSuccess: $orderPendingFailureOrSuccess, orderOnProccessFailureOrSuccess: $orderOnProccessFailureOrSuccess, orderCompletedFailureOrSuccess: $orderCompletedFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderHistoryState &&
            (identical(other.orderPendingFailureOrSuccess,
                    orderPendingFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderPendingFailureOrSuccess,
                    orderPendingFailureOrSuccess)) &&
            (identical(other.orderOnProccessFailureOrSuccess,
                    orderOnProccessFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderOnProccessFailureOrSuccess,
                    orderOnProccessFailureOrSuccess)) &&
            (identical(other.orderCompletedFailureOrSuccess,
                    orderCompletedFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderCompletedFailureOrSuccess,
                    orderCompletedFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderPendingFailureOrSuccess) ^
      const DeepCollectionEquality().hash(orderOnProccessFailureOrSuccess) ^
      const DeepCollectionEquality().hash(orderCompletedFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryStateCopyWith<_OrderHistoryState> get copyWith =>
      __$OrderHistoryStateCopyWithImpl<_OrderHistoryState>(this, _$identity);
}

abstract class _OrderHistoryState implements OrderHistoryState {
  const factory _OrderHistoryState(
      {required Option<Either<ProfileFailure, IList<OrderPending>>>
          orderPendingFailureOrSuccess,
      required Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderOnProccessFailureOrSuccess,
      required Option<Either<ProfileFailure, IList<OrderHistory>>>
          orderCompletedFailureOrSuccess}) = _$_OrderHistoryState;

  @override
  Option<Either<ProfileFailure, IList<OrderPending>>>
      get orderPendingFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, IList<OrderHistory>>>
      get orderOnProccessFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, IList<OrderHistory>>>
      get orderCompletedFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryStateCopyWith<_OrderHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
