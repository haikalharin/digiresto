// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreditEventTearOff {
  const _$CreditEventTearOff();

  _Started started() {
    return const _Started();
  }

  _RefreshBalance refreshBalance() {
    return const _RefreshBalance();
  }
}

/// @nodoc
const $CreditEvent = _$CreditEventTearOff();

/// @nodoc
mixin _$CreditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshBalance value) refreshBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshBalance value)? refreshBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshBalance value)? refreshBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditEventCopyWith<$Res> {
  factory $CreditEventCopyWith(
          CreditEvent value, $Res Function(CreditEvent) then) =
      _$CreditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreditEventCopyWithImpl<$Res> implements $CreditEventCopyWith<$Res> {
  _$CreditEventCopyWithImpl(this._value, this._then);

  final CreditEvent _value;
  // ignore: unused_field
  final $Res Function(CreditEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CreditEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CreditEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshBalance,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshBalance,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshBalance,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshBalance value) refreshBalance,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshBalance value)? refreshBalance,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshBalance value)? refreshBalance,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreditEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$RefreshBalanceCopyWith<$Res> {
  factory _$RefreshBalanceCopyWith(
          _RefreshBalance value, $Res Function(_RefreshBalance) then) =
      __$RefreshBalanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshBalanceCopyWithImpl<$Res>
    extends _$CreditEventCopyWithImpl<$Res>
    implements _$RefreshBalanceCopyWith<$Res> {
  __$RefreshBalanceCopyWithImpl(
      _RefreshBalance _value, $Res Function(_RefreshBalance) _then)
      : super(_value, (v) => _then(v as _RefreshBalance));

  @override
  _RefreshBalance get _value => super._value as _RefreshBalance;
}

/// @nodoc

class _$_RefreshBalance implements _RefreshBalance {
  const _$_RefreshBalance();

  @override
  String toString() {
    return 'CreditEvent.refreshBalance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshBalance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshBalance,
  }) {
    return refreshBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshBalance,
  }) {
    return refreshBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshBalance,
    required TResult orElse(),
  }) {
    if (refreshBalance != null) {
      return refreshBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshBalance value) refreshBalance,
  }) {
    return refreshBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshBalance value)? refreshBalance,
  }) {
    return refreshBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshBalance value)? refreshBalance,
    required TResult orElse(),
  }) {
    if (refreshBalance != null) {
      return refreshBalance(this);
    }
    return orElse();
  }
}

abstract class _RefreshBalance implements CreditEvent {
  const factory _RefreshBalance() = _$_RefreshBalance;
}

/// @nodoc
class _$CreditStateTearOff {
  const _$CreditStateTearOff();

  _CreditState call(
      {required Option<Either<CreditFailure, UserBalance>> userBalance,
      required Option<Either<CreditFailure, IList<TopUpMethod>>>
          listTopUpMethod}) {
    return _CreditState(
      userBalance: userBalance,
      listTopUpMethod: listTopUpMethod,
    );
  }
}

/// @nodoc
const $CreditState = _$CreditStateTearOff();

/// @nodoc
mixin _$CreditState {
  Option<Either<CreditFailure, UserBalance>> get userBalance =>
      throw _privateConstructorUsedError;
  Option<Either<CreditFailure, IList<TopUpMethod>>> get listTopUpMethod =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditStateCopyWith<CreditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditStateCopyWith<$Res> {
  factory $CreditStateCopyWith(
          CreditState value, $Res Function(CreditState) then) =
      _$CreditStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<CreditFailure, UserBalance>> userBalance,
      Option<Either<CreditFailure, IList<TopUpMethod>>> listTopUpMethod});
}

/// @nodoc
class _$CreditStateCopyWithImpl<$Res> implements $CreditStateCopyWith<$Res> {
  _$CreditStateCopyWithImpl(this._value, this._then);

  final CreditState _value;
  // ignore: unused_field
  final $Res Function(CreditState) _then;

  @override
  $Res call({
    Object? userBalance = freezed,
    Object? listTopUpMethod = freezed,
  }) {
    return _then(_value.copyWith(
      userBalance: userBalance == freezed
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, UserBalance>>,
      listTopUpMethod: listTopUpMethod == freezed
          ? _value.listTopUpMethod
          : listTopUpMethod // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, IList<TopUpMethod>>>,
    ));
  }
}

/// @nodoc
abstract class _$CreditStateCopyWith<$Res>
    implements $CreditStateCopyWith<$Res> {
  factory _$CreditStateCopyWith(
          _CreditState value, $Res Function(_CreditState) then) =
      __$CreditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<CreditFailure, UserBalance>> userBalance,
      Option<Either<CreditFailure, IList<TopUpMethod>>> listTopUpMethod});
}

/// @nodoc
class __$CreditStateCopyWithImpl<$Res> extends _$CreditStateCopyWithImpl<$Res>
    implements _$CreditStateCopyWith<$Res> {
  __$CreditStateCopyWithImpl(
      _CreditState _value, $Res Function(_CreditState) _then)
      : super(_value, (v) => _then(v as _CreditState));

  @override
  _CreditState get _value => super._value as _CreditState;

  @override
  $Res call({
    Object? userBalance = freezed,
    Object? listTopUpMethod = freezed,
  }) {
    return _then(_CreditState(
      userBalance: userBalance == freezed
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, UserBalance>>,
      listTopUpMethod: listTopUpMethod == freezed
          ? _value.listTopUpMethod
          : listTopUpMethod // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, IList<TopUpMethod>>>,
    ));
  }
}

/// @nodoc

class _$_CreditState implements _CreditState {
  const _$_CreditState(
      {required this.userBalance, required this.listTopUpMethod});

  @override
  final Option<Either<CreditFailure, UserBalance>> userBalance;
  @override
  final Option<Either<CreditFailure, IList<TopUpMethod>>> listTopUpMethod;

  @override
  String toString() {
    return 'CreditState(userBalance: $userBalance, listTopUpMethod: $listTopUpMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreditState &&
            (identical(other.userBalance, userBalance) ||
                const DeepCollectionEquality()
                    .equals(other.userBalance, userBalance)) &&
            (identical(other.listTopUpMethod, listTopUpMethod) ||
                const DeepCollectionEquality()
                    .equals(other.listTopUpMethod, listTopUpMethod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userBalance) ^
      const DeepCollectionEquality().hash(listTopUpMethod);

  @JsonKey(ignore: true)
  @override
  _$CreditStateCopyWith<_CreditState> get copyWith =>
      __$CreditStateCopyWithImpl<_CreditState>(this, _$identity);
}

abstract class _CreditState implements CreditState {
  const factory _CreditState(
      {required Option<Either<CreditFailure, UserBalance>> userBalance,
      required Option<Either<CreditFailure, IList<TopUpMethod>>>
          listTopUpMethod}) = _$_CreditState;

  @override
  Option<Either<CreditFailure, UserBalance>> get userBalance =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CreditFailure, IList<TopUpMethod>>> get listTopUpMethod =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreditStateCopyWith<_CreditState> get copyWith =>
      throw _privateConstructorUsedError;
}
