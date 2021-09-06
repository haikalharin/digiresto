// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

  _GetTransactionHistory getTransactionHistory() {
    return const _GetTransactionHistory();
  }

  _GetOngoingTransaction getOngoingTransaction() {
    return const _GetOngoingTransaction();
  }

  _GetTransaction getTransaction(String receiptCode) {
    return _GetTransaction(
      receiptCode,
    );
  }

  _CancelTransaction cancelTransaction(String receiptCode) {
    return _CancelTransaction(
      receiptCode,
    );
  }

  _AcceptTransaction acceptTransaction(String receiptCode) {
    return _AcceptTransaction(
      receiptCode,
    );
  }
}

/// @nodoc
const $TransactionEvent = _$TransactionEventTearOff();

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactionHistory,
    required TResult Function() getOngoingTransaction,
    required TResult Function(String receiptCode) getTransaction,
    required TResult Function(String receiptCode) cancelTransaction,
    required TResult Function(String receiptCode) acceptTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactionHistory,
    TResult Function()? getOngoingTransaction,
    TResult Function(String receiptCode)? getTransaction,
    TResult Function(String receiptCode)? cancelTransaction,
    TResult Function(String receiptCode)? acceptTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionHistory value)
        getTransactionHistory,
    required TResult Function(_GetOngoingTransaction value)
        getOngoingTransaction,
    required TResult Function(_GetTransaction value) getTransaction,
    required TResult Function(_CancelTransaction value) cancelTransaction,
    required TResult Function(_AcceptTransaction value) acceptTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionHistory value)? getTransactionHistory,
    TResult Function(_GetOngoingTransaction value)? getOngoingTransaction,
    TResult Function(_GetTransaction value)? getTransaction,
    TResult Function(_CancelTransaction value)? cancelTransaction,
    TResult Function(_AcceptTransaction value)? acceptTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

/// @nodoc
abstract class _$GetTransactionHistoryCopyWith<$Res> {
  factory _$GetTransactionHistoryCopyWith(_GetTransactionHistory value,
          $Res Function(_GetTransactionHistory) then) =
      __$GetTransactionHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetTransactionHistoryCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$GetTransactionHistoryCopyWith<$Res> {
  __$GetTransactionHistoryCopyWithImpl(_GetTransactionHistory _value,
      $Res Function(_GetTransactionHistory) _then)
      : super(_value, (v) => _then(v as _GetTransactionHistory));

  @override
  _GetTransactionHistory get _value => super._value as _GetTransactionHistory;
}

/// @nodoc

class _$_GetTransactionHistory implements _GetTransactionHistory {
  const _$_GetTransactionHistory();

  @override
  String toString() {
    return 'TransactionEvent.getTransactionHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetTransactionHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactionHistory,
    required TResult Function() getOngoingTransaction,
    required TResult Function(String receiptCode) getTransaction,
    required TResult Function(String receiptCode) cancelTransaction,
    required TResult Function(String receiptCode) acceptTransaction,
  }) {
    return getTransactionHistory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactionHistory,
    TResult Function()? getOngoingTransaction,
    TResult Function(String receiptCode)? getTransaction,
    TResult Function(String receiptCode)? cancelTransaction,
    TResult Function(String receiptCode)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (getTransactionHistory != null) {
      return getTransactionHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionHistory value)
        getTransactionHistory,
    required TResult Function(_GetOngoingTransaction value)
        getOngoingTransaction,
    required TResult Function(_GetTransaction value) getTransaction,
    required TResult Function(_CancelTransaction value) cancelTransaction,
    required TResult Function(_AcceptTransaction value) acceptTransaction,
  }) {
    return getTransactionHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionHistory value)? getTransactionHistory,
    TResult Function(_GetOngoingTransaction value)? getOngoingTransaction,
    TResult Function(_GetTransaction value)? getTransaction,
    TResult Function(_CancelTransaction value)? cancelTransaction,
    TResult Function(_AcceptTransaction value)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (getTransactionHistory != null) {
      return getTransactionHistory(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionHistory implements TransactionEvent {
  const factory _GetTransactionHistory() = _$_GetTransactionHistory;
}

/// @nodoc
abstract class _$GetOngoingTransactionCopyWith<$Res> {
  factory _$GetOngoingTransactionCopyWith(_GetOngoingTransaction value,
          $Res Function(_GetOngoingTransaction) then) =
      __$GetOngoingTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOngoingTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$GetOngoingTransactionCopyWith<$Res> {
  __$GetOngoingTransactionCopyWithImpl(_GetOngoingTransaction _value,
      $Res Function(_GetOngoingTransaction) _then)
      : super(_value, (v) => _then(v as _GetOngoingTransaction));

  @override
  _GetOngoingTransaction get _value => super._value as _GetOngoingTransaction;
}

/// @nodoc

class _$_GetOngoingTransaction implements _GetOngoingTransaction {
  const _$_GetOngoingTransaction();

  @override
  String toString() {
    return 'TransactionEvent.getOngoingTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetOngoingTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactionHistory,
    required TResult Function() getOngoingTransaction,
    required TResult Function(String receiptCode) getTransaction,
    required TResult Function(String receiptCode) cancelTransaction,
    required TResult Function(String receiptCode) acceptTransaction,
  }) {
    return getOngoingTransaction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactionHistory,
    TResult Function()? getOngoingTransaction,
    TResult Function(String receiptCode)? getTransaction,
    TResult Function(String receiptCode)? cancelTransaction,
    TResult Function(String receiptCode)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (getOngoingTransaction != null) {
      return getOngoingTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionHistory value)
        getTransactionHistory,
    required TResult Function(_GetOngoingTransaction value)
        getOngoingTransaction,
    required TResult Function(_GetTransaction value) getTransaction,
    required TResult Function(_CancelTransaction value) cancelTransaction,
    required TResult Function(_AcceptTransaction value) acceptTransaction,
  }) {
    return getOngoingTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionHistory value)? getTransactionHistory,
    TResult Function(_GetOngoingTransaction value)? getOngoingTransaction,
    TResult Function(_GetTransaction value)? getTransaction,
    TResult Function(_CancelTransaction value)? cancelTransaction,
    TResult Function(_AcceptTransaction value)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (getOngoingTransaction != null) {
      return getOngoingTransaction(this);
    }
    return orElse();
  }
}

abstract class _GetOngoingTransaction implements TransactionEvent {
  const factory _GetOngoingTransaction() = _$_GetOngoingTransaction;
}

/// @nodoc
abstract class _$GetTransactionCopyWith<$Res> {
  factory _$GetTransactionCopyWith(
          _GetTransaction value, $Res Function(_GetTransaction) then) =
      __$GetTransactionCopyWithImpl<$Res>;
  $Res call({String receiptCode});
}

/// @nodoc
class __$GetTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$GetTransactionCopyWith<$Res> {
  __$GetTransactionCopyWithImpl(
      _GetTransaction _value, $Res Function(_GetTransaction) _then)
      : super(_value, (v) => _then(v as _GetTransaction));

  @override
  _GetTransaction get _value => super._value as _GetTransaction;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_GetTransaction(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTransaction implements _GetTransaction {
  const _$_GetTransaction(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'TransactionEvent.getTransaction(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTransaction &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$GetTransactionCopyWith<_GetTransaction> get copyWith =>
      __$GetTransactionCopyWithImpl<_GetTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactionHistory,
    required TResult Function() getOngoingTransaction,
    required TResult Function(String receiptCode) getTransaction,
    required TResult Function(String receiptCode) cancelTransaction,
    required TResult Function(String receiptCode) acceptTransaction,
  }) {
    return getTransaction(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactionHistory,
    TResult Function()? getOngoingTransaction,
    TResult Function(String receiptCode)? getTransaction,
    TResult Function(String receiptCode)? cancelTransaction,
    TResult Function(String receiptCode)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (getTransaction != null) {
      return getTransaction(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionHistory value)
        getTransactionHistory,
    required TResult Function(_GetOngoingTransaction value)
        getOngoingTransaction,
    required TResult Function(_GetTransaction value) getTransaction,
    required TResult Function(_CancelTransaction value) cancelTransaction,
    required TResult Function(_AcceptTransaction value) acceptTransaction,
  }) {
    return getTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionHistory value)? getTransactionHistory,
    TResult Function(_GetOngoingTransaction value)? getOngoingTransaction,
    TResult Function(_GetTransaction value)? getTransaction,
    TResult Function(_CancelTransaction value)? cancelTransaction,
    TResult Function(_AcceptTransaction value)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (getTransaction != null) {
      return getTransaction(this);
    }
    return orElse();
  }
}

abstract class _GetTransaction implements TransactionEvent {
  const factory _GetTransaction(String receiptCode) = _$_GetTransaction;

  String get receiptCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetTransactionCopyWith<_GetTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelTransactionCopyWith<$Res> {
  factory _$CancelTransactionCopyWith(
          _CancelTransaction value, $Res Function(_CancelTransaction) then) =
      __$CancelTransactionCopyWithImpl<$Res>;
  $Res call({String receiptCode});
}

/// @nodoc
class __$CancelTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$CancelTransactionCopyWith<$Res> {
  __$CancelTransactionCopyWithImpl(
      _CancelTransaction _value, $Res Function(_CancelTransaction) _then)
      : super(_value, (v) => _then(v as _CancelTransaction));

  @override
  _CancelTransaction get _value => super._value as _CancelTransaction;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_CancelTransaction(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CancelTransaction implements _CancelTransaction {
  const _$_CancelTransaction(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'TransactionEvent.cancelTransaction(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelTransaction &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$CancelTransactionCopyWith<_CancelTransaction> get copyWith =>
      __$CancelTransactionCopyWithImpl<_CancelTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactionHistory,
    required TResult Function() getOngoingTransaction,
    required TResult Function(String receiptCode) getTransaction,
    required TResult Function(String receiptCode) cancelTransaction,
    required TResult Function(String receiptCode) acceptTransaction,
  }) {
    return cancelTransaction(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactionHistory,
    TResult Function()? getOngoingTransaction,
    TResult Function(String receiptCode)? getTransaction,
    TResult Function(String receiptCode)? cancelTransaction,
    TResult Function(String receiptCode)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (cancelTransaction != null) {
      return cancelTransaction(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionHistory value)
        getTransactionHistory,
    required TResult Function(_GetOngoingTransaction value)
        getOngoingTransaction,
    required TResult Function(_GetTransaction value) getTransaction,
    required TResult Function(_CancelTransaction value) cancelTransaction,
    required TResult Function(_AcceptTransaction value) acceptTransaction,
  }) {
    return cancelTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionHistory value)? getTransactionHistory,
    TResult Function(_GetOngoingTransaction value)? getOngoingTransaction,
    TResult Function(_GetTransaction value)? getTransaction,
    TResult Function(_CancelTransaction value)? cancelTransaction,
    TResult Function(_AcceptTransaction value)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (cancelTransaction != null) {
      return cancelTransaction(this);
    }
    return orElse();
  }
}

abstract class _CancelTransaction implements TransactionEvent {
  const factory _CancelTransaction(String receiptCode) = _$_CancelTransaction;

  String get receiptCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CancelTransactionCopyWith<_CancelTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptTransactionCopyWith<$Res> {
  factory _$AcceptTransactionCopyWith(
          _AcceptTransaction value, $Res Function(_AcceptTransaction) then) =
      __$AcceptTransactionCopyWithImpl<$Res>;
  $Res call({String receiptCode});
}

/// @nodoc
class __$AcceptTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$AcceptTransactionCopyWith<$Res> {
  __$AcceptTransactionCopyWithImpl(
      _AcceptTransaction _value, $Res Function(_AcceptTransaction) _then)
      : super(_value, (v) => _then(v as _AcceptTransaction));

  @override
  _AcceptTransaction get _value => super._value as _AcceptTransaction;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_AcceptTransaction(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AcceptTransaction implements _AcceptTransaction {
  const _$_AcceptTransaction(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'TransactionEvent.acceptTransaction(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AcceptTransaction &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$AcceptTransactionCopyWith<_AcceptTransaction> get copyWith =>
      __$AcceptTransactionCopyWithImpl<_AcceptTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactionHistory,
    required TResult Function() getOngoingTransaction,
    required TResult Function(String receiptCode) getTransaction,
    required TResult Function(String receiptCode) cancelTransaction,
    required TResult Function(String receiptCode) acceptTransaction,
  }) {
    return acceptTransaction(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactionHistory,
    TResult Function()? getOngoingTransaction,
    TResult Function(String receiptCode)? getTransaction,
    TResult Function(String receiptCode)? cancelTransaction,
    TResult Function(String receiptCode)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (acceptTransaction != null) {
      return acceptTransaction(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionHistory value)
        getTransactionHistory,
    required TResult Function(_GetOngoingTransaction value)
        getOngoingTransaction,
    required TResult Function(_GetTransaction value) getTransaction,
    required TResult Function(_CancelTransaction value) cancelTransaction,
    required TResult Function(_AcceptTransaction value) acceptTransaction,
  }) {
    return acceptTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionHistory value)? getTransactionHistory,
    TResult Function(_GetOngoingTransaction value)? getOngoingTransaction,
    TResult Function(_GetTransaction value)? getTransaction,
    TResult Function(_CancelTransaction value)? cancelTransaction,
    TResult Function(_AcceptTransaction value)? acceptTransaction,
    required TResult orElse(),
  }) {
    if (acceptTransaction != null) {
      return acceptTransaction(this);
    }
    return orElse();
  }
}

abstract class _AcceptTransaction implements TransactionEvent {
  const factory _AcceptTransaction(String receiptCode) = _$_AcceptTransaction;

  String get receiptCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AcceptTransactionCopyWith<_AcceptTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
  }

  _LoadFailure loadFailure(TransactionFailure error) {
    return _LoadFailure(
      error,
    );
  }

  _GetTransactionHistorySuccess getTransactionHistorySuccess(
      List<TransactionHistory> response) {
    return _GetTransactionHistorySuccess(
      response,
    );
  }

  _GetOngoingTransactionSuccess getOngoingTransactionSuccess(
      List<TransactionHistory> response) {
    return _GetOngoingTransactionSuccess(
      response,
    );
  }

  _GetTransactionSuccess getTransactionSuccess(
      TransactionMobileResponse response) {
    return _GetTransactionSuccess(
      response,
    );
  }

  _CancelTransactionSuccess cancelTransactionSuccess(
      TransactionMobileResponse response) {
    return _CancelTransactionSuccess(
      response,
    );
  }

  _AcceptTransactionSuccess acceptTransactionSuccess(StatusResponse response) {
    return _AcceptTransactionSuccess(
      response,
    );
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
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
    return 'TransactionState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TransactionState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TransactionState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'TransactionState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TransactionState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({TransactionFailure error});

  $TransactionFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_LoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TransactionFailure,
    ));
  }

  @override
  $TransactionFailureCopyWith<$Res> get error {
    return $TransactionFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.error);

  @override
  final TransactionFailure error;

  @override
  String toString() {
    return 'TransactionState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TransactionState {
  const factory _LoadFailure(TransactionFailure error) = _$_LoadFailure;

  TransactionFailure get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetTransactionHistorySuccessCopyWith<$Res> {
  factory _$GetTransactionHistorySuccessCopyWith(
          _GetTransactionHistorySuccess value,
          $Res Function(_GetTransactionHistorySuccess) then) =
      __$GetTransactionHistorySuccessCopyWithImpl<$Res>;
  $Res call({List<TransactionHistory> response});
}

/// @nodoc
class __$GetTransactionHistorySuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$GetTransactionHistorySuccessCopyWith<$Res> {
  __$GetTransactionHistorySuccessCopyWithImpl(
      _GetTransactionHistorySuccess _value,
      $Res Function(_GetTransactionHistorySuccess) _then)
      : super(_value, (v) => _then(v as _GetTransactionHistorySuccess));

  @override
  _GetTransactionHistorySuccess get _value =>
      super._value as _GetTransactionHistorySuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetTransactionHistorySuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
    ));
  }
}

/// @nodoc

class _$_GetTransactionHistorySuccess implements _GetTransactionHistorySuccess {
  const _$_GetTransactionHistorySuccess(this.response);

  @override
  final List<TransactionHistory> response;

  @override
  String toString() {
    return 'TransactionState.getTransactionHistorySuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTransactionHistorySuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetTransactionHistorySuccessCopyWith<_GetTransactionHistorySuccess>
      get copyWith => __$GetTransactionHistorySuccessCopyWithImpl<
          _GetTransactionHistorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return getTransactionHistorySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (getTransactionHistorySuccess != null) {
      return getTransactionHistorySuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return getTransactionHistorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (getTransactionHistorySuccess != null) {
      return getTransactionHistorySuccess(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionHistorySuccess implements TransactionState {
  const factory _GetTransactionHistorySuccess(
      List<TransactionHistory> response) = _$_GetTransactionHistorySuccess;

  List<TransactionHistory> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetTransactionHistorySuccessCopyWith<_GetTransactionHistorySuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOngoingTransactionSuccessCopyWith<$Res> {
  factory _$GetOngoingTransactionSuccessCopyWith(
          _GetOngoingTransactionSuccess value,
          $Res Function(_GetOngoingTransactionSuccess) then) =
      __$GetOngoingTransactionSuccessCopyWithImpl<$Res>;
  $Res call({List<TransactionHistory> response});
}

/// @nodoc
class __$GetOngoingTransactionSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$GetOngoingTransactionSuccessCopyWith<$Res> {
  __$GetOngoingTransactionSuccessCopyWithImpl(
      _GetOngoingTransactionSuccess _value,
      $Res Function(_GetOngoingTransactionSuccess) _then)
      : super(_value, (v) => _then(v as _GetOngoingTransactionSuccess));

  @override
  _GetOngoingTransactionSuccess get _value =>
      super._value as _GetOngoingTransactionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetOngoingTransactionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
    ));
  }
}

/// @nodoc

class _$_GetOngoingTransactionSuccess implements _GetOngoingTransactionSuccess {
  const _$_GetOngoingTransactionSuccess(this.response);

  @override
  final List<TransactionHistory> response;

  @override
  String toString() {
    return 'TransactionState.getOngoingTransactionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOngoingTransactionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetOngoingTransactionSuccessCopyWith<_GetOngoingTransactionSuccess>
      get copyWith => __$GetOngoingTransactionSuccessCopyWithImpl<
          _GetOngoingTransactionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return getOngoingTransactionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (getOngoingTransactionSuccess != null) {
      return getOngoingTransactionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return getOngoingTransactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (getOngoingTransactionSuccess != null) {
      return getOngoingTransactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOngoingTransactionSuccess implements TransactionState {
  const factory _GetOngoingTransactionSuccess(
      List<TransactionHistory> response) = _$_GetOngoingTransactionSuccess;

  List<TransactionHistory> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOngoingTransactionSuccessCopyWith<_GetOngoingTransactionSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetTransactionSuccessCopyWith<$Res> {
  factory _$GetTransactionSuccessCopyWith(_GetTransactionSuccess value,
          $Res Function(_GetTransactionSuccess) then) =
      __$GetTransactionSuccessCopyWithImpl<$Res>;
  $Res call({TransactionMobileResponse response});

  $TransactionMobileResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$GetTransactionSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$GetTransactionSuccessCopyWith<$Res> {
  __$GetTransactionSuccessCopyWithImpl(_GetTransactionSuccess _value,
      $Res Function(_GetTransactionSuccess) _then)
      : super(_value, (v) => _then(v as _GetTransactionSuccess));

  @override
  _GetTransactionSuccess get _value => super._value as _GetTransactionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetTransactionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as TransactionMobileResponse,
    ));
  }

  @override
  $TransactionMobileResponseCopyWith<$Res> get response {
    return $TransactionMobileResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_GetTransactionSuccess implements _GetTransactionSuccess {
  const _$_GetTransactionSuccess(this.response);

  @override
  final TransactionMobileResponse response;

  @override
  String toString() {
    return 'TransactionState.getTransactionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTransactionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetTransactionSuccessCopyWith<_GetTransactionSuccess> get copyWith =>
      __$GetTransactionSuccessCopyWithImpl<_GetTransactionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return getTransactionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (getTransactionSuccess != null) {
      return getTransactionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return getTransactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (getTransactionSuccess != null) {
      return getTransactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionSuccess implements TransactionState {
  const factory _GetTransactionSuccess(TransactionMobileResponse response) =
      _$_GetTransactionSuccess;

  TransactionMobileResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetTransactionSuccessCopyWith<_GetTransactionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelTransactionSuccessCopyWith<$Res> {
  factory _$CancelTransactionSuccessCopyWith(_CancelTransactionSuccess value,
          $Res Function(_CancelTransactionSuccess) then) =
      __$CancelTransactionSuccessCopyWithImpl<$Res>;
  $Res call({TransactionMobileResponse response});

  $TransactionMobileResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$CancelTransactionSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$CancelTransactionSuccessCopyWith<$Res> {
  __$CancelTransactionSuccessCopyWithImpl(_CancelTransactionSuccess _value,
      $Res Function(_CancelTransactionSuccess) _then)
      : super(_value, (v) => _then(v as _CancelTransactionSuccess));

  @override
  _CancelTransactionSuccess get _value =>
      super._value as _CancelTransactionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CancelTransactionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as TransactionMobileResponse,
    ));
  }

  @override
  $TransactionMobileResponseCopyWith<$Res> get response {
    return $TransactionMobileResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_CancelTransactionSuccess implements _CancelTransactionSuccess {
  const _$_CancelTransactionSuccess(this.response);

  @override
  final TransactionMobileResponse response;

  @override
  String toString() {
    return 'TransactionState.cancelTransactionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelTransactionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$CancelTransactionSuccessCopyWith<_CancelTransactionSuccess> get copyWith =>
      __$CancelTransactionSuccessCopyWithImpl<_CancelTransactionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return cancelTransactionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (cancelTransactionSuccess != null) {
      return cancelTransactionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return cancelTransactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (cancelTransactionSuccess != null) {
      return cancelTransactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _CancelTransactionSuccess implements TransactionState {
  const factory _CancelTransactionSuccess(TransactionMobileResponse response) =
      _$_CancelTransactionSuccess;

  TransactionMobileResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CancelTransactionSuccessCopyWith<_CancelTransactionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptTransactionSuccessCopyWith<$Res> {
  factory _$AcceptTransactionSuccessCopyWith(_AcceptTransactionSuccess value,
          $Res Function(_AcceptTransactionSuccess) then) =
      __$AcceptTransactionSuccessCopyWithImpl<$Res>;
  $Res call({StatusResponse response});

  $StatusResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$AcceptTransactionSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$AcceptTransactionSuccessCopyWith<$Res> {
  __$AcceptTransactionSuccessCopyWithImpl(_AcceptTransactionSuccess _value,
      $Res Function(_AcceptTransactionSuccess) _then)
      : super(_value, (v) => _then(v as _AcceptTransactionSuccess));

  @override
  _AcceptTransactionSuccess get _value =>
      super._value as _AcceptTransactionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_AcceptTransactionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
    ));
  }

  @override
  $StatusResponseCopyWith<$Res> get response {
    return $StatusResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_AcceptTransactionSuccess implements _AcceptTransactionSuccess {
  const _$_AcceptTransactionSuccess(this.response);

  @override
  final StatusResponse response;

  @override
  String toString() {
    return 'TransactionState.acceptTransactionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AcceptTransactionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$AcceptTransactionSuccessCopyWith<_AcceptTransactionSuccess> get copyWith =>
      __$AcceptTransactionSuccessCopyWithImpl<_AcceptTransactionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(TransactionFailure error) loadFailure,
    required TResult Function(List<TransactionHistory> response)
        getTransactionHistorySuccess,
    required TResult Function(List<TransactionHistory> response)
        getOngoingTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        getTransactionSuccess,
    required TResult Function(TransactionMobileResponse response)
        cancelTransactionSuccess,
    required TResult Function(StatusResponse response) acceptTransactionSuccess,
  }) {
    return acceptTransactionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(TransactionFailure error)? loadFailure,
    TResult Function(List<TransactionHistory> response)?
        getTransactionHistorySuccess,
    TResult Function(List<TransactionHistory> response)?
        getOngoingTransactionSuccess,
    TResult Function(TransactionMobileResponse response)? getTransactionSuccess,
    TResult Function(TransactionMobileResponse response)?
        cancelTransactionSuccess,
    TResult Function(StatusResponse response)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (acceptTransactionSuccess != null) {
      return acceptTransactionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetTransactionHistorySuccess value)
        getTransactionHistorySuccess,
    required TResult Function(_GetOngoingTransactionSuccess value)
        getOngoingTransactionSuccess,
    required TResult Function(_GetTransactionSuccess value)
        getTransactionSuccess,
    required TResult Function(_CancelTransactionSuccess value)
        cancelTransactionSuccess,
    required TResult Function(_AcceptTransactionSuccess value)
        acceptTransactionSuccess,
  }) {
    return acceptTransactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetTransactionHistorySuccess value)?
        getTransactionHistorySuccess,
    TResult Function(_GetOngoingTransactionSuccess value)?
        getOngoingTransactionSuccess,
    TResult Function(_GetTransactionSuccess value)? getTransactionSuccess,
    TResult Function(_CancelTransactionSuccess value)? cancelTransactionSuccess,
    TResult Function(_AcceptTransactionSuccess value)? acceptTransactionSuccess,
    required TResult orElse(),
  }) {
    if (acceptTransactionSuccess != null) {
      return acceptTransactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _AcceptTransactionSuccess implements TransactionState {
  const factory _AcceptTransactionSuccess(StatusResponse response) =
      _$_AcceptTransactionSuccess;

  StatusResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AcceptTransactionSuccessCopyWith<_AcceptTransactionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
