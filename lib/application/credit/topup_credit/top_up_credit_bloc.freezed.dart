// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_up_credit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopUpCreditEventTearOff {
  const _$TopUpCreditEventTearOff();

  _NominalChanged nominalChanged(String nominalStr) {
    return _NominalChanged(
      nominalStr,
    );
  }

  _TopUpSubmitted topUpSubmitted(TopUpSubCategoryParam param) {
    return _TopUpSubmitted(
      param,
    );
  }

  _ChangeDestination changeDestination(String destination) {
    return _ChangeDestination(
      destination,
    );
  }
}

/// @nodoc
const $TopUpCreditEvent = _$TopUpCreditEventTearOff();

/// @nodoc
mixin _$TopUpCreditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nominalStr) nominalChanged,
    required TResult Function(TopUpSubCategoryParam param) topUpSubmitted,
    required TResult Function(String destination) changeDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NominalChanged value) nominalChanged,
    required TResult Function(_TopUpSubmitted value) topUpSubmitted,
    required TResult Function(_ChangeDestination value) changeDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpCreditEventCopyWith<$Res> {
  factory $TopUpCreditEventCopyWith(
          TopUpCreditEvent value, $Res Function(TopUpCreditEvent) then) =
      _$TopUpCreditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopUpCreditEventCopyWithImpl<$Res>
    implements $TopUpCreditEventCopyWith<$Res> {
  _$TopUpCreditEventCopyWithImpl(this._value, this._then);

  final TopUpCreditEvent _value;
  // ignore: unused_field
  final $Res Function(TopUpCreditEvent) _then;
}

/// @nodoc
abstract class _$NominalChangedCopyWith<$Res> {
  factory _$NominalChangedCopyWith(
          _NominalChanged value, $Res Function(_NominalChanged) then) =
      __$NominalChangedCopyWithImpl<$Res>;
  $Res call({String nominalStr});
}

/// @nodoc
class __$NominalChangedCopyWithImpl<$Res>
    extends _$TopUpCreditEventCopyWithImpl<$Res>
    implements _$NominalChangedCopyWith<$Res> {
  __$NominalChangedCopyWithImpl(
      _NominalChanged _value, $Res Function(_NominalChanged) _then)
      : super(_value, (v) => _then(v as _NominalChanged));

  @override
  _NominalChanged get _value => super._value as _NominalChanged;

  @override
  $Res call({
    Object? nominalStr = freezed,
  }) {
    return _then(_NominalChanged(
      nominalStr == freezed
          ? _value.nominalStr
          : nominalStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NominalChanged implements _NominalChanged {
  const _$_NominalChanged(this.nominalStr);

  @override
  final String nominalStr;

  @override
  String toString() {
    return 'TopUpCreditEvent.nominalChanged(nominalStr: $nominalStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NominalChanged &&
            (identical(other.nominalStr, nominalStr) ||
                const DeepCollectionEquality()
                    .equals(other.nominalStr, nominalStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nominalStr);

  @JsonKey(ignore: true)
  @override
  _$NominalChangedCopyWith<_NominalChanged> get copyWith =>
      __$NominalChangedCopyWithImpl<_NominalChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nominalStr) nominalChanged,
    required TResult Function(TopUpSubCategoryParam param) topUpSubmitted,
    required TResult Function(String destination) changeDestination,
  }) {
    return nominalChanged(nominalStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
  }) {
    return nominalChanged?.call(nominalStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
    required TResult orElse(),
  }) {
    if (nominalChanged != null) {
      return nominalChanged(nominalStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NominalChanged value) nominalChanged,
    required TResult Function(_TopUpSubmitted value) topUpSubmitted,
    required TResult Function(_ChangeDestination value) changeDestination,
  }) {
    return nominalChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
  }) {
    return nominalChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
    required TResult orElse(),
  }) {
    if (nominalChanged != null) {
      return nominalChanged(this);
    }
    return orElse();
  }
}

abstract class _NominalChanged implements TopUpCreditEvent {
  const factory _NominalChanged(String nominalStr) = _$_NominalChanged;

  String get nominalStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NominalChangedCopyWith<_NominalChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TopUpSubmittedCopyWith<$Res> {
  factory _$TopUpSubmittedCopyWith(
          _TopUpSubmitted value, $Res Function(_TopUpSubmitted) then) =
      __$TopUpSubmittedCopyWithImpl<$Res>;
  $Res call({TopUpSubCategoryParam param});

  $TopUpSubCategoryParamCopyWith<$Res> get param;
}

/// @nodoc
class __$TopUpSubmittedCopyWithImpl<$Res>
    extends _$TopUpCreditEventCopyWithImpl<$Res>
    implements _$TopUpSubmittedCopyWith<$Res> {
  __$TopUpSubmittedCopyWithImpl(
      _TopUpSubmitted _value, $Res Function(_TopUpSubmitted) _then)
      : super(_value, (v) => _then(v as _TopUpSubmitted));

  @override
  _TopUpSubmitted get _value => super._value as _TopUpSubmitted;

  @override
  $Res call({
    Object? param = freezed,
  }) {
    return _then(_TopUpSubmitted(
      param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as TopUpSubCategoryParam,
    ));
  }

  @override
  $TopUpSubCategoryParamCopyWith<$Res> get param {
    return $TopUpSubCategoryParamCopyWith<$Res>(_value.param, (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc

class _$_TopUpSubmitted implements _TopUpSubmitted {
  const _$_TopUpSubmitted(this.param);

  @override
  final TopUpSubCategoryParam param;

  @override
  String toString() {
    return 'TopUpCreditEvent.topUpSubmitted(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopUpSubmitted &&
            (identical(other.param, param) ||
                const DeepCollectionEquality().equals(other.param, param)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(param);

  @JsonKey(ignore: true)
  @override
  _$TopUpSubmittedCopyWith<_TopUpSubmitted> get copyWith =>
      __$TopUpSubmittedCopyWithImpl<_TopUpSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nominalStr) nominalChanged,
    required TResult Function(TopUpSubCategoryParam param) topUpSubmitted,
    required TResult Function(String destination) changeDestination,
  }) {
    return topUpSubmitted(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
  }) {
    return topUpSubmitted?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
    required TResult orElse(),
  }) {
    if (topUpSubmitted != null) {
      return topUpSubmitted(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NominalChanged value) nominalChanged,
    required TResult Function(_TopUpSubmitted value) topUpSubmitted,
    required TResult Function(_ChangeDestination value) changeDestination,
  }) {
    return topUpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
  }) {
    return topUpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
    required TResult orElse(),
  }) {
    if (topUpSubmitted != null) {
      return topUpSubmitted(this);
    }
    return orElse();
  }
}

abstract class _TopUpSubmitted implements TopUpCreditEvent {
  const factory _TopUpSubmitted(TopUpSubCategoryParam param) =
      _$_TopUpSubmitted;

  TopUpSubCategoryParam get param => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TopUpSubmittedCopyWith<_TopUpSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeDestinationCopyWith<$Res> {
  factory _$ChangeDestinationCopyWith(
          _ChangeDestination value, $Res Function(_ChangeDestination) then) =
      __$ChangeDestinationCopyWithImpl<$Res>;
  $Res call({String destination});
}

/// @nodoc
class __$ChangeDestinationCopyWithImpl<$Res>
    extends _$TopUpCreditEventCopyWithImpl<$Res>
    implements _$ChangeDestinationCopyWith<$Res> {
  __$ChangeDestinationCopyWithImpl(
      _ChangeDestination _value, $Res Function(_ChangeDestination) _then)
      : super(_value, (v) => _then(v as _ChangeDestination));

  @override
  _ChangeDestination get _value => super._value as _ChangeDestination;

  @override
  $Res call({
    Object? destination = freezed,
  }) {
    return _then(_ChangeDestination(
      destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeDestination implements _ChangeDestination {
  const _$_ChangeDestination(this.destination);

  @override
  final String destination;

  @override
  String toString() {
    return 'TopUpCreditEvent.changeDestination(destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDestination &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(destination);

  @JsonKey(ignore: true)
  @override
  _$ChangeDestinationCopyWith<_ChangeDestination> get copyWith =>
      __$ChangeDestinationCopyWithImpl<_ChangeDestination>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nominalStr) nominalChanged,
    required TResult Function(TopUpSubCategoryParam param) topUpSubmitted,
    required TResult Function(String destination) changeDestination,
  }) {
    return changeDestination(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
  }) {
    return changeDestination?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nominalStr)? nominalChanged,
    TResult Function(TopUpSubCategoryParam param)? topUpSubmitted,
    TResult Function(String destination)? changeDestination,
    required TResult orElse(),
  }) {
    if (changeDestination != null) {
      return changeDestination(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NominalChanged value) nominalChanged,
    required TResult Function(_TopUpSubmitted value) topUpSubmitted,
    required TResult Function(_ChangeDestination value) changeDestination,
  }) {
    return changeDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
  }) {
    return changeDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NominalChanged value)? nominalChanged,
    TResult Function(_TopUpSubmitted value)? topUpSubmitted,
    TResult Function(_ChangeDestination value)? changeDestination,
    required TResult orElse(),
  }) {
    if (changeDestination != null) {
      return changeDestination(this);
    }
    return orElse();
  }
}

abstract class _ChangeDestination implements TopUpCreditEvent {
  const factory _ChangeDestination(String destination) = _$_ChangeDestination;

  String get destination => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDestinationCopyWith<_ChangeDestination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TopUpCreditStateTearOff {
  const _$TopUpCreditStateTearOff();

  _TopUpCreditState call(
      {required Nominal nominal,
      required bool showError,
      required bool isSubmitting,
      required String destination,
      required Option<Either<CreditFailure, TopUpVADetails>>
          topUpVAfailureOrSuccess,
      required Option<Either<CreditFailure, TopUpBankDetails>>
          topUpBankfailureOrSuccess}) {
    return _TopUpCreditState(
      nominal: nominal,
      showError: showError,
      isSubmitting: isSubmitting,
      destination: destination,
      topUpVAfailureOrSuccess: topUpVAfailureOrSuccess,
      topUpBankfailureOrSuccess: topUpBankfailureOrSuccess,
    );
  }
}

/// @nodoc
const $TopUpCreditState = _$TopUpCreditStateTearOff();

/// @nodoc
mixin _$TopUpCreditState {
  Nominal get nominal => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  Option<Either<CreditFailure, TopUpVADetails>> get topUpVAfailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<CreditFailure, TopUpBankDetails>>
      get topUpBankfailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopUpCreditStateCopyWith<TopUpCreditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpCreditStateCopyWith<$Res> {
  factory $TopUpCreditStateCopyWith(
          TopUpCreditState value, $Res Function(TopUpCreditState) then) =
      _$TopUpCreditStateCopyWithImpl<$Res>;
  $Res call(
      {Nominal nominal,
      bool showError,
      bool isSubmitting,
      String destination,
      Option<Either<CreditFailure, TopUpVADetails>> topUpVAfailureOrSuccess,
      Option<Either<CreditFailure, TopUpBankDetails>>
          topUpBankfailureOrSuccess});
}

/// @nodoc
class _$TopUpCreditStateCopyWithImpl<$Res>
    implements $TopUpCreditStateCopyWith<$Res> {
  _$TopUpCreditStateCopyWithImpl(this._value, this._then);

  final TopUpCreditState _value;
  // ignore: unused_field
  final $Res Function(TopUpCreditState) _then;

  @override
  $Res call({
    Object? nominal = freezed,
    Object? showError = freezed,
    Object? isSubmitting = freezed,
    Object? destination = freezed,
    Object? topUpVAfailureOrSuccess = freezed,
    Object? topUpBankfailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      nominal: nominal == freezed
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as Nominal,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      topUpVAfailureOrSuccess: topUpVAfailureOrSuccess == freezed
          ? _value.topUpVAfailureOrSuccess
          : topUpVAfailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, TopUpVADetails>>,
      topUpBankfailureOrSuccess: topUpBankfailureOrSuccess == freezed
          ? _value.topUpBankfailureOrSuccess
          : topUpBankfailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, TopUpBankDetails>>,
    ));
  }
}

/// @nodoc
abstract class _$TopUpCreditStateCopyWith<$Res>
    implements $TopUpCreditStateCopyWith<$Res> {
  factory _$TopUpCreditStateCopyWith(
          _TopUpCreditState value, $Res Function(_TopUpCreditState) then) =
      __$TopUpCreditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Nominal nominal,
      bool showError,
      bool isSubmitting,
      String destination,
      Option<Either<CreditFailure, TopUpVADetails>> topUpVAfailureOrSuccess,
      Option<Either<CreditFailure, TopUpBankDetails>>
          topUpBankfailureOrSuccess});
}

/// @nodoc
class __$TopUpCreditStateCopyWithImpl<$Res>
    extends _$TopUpCreditStateCopyWithImpl<$Res>
    implements _$TopUpCreditStateCopyWith<$Res> {
  __$TopUpCreditStateCopyWithImpl(
      _TopUpCreditState _value, $Res Function(_TopUpCreditState) _then)
      : super(_value, (v) => _then(v as _TopUpCreditState));

  @override
  _TopUpCreditState get _value => super._value as _TopUpCreditState;

  @override
  $Res call({
    Object? nominal = freezed,
    Object? showError = freezed,
    Object? isSubmitting = freezed,
    Object? destination = freezed,
    Object? topUpVAfailureOrSuccess = freezed,
    Object? topUpBankfailureOrSuccess = freezed,
  }) {
    return _then(_TopUpCreditState(
      nominal: nominal == freezed
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as Nominal,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      topUpVAfailureOrSuccess: topUpVAfailureOrSuccess == freezed
          ? _value.topUpVAfailureOrSuccess
          : topUpVAfailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, TopUpVADetails>>,
      topUpBankfailureOrSuccess: topUpBankfailureOrSuccess == freezed
          ? _value.topUpBankfailureOrSuccess
          : topUpBankfailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CreditFailure, TopUpBankDetails>>,
    ));
  }
}

/// @nodoc

class _$_TopUpCreditState implements _TopUpCreditState {
  const _$_TopUpCreditState(
      {required this.nominal,
      required this.showError,
      required this.isSubmitting,
      required this.destination,
      required this.topUpVAfailureOrSuccess,
      required this.topUpBankfailureOrSuccess});

  @override
  final Nominal nominal;
  @override
  final bool showError;
  @override
  final bool isSubmitting;
  @override
  final String destination;
  @override
  final Option<Either<CreditFailure, TopUpVADetails>> topUpVAfailureOrSuccess;
  @override
  final Option<Either<CreditFailure, TopUpBankDetails>>
      topUpBankfailureOrSuccess;

  @override
  String toString() {
    return 'TopUpCreditState(nominal: $nominal, showError: $showError, isSubmitting: $isSubmitting, destination: $destination, topUpVAfailureOrSuccess: $topUpVAfailureOrSuccess, topUpBankfailureOrSuccess: $topUpBankfailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopUpCreditState &&
            (identical(other.nominal, nominal) ||
                const DeepCollectionEquality()
                    .equals(other.nominal, nominal)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(
                    other.topUpVAfailureOrSuccess, topUpVAfailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.topUpVAfailureOrSuccess, topUpVAfailureOrSuccess)) &&
            (identical(other.topUpBankfailureOrSuccess,
                    topUpBankfailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.topUpBankfailureOrSuccess,
                    topUpBankfailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nominal) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(topUpVAfailureOrSuccess) ^
      const DeepCollectionEquality().hash(topUpBankfailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$TopUpCreditStateCopyWith<_TopUpCreditState> get copyWith =>
      __$TopUpCreditStateCopyWithImpl<_TopUpCreditState>(this, _$identity);
}

abstract class _TopUpCreditState implements TopUpCreditState {
  const factory _TopUpCreditState(
      {required Nominal nominal,
      required bool showError,
      required bool isSubmitting,
      required String destination,
      required Option<Either<CreditFailure, TopUpVADetails>>
          topUpVAfailureOrSuccess,
      required Option<Either<CreditFailure, TopUpBankDetails>>
          topUpBankfailureOrSuccess}) = _$_TopUpCreditState;

  @override
  Nominal get nominal => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  String get destination => throw _privateConstructorUsedError;
  @override
  Option<Either<CreditFailure, TopUpVADetails>> get topUpVAfailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CreditFailure, TopUpBankDetails>>
      get topUpBankfailureOrSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopUpCreditStateCopyWith<_TopUpCreditState> get copyWith =>
      throw _privateConstructorUsedError;
}
