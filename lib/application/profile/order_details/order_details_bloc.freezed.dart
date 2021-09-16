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

  _DoneTransaction doneTransaction(String receiptCode) {
    return _DoneTransaction(
      receiptCode,
    );
  }

  _CancelPageOpen cancelPageOpen(String receiptCode) {
    return _CancelPageOpen(
      receiptCode,
    );
  }

  _CancelSubmitted cancelSubmitted(
      {required String receiptCode,
      required String reason,
      required IList<String> reasonList}) {
    return _CancelSubmitted(
      receiptCode: receiptCode,
      reason: reason,
      reasonList: reasonList,
    );
  }

  _RatingReviewSubmitted ratingReviewSubmitted(
      {required String receiptCode,
      required int rating,
      required String review}) {
    return _RatingReviewSubmitted(
      receiptCode: receiptCode,
      rating: rating,
      review: review,
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
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
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
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) {
    return started(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
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
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
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
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) {
    return refresh(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
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
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
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
abstract class _$DoneTransactionCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$DoneTransactionCopyWith(
          _DoneTransaction value, $Res Function(_DoneTransaction) then) =
      __$DoneTransactionCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode});
}

/// @nodoc
class __$DoneTransactionCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res>
    implements _$DoneTransactionCopyWith<$Res> {
  __$DoneTransactionCopyWithImpl(
      _DoneTransaction _value, $Res Function(_DoneTransaction) _then)
      : super(_value, (v) => _then(v as _DoneTransaction));

  @override
  _DoneTransaction get _value => super._value as _DoneTransaction;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_DoneTransaction(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DoneTransaction implements _DoneTransaction {
  const _$_DoneTransaction(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'OrderDetailsEvent.doneTransaction(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DoneTransaction &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$DoneTransactionCopyWith<_DoneTransaction> get copyWith =>
      __$DoneTransactionCopyWithImpl<_DoneTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) {
    return doneTransaction(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (doneTransaction != null) {
      return doneTransaction(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) {
    return doneTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (doneTransaction != null) {
      return doneTransaction(this);
    }
    return orElse();
  }
}

abstract class _DoneTransaction implements OrderDetailsEvent {
  const factory _DoneTransaction(String receiptCode) = _$_DoneTransaction;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DoneTransactionCopyWith<_DoneTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelPageOpenCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$CancelPageOpenCopyWith(
          _CancelPageOpen value, $Res Function(_CancelPageOpen) then) =
      __$CancelPageOpenCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode});
}

/// @nodoc
class __$CancelPageOpenCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res>
    implements _$CancelPageOpenCopyWith<$Res> {
  __$CancelPageOpenCopyWithImpl(
      _CancelPageOpen _value, $Res Function(_CancelPageOpen) _then)
      : super(_value, (v) => _then(v as _CancelPageOpen));

  @override
  _CancelPageOpen get _value => super._value as _CancelPageOpen;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_CancelPageOpen(
      receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CancelPageOpen implements _CancelPageOpen {
  const _$_CancelPageOpen(this.receiptCode);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'OrderDetailsEvent.cancelPageOpen(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelPageOpen &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$CancelPageOpenCopyWith<_CancelPageOpen> get copyWith =>
      __$CancelPageOpenCopyWithImpl<_CancelPageOpen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) {
    return cancelPageOpen(receiptCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (cancelPageOpen != null) {
      return cancelPageOpen(receiptCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) {
    return cancelPageOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (cancelPageOpen != null) {
      return cancelPageOpen(this);
    }
    return orElse();
  }
}

abstract class _CancelPageOpen implements OrderDetailsEvent {
  const factory _CancelPageOpen(String receiptCode) = _$_CancelPageOpen;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CancelPageOpenCopyWith<_CancelPageOpen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelSubmittedCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$CancelSubmittedCopyWith(
          _CancelSubmitted value, $Res Function(_CancelSubmitted) then) =
      __$CancelSubmittedCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode, String reason, IList<String> reasonList});
}

/// @nodoc
class __$CancelSubmittedCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res>
    implements _$CancelSubmittedCopyWith<$Res> {
  __$CancelSubmittedCopyWithImpl(
      _CancelSubmitted _value, $Res Function(_CancelSubmitted) _then)
      : super(_value, (v) => _then(v as _CancelSubmitted));

  @override
  _CancelSubmitted get _value => super._value as _CancelSubmitted;

  @override
  $Res call({
    Object? receiptCode = freezed,
    Object? reason = freezed,
    Object? reasonList = freezed,
  }) {
    return _then(_CancelSubmitted(
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      reasonList: reasonList == freezed
          ? _value.reasonList
          : reasonList // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ));
  }
}

/// @nodoc

class _$_CancelSubmitted implements _CancelSubmitted {
  const _$_CancelSubmitted(
      {required this.receiptCode,
      required this.reason,
      required this.reasonList});

  @override
  final String receiptCode;
  @override
  final String reason;
  @override
  final IList<String> reasonList;

  @override
  String toString() {
    return 'OrderDetailsEvent.cancelSubmitted(receiptCode: $receiptCode, reason: $reason, reasonList: $reasonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelSubmitted &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.reasonList, reasonList) ||
                const DeepCollectionEquality()
                    .equals(other.reasonList, reasonList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(reasonList);

  @JsonKey(ignore: true)
  @override
  _$CancelSubmittedCopyWith<_CancelSubmitted> get copyWith =>
      __$CancelSubmittedCopyWithImpl<_CancelSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) {
    return cancelSubmitted(receiptCode, reason, reasonList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (cancelSubmitted != null) {
      return cancelSubmitted(receiptCode, reason, reasonList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) {
    return cancelSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (cancelSubmitted != null) {
      return cancelSubmitted(this);
    }
    return orElse();
  }
}

abstract class _CancelSubmitted implements OrderDetailsEvent {
  const factory _CancelSubmitted(
      {required String receiptCode,
      required String reason,
      required IList<String> reasonList}) = _$_CancelSubmitted;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  IList<String> get reasonList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CancelSubmittedCopyWith<_CancelSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RatingReviewSubmittedCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$RatingReviewSubmittedCopyWith(_RatingReviewSubmitted value,
          $Res Function(_RatingReviewSubmitted) then) =
      __$RatingReviewSubmittedCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode, int rating, String review});
}

/// @nodoc
class __$RatingReviewSubmittedCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res>
    implements _$RatingReviewSubmittedCopyWith<$Res> {
  __$RatingReviewSubmittedCopyWithImpl(_RatingReviewSubmitted _value,
      $Res Function(_RatingReviewSubmitted) _then)
      : super(_value, (v) => _then(v as _RatingReviewSubmitted));

  @override
  _RatingReviewSubmitted get _value => super._value as _RatingReviewSubmitted;

  @override
  $Res call({
    Object? receiptCode = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_RatingReviewSubmitted(
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RatingReviewSubmitted implements _RatingReviewSubmitted {
  const _$_RatingReviewSubmitted(
      {required this.receiptCode, required this.rating, required this.review});

  @override
  final String receiptCode;
  @override
  final int rating;
  @override
  final String review;

  @override
  String toString() {
    return 'OrderDetailsEvent.ratingReviewSubmitted(receiptCode: $receiptCode, rating: $rating, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RatingReviewSubmitted &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receiptCode) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(review);

  @JsonKey(ignore: true)
  @override
  _$RatingReviewSubmittedCopyWith<_RatingReviewSubmitted> get copyWith =>
      __$RatingReviewSubmittedCopyWithImpl<_RatingReviewSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiptCode) started,
    required TResult Function(String receiptCode) refresh,
    required TResult Function(String receiptCode) doneTransaction,
    required TResult Function(String receiptCode) cancelPageOpen,
    required TResult Function(
            String receiptCode, String reason, IList<String> reasonList)
        cancelSubmitted,
    required TResult Function(String receiptCode, int rating, String review)
        ratingReviewSubmitted,
  }) {
    return ratingReviewSubmitted(receiptCode, rating, review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiptCode)? started,
    TResult Function(String receiptCode)? refresh,
    TResult Function(String receiptCode)? doneTransaction,
    TResult Function(String receiptCode)? cancelPageOpen,
    TResult Function(
            String receiptCode, String reason, IList<String> reasonList)?
        cancelSubmitted,
    TResult Function(String receiptCode, int rating, String review)?
        ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (ratingReviewSubmitted != null) {
      return ratingReviewSubmitted(receiptCode, rating, review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_DoneTransaction value) doneTransaction,
    required TResult Function(_CancelPageOpen value) cancelPageOpen,
    required TResult Function(_CancelSubmitted value) cancelSubmitted,
    required TResult Function(_RatingReviewSubmitted value)
        ratingReviewSubmitted,
  }) {
    return ratingReviewSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_DoneTransaction value)? doneTransaction,
    TResult Function(_CancelPageOpen value)? cancelPageOpen,
    TResult Function(_CancelSubmitted value)? cancelSubmitted,
    TResult Function(_RatingReviewSubmitted value)? ratingReviewSubmitted,
    required TResult orElse(),
  }) {
    if (ratingReviewSubmitted != null) {
      return ratingReviewSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RatingReviewSubmitted implements OrderDetailsEvent {
  const factory _RatingReviewSubmitted(
      {required String receiptCode,
      required int rating,
      required String review}) = _$_RatingReviewSubmitted;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RatingReviewSubmittedCopyWith<_RatingReviewSubmitted> get copyWith =>
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

  _LoadSuccess loadSuccess(
      {required OrderHistoryDetails orderHistoryDetails,
      required Option<Unit> optionSubmitRating}) {
    return _LoadSuccess(
      orderHistoryDetails: orderHistoryDetails,
      optionSubmitRating: optionSubmitRating,
    );
  }

  _LoadFailure loadFailure({required ProfileFailure failure}) {
    return _LoadFailure(
      failure: failure,
    );
  }

  _LoadCancelPage loadCancelPage(
      {required IList<String> cancelReasons,
      required bool isSubmitting,
      required Option<Unit> submitOption}) {
    return _LoadCancelPage(
      cancelReasons: cancelReasons,
      isSubmitting: isSubmitting,
      submitOption: submitOption,
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
    required TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
    required TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)
        loadCancelPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)?
        loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)?
        loadCancelPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadCancelPage value) loadCancelPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadCancelPage value)? loadCancelPage,
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
    required TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
    required TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)
        loadCancelPage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)?
        loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)?
        loadCancelPage,
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
    required TResult Function(_LoadCancelPage value) loadCancelPage,
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
    TResult Function(_LoadCancelPage value)? loadCancelPage,
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
    required TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
    required TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)
        loadCancelPage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)?
        loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)?
        loadCancelPage,
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
    required TResult Function(_LoadCancelPage value) loadCancelPage,
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
    TResult Function(_LoadCancelPage value)? loadCancelPage,
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
  $Res call(
      {OrderHistoryDetails orderHistoryDetails,
      Option<Unit> optionSubmitRating});

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
    Object? optionSubmitRating = freezed,
  }) {
    return _then(_LoadSuccess(
      orderHistoryDetails: orderHistoryDetails == freezed
          ? _value.orderHistoryDetails
          : orderHistoryDetails // ignore: cast_nullable_to_non_nullable
              as OrderHistoryDetails,
      optionSubmitRating: optionSubmitRating == freezed
          ? _value.optionSubmitRating
          : optionSubmitRating // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
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
  const _$_LoadSuccess(
      {required this.orderHistoryDetails, required this.optionSubmitRating});

  @override
  final OrderHistoryDetails orderHistoryDetails;
  @override
  final Option<Unit> optionSubmitRating;

  @override
  String toString() {
    return 'OrderDetailsState.loadSuccess(orderHistoryDetails: $orderHistoryDetails, optionSubmitRating: $optionSubmitRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.orderHistoryDetails, orderHistoryDetails) ||
                const DeepCollectionEquality()
                    .equals(other.orderHistoryDetails, orderHistoryDetails)) &&
            (identical(other.optionSubmitRating, optionSubmitRating) ||
                const DeepCollectionEquality()
                    .equals(other.optionSubmitRating, optionSubmitRating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderHistoryDetails) ^
      const DeepCollectionEquality().hash(optionSubmitRating);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
    required TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)
        loadCancelPage,
  }) {
    return loadSuccess(orderHistoryDetails, optionSubmitRating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)?
        loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)?
        loadCancelPage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(orderHistoryDetails, optionSubmitRating);
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
    required TResult Function(_LoadCancelPage value) loadCancelPage,
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
    TResult Function(_LoadCancelPage value)? loadCancelPage,
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
      {required OrderHistoryDetails orderHistoryDetails,
      required Option<Unit> optionSubmitRating}) = _$_LoadSuccess;

  OrderHistoryDetails get orderHistoryDetails =>
      throw _privateConstructorUsedError;
  Option<Unit> get optionSubmitRating => throw _privateConstructorUsedError;
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
    required TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
    required TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)
        loadCancelPage,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)?
        loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)?
        loadCancelPage,
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
    required TResult Function(_LoadCancelPage value) loadCancelPage,
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
    TResult Function(_LoadCancelPage value)? loadCancelPage,
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

/// @nodoc
abstract class _$LoadCancelPageCopyWith<$Res> {
  factory _$LoadCancelPageCopyWith(
          _LoadCancelPage value, $Res Function(_LoadCancelPage) then) =
      __$LoadCancelPageCopyWithImpl<$Res>;
  $Res call(
      {IList<String> cancelReasons,
      bool isSubmitting,
      Option<Unit> submitOption});
}

/// @nodoc
class __$LoadCancelPageCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res>
    implements _$LoadCancelPageCopyWith<$Res> {
  __$LoadCancelPageCopyWithImpl(
      _LoadCancelPage _value, $Res Function(_LoadCancelPage) _then)
      : super(_value, (v) => _then(v as _LoadCancelPage));

  @override
  _LoadCancelPage get _value => super._value as _LoadCancelPage;

  @override
  $Res call({
    Object? cancelReasons = freezed,
    Object? isSubmitting = freezed,
    Object? submitOption = freezed,
  }) {
    return _then(_LoadCancelPage(
      cancelReasons: cancelReasons == freezed
          ? _value.cancelReasons
          : cancelReasons // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitOption: submitOption == freezed
          ? _value.submitOption
          : submitOption // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
    ));
  }
}

/// @nodoc

class _$_LoadCancelPage implements _LoadCancelPage {
  const _$_LoadCancelPage(
      {required this.cancelReasons,
      required this.isSubmitting,
      required this.submitOption});

  @override
  final IList<String> cancelReasons;
  @override
  final bool isSubmitting;
  @override
  final Option<Unit> submitOption;

  @override
  String toString() {
    return 'OrderDetailsState.loadCancelPage(cancelReasons: $cancelReasons, isSubmitting: $isSubmitting, submitOption: $submitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCancelPage &&
            (identical(other.cancelReasons, cancelReasons) ||
                const DeepCollectionEquality()
                    .equals(other.cancelReasons, cancelReasons)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitOption, submitOption) ||
                const DeepCollectionEquality()
                    .equals(other.submitOption, submitOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cancelReasons) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitOption);

  @JsonKey(ignore: true)
  @override
  _$LoadCancelPageCopyWith<_LoadCancelPage> get copyWith =>
      __$LoadCancelPageCopyWithImpl<_LoadCancelPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)
        loadSuccess,
    required TResult Function(ProfileFailure failure) loadFailure,
    required TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)
        loadCancelPage,
  }) {
    return loadCancelPage(cancelReasons, isSubmitting, submitOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderHistoryDetails orderHistoryDetails,
            Option<Unit> optionSubmitRating)?
        loadSuccess,
    TResult Function(ProfileFailure failure)? loadFailure,
    TResult Function(IList<String> cancelReasons, bool isSubmitting,
            Option<Unit> submitOption)?
        loadCancelPage,
    required TResult orElse(),
  }) {
    if (loadCancelPage != null) {
      return loadCancelPage(cancelReasons, isSubmitting, submitOption);
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
    required TResult Function(_LoadCancelPage value) loadCancelPage,
  }) {
    return loadCancelPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadCancelPage value)? loadCancelPage,
    required TResult orElse(),
  }) {
    if (loadCancelPage != null) {
      return loadCancelPage(this);
    }
    return orElse();
  }
}

abstract class _LoadCancelPage implements OrderDetailsState {
  const factory _LoadCancelPage(
      {required IList<String> cancelReasons,
      required bool isSubmitting,
      required Option<Unit> submitOption}) = _$_LoadCancelPage;

  IList<String> get cancelReasons => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Unit> get submitOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCancelPageCopyWith<_LoadCancelPage> get copyWith =>
      throw _privateConstructorUsedError;
}
