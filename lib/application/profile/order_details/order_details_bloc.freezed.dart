// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderDetailsEventTearOff {
  const _$OrderDetailsEventTearOff();

  _Started started(String receiptCode) {
    return _Started(
      receiptCode,
    );
  }

  _Refresh refresh(String receiptCode) {
    return _Refresh(
      receiptCode,
    );
  }
}

/// @nodoc
const $OrderDetailsEvent = _$OrderDetailsEventTearOff();

/// @nodoc
mixin _$OrderDetailsEvent {
  String get receiptCode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailsEventCopyWith<OrderDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsEventCopyWith<$Res> {
  factory $OrderDetailsEventCopyWith(
          OrderDetailsEvent value, $Res Function(OrderDetailsEvent) then) =
      _$OrderDetailsEventCopyWithImpl<$Res>;
  $Res call({String receiptCode});
}

/// @nodoc
class _$OrderDetailsEventCopyWithImpl<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  _$OrderDetailsEventCopyWithImpl(this._value, this._then);

  final OrderDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsEvent) _then;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_value.copyWith(
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$OrderDetailsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_Started(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'OrderDetailsEvent.started(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
  }) {
    return started(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderDetailsEvent {
  const factory _Started(String receiptCode) = _$_Started;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode});
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$OrderDetailsEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_Refresh(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'OrderDetailsEvent.refresh(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Refresh &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$RefreshCopyWith<_Refresh> get copyWith =>
      __$RefreshCopyWithImpl<_Refresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
  }) {
    return refresh(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements OrderDetailsEvent {
  const factory _Refresh(String receiptCode) = _$_Refresh;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RefreshCopyWith<_Refresh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderDetailsStateTearOff {
  const _$OrderDetailsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadSuccess loadSuccess({required OrderHistoryDetails orderHistoryDetails}) {
    return _LoadSuccess(
      orderHistoryDetails: orderHistoryDetails,
    );
  }

  _LoadFailure loadFailure({required ProfileFailure failure}) {
    return _LoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $OrderDetailsState = _$OrderDetailsStateTearOff();

/// @nodoc
mixin _$OrderDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails)? loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsStateCopyWith<$Res> {
  factory $OrderDetailsStateCopyWith(
          OrderDetailsState value, $Res Function(OrderDetailsState) then) =
      _$OrderDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderDetailsStateCopyWithImpl<$Res>
    implements $OrderDetailsStateCopyWith<$Res> {
  _$OrderDetailsStateCopyWithImpl(this._value, this._then);

  final OrderDetailsState _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OrderDetailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails)? loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$OrderDetailsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'OrderDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails)? loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderDetailsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({OrderHistoryDetails orderHistoryDetails});

  $OrderHistoryDetailsCopyWith<$Res> get orderHistoryDetails;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? orderHistoryDetails = freezed,
  }) {
    return _then(_LoadSuccess(
      orderHistoryDetails: orderHistoryDetails == freezed
          ? _value.orderHistoryDetails
          : orderHistoryDetails // ignore: cast_nullable_to_non_nullable
              as OrderHistoryDetails,
    ));
  }

  @override
  $OrderHistoryDetailsCopyWith<$Res> get orderHistoryDetails {
    return $OrderHistoryDetailsCopyWith<$Res>(_value.orderHistoryDetails,
        (value) {
      return _then(_value.copyWith(orderHistoryDetails: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required this.orderHistoryDetails});

  @override
  final OrderHistoryDetails orderHistoryDetails;

  @override
  String toString() {
    return 'OrderDetailsState.loadSuccess(orderHistoryDetails: $orderHistoryDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.orderHistoryDetails, orderHistoryDetails) ||
                const DeepCollectionEquality()
                    .equals(other.orderHistoryDetails, orderHistoryDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderHistoryDetails);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
  }) {
    return loadSuccess(orderHistoryDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails)? loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(orderHistoryDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements OrderDetailsState {
  const factory _LoadSuccess(
      {required OrderHistoryDetails orderHistoryDetails}) = _$_LoadSuccess;

  OrderHistoryDetails get orderHistoryDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProfileFailure failure});

  $ProfileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProfileFailure,
    ));
  }

  @override
  $ProfileFailureCopyWith<$Res> get failure {
    return $ProfileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure({required this.failure});

  @override
  final ProfileFailure failure;

  @override
  String toString() {
    return 'OrderDetailsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails)? loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OrderDetailsState {
  const factory _LoadFailure({required ProfileFailure failure}) =
      _$_LoadFailure;

  ProfileFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
