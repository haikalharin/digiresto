// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecentHistoryEventTearOff {
  const _$RecentHistoryEventTearOff();

  _Started started() {
    return const _Started();
  }

  _FecthNext fetchNext() {
    return const _FecthNext();
  }
}

/// @nodoc
const $RecentHistoryEvent = _$RecentHistoryEventTearOff();

/// @nodoc
mixin _$RecentHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthNext value) fetchNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthNext value)? fetchNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthNext value)? fetchNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentHistoryEventCopyWith<$Res> {
  factory $RecentHistoryEventCopyWith(
          RecentHistoryEvent value, $Res Function(RecentHistoryEvent) then) =
      _$RecentHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentHistoryEventCopyWithImpl<$Res>
    implements $RecentHistoryEventCopyWith<$Res> {
  _$RecentHistoryEventCopyWithImpl(this._value, this._then);

  final RecentHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(RecentHistoryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$RecentHistoryEventCopyWithImpl<$Res>
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
    return 'RecentHistoryEvent.started()';
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
    required TResult Function() fetchNext,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchNext,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchNext,
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
    required TResult Function(_FecthNext value) fetchNext,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthNext value)? fetchNext,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthNext value)? fetchNext,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RecentHistoryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$FecthNextCopyWith<$Res> {
  factory _$FecthNextCopyWith(
          _FecthNext value, $Res Function(_FecthNext) then) =
      __$FecthNextCopyWithImpl<$Res>;
}

/// @nodoc
class __$FecthNextCopyWithImpl<$Res>
    extends _$RecentHistoryEventCopyWithImpl<$Res>
    implements _$FecthNextCopyWith<$Res> {
  __$FecthNextCopyWithImpl(_FecthNext _value, $Res Function(_FecthNext) _then)
      : super(_value, (v) => _then(v as _FecthNext));

  @override
  _FecthNext get _value => super._value as _FecthNext;
}

/// @nodoc

class _$_FecthNext implements _FecthNext {
  const _$_FecthNext();

  @override
  String toString() {
    return 'RecentHistoryEvent.fetchNext()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FecthNext);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchNext,
  }) {
    return fetchNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchNext,
  }) {
    return fetchNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchNext,
    required TResult orElse(),
  }) {
    if (fetchNext != null) {
      return fetchNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FecthNext value) fetchNext,
  }) {
    return fetchNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthNext value)? fetchNext,
  }) {
    return fetchNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FecthNext value)? fetchNext,
    required TResult orElse(),
  }) {
    if (fetchNext != null) {
      return fetchNext(this);
    }
    return orElse();
  }
}

abstract class _FecthNext implements RecentHistoryEvent {
  const factory _FecthNext() = _$_FecthNext;
}

/// @nodoc
class _$RecentHistoryStateTearOff {
  const _$RecentHistoryStateTearOff();

  _RecentHistoryState call(
      {required bool isLoading,
      required IList<PaymentHistoryDetail> listData,
      required Option<CreditFailure> failureOption}) {
    return _RecentHistoryState(
      isLoading: isLoading,
      listData: listData,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $RecentHistoryState = _$RecentHistoryStateTearOff();

/// @nodoc
mixin _$RecentHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  IList<PaymentHistoryDetail> get listData =>
      throw _privateConstructorUsedError;
  Option<CreditFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentHistoryStateCopyWith<RecentHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentHistoryStateCopyWith<$Res> {
  factory $RecentHistoryStateCopyWith(
          RecentHistoryState value, $Res Function(RecentHistoryState) then) =
      _$RecentHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      IList<PaymentHistoryDetail> listData,
      Option<CreditFailure> failureOption});
}

/// @nodoc
class _$RecentHistoryStateCopyWithImpl<$Res>
    implements $RecentHistoryStateCopyWith<$Res> {
  _$RecentHistoryStateCopyWithImpl(this._value, this._then);

  final RecentHistoryState _value;
  // ignore: unused_field
  final $Res Function(RecentHistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listData = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listData: listData == freezed
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as IList<PaymentHistoryDetail>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CreditFailure>,
    ));
  }
}

/// @nodoc
abstract class _$RecentHistoryStateCopyWith<$Res>
    implements $RecentHistoryStateCopyWith<$Res> {
  factory _$RecentHistoryStateCopyWith(
          _RecentHistoryState value, $Res Function(_RecentHistoryState) then) =
      __$RecentHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      IList<PaymentHistoryDetail> listData,
      Option<CreditFailure> failureOption});
}

/// @nodoc
class __$RecentHistoryStateCopyWithImpl<$Res>
    extends _$RecentHistoryStateCopyWithImpl<$Res>
    implements _$RecentHistoryStateCopyWith<$Res> {
  __$RecentHistoryStateCopyWithImpl(
      _RecentHistoryState _value, $Res Function(_RecentHistoryState) _then)
      : super(_value, (v) => _then(v as _RecentHistoryState));

  @override
  _RecentHistoryState get _value => super._value as _RecentHistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listData = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_RecentHistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listData: listData == freezed
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as IList<PaymentHistoryDetail>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CreditFailure>,
    ));
  }
}

/// @nodoc

class _$_RecentHistoryState implements _RecentHistoryState {
  const _$_RecentHistoryState(
      {required this.isLoading,
      required this.listData,
      required this.failureOption});

  @override
  final bool isLoading;
  @override
  final IList<PaymentHistoryDetail> listData;
  @override
  final Option<CreditFailure> failureOption;

  @override
  String toString() {
    return 'RecentHistoryState(isLoading: $isLoading, listData: $listData, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecentHistoryState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.listData, listData) ||
                const DeepCollectionEquality()
                    .equals(other.listData, listData)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(listData) ^
      const DeepCollectionEquality().hash(failureOption);

  @JsonKey(ignore: true)
  @override
  _$RecentHistoryStateCopyWith<_RecentHistoryState> get copyWith =>
      __$RecentHistoryStateCopyWithImpl<_RecentHistoryState>(this, _$identity);
}

abstract class _RecentHistoryState implements RecentHistoryState {
  const factory _RecentHistoryState(
      {required bool isLoading,
      required IList<PaymentHistoryDetail> listData,
      required Option<CreditFailure> failureOption}) = _$_RecentHistoryState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  IList<PaymentHistoryDetail> get listData =>
      throw _privateConstructorUsedError;
  @override
  Option<CreditFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecentHistoryStateCopyWith<_RecentHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
