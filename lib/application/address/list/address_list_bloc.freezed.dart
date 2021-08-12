// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'address_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressListEventTearOff {
  const _$AddressListEventTearOff();

  _SetDefault setDefault(UserSetDefaultAddressParam request) {
    return _SetDefault(
      request,
    );
  }

  _RemoveAddress removeAddress(UserRemoveAddressParam request) {
    return _RemoveAddress(
      request,
    );
  }
}

/// @nodoc
const $AddressListEvent = _$AddressListEventTearOff();

/// @nodoc
mixin _$AddressListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSetDefaultAddressParam request) setDefault,
    required TResult Function(UserRemoveAddressParam request) removeAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSetDefaultAddressParam request)? setDefault,
    TResult Function(UserRemoveAddressParam request)? removeAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_RemoveAddress value) removeAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_RemoveAddress value)? removeAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressListEventCopyWith<$Res> {
  factory $AddressListEventCopyWith(
          AddressListEvent value, $Res Function(AddressListEvent) then) =
      _$AddressListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressListEventCopyWithImpl<$Res>
    implements $AddressListEventCopyWith<$Res> {
  _$AddressListEventCopyWithImpl(this._value, this._then);

  final AddressListEvent _value;
  // ignore: unused_field
  final $Res Function(AddressListEvent) _then;
}

/// @nodoc
abstract class _$SetDefaultCopyWith<$Res> {
  factory _$SetDefaultCopyWith(
          _SetDefault value, $Res Function(_SetDefault) then) =
      __$SetDefaultCopyWithImpl<$Res>;
  $Res call({UserSetDefaultAddressParam request});
}

/// @nodoc
class __$SetDefaultCopyWithImpl<$Res>
    extends _$AddressListEventCopyWithImpl<$Res>
    implements _$SetDefaultCopyWith<$Res> {
  __$SetDefaultCopyWithImpl(
      _SetDefault _value, $Res Function(_SetDefault) _then)
      : super(_value, (v) => _then(v as _SetDefault));

  @override
  _SetDefault get _value => super._value as _SetDefault;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_SetDefault(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserSetDefaultAddressParam,
    ));
  }
}

/// @nodoc

class _$_SetDefault implements _SetDefault {
  const _$_SetDefault(this.request);

  @override
  final UserSetDefaultAddressParam request;

  @override
  String toString() {
    return 'AddressListEvent.setDefault(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetDefault &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$SetDefaultCopyWith<_SetDefault> get copyWith =>
      __$SetDefaultCopyWithImpl<_SetDefault>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSetDefaultAddressParam request) setDefault,
    required TResult Function(UserRemoveAddressParam request) removeAddress,
  }) {
    return setDefault(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSetDefaultAddressParam request)? setDefault,
    TResult Function(UserRemoveAddressParam request)? removeAddress,
    required TResult orElse(),
  }) {
    if (setDefault != null) {
      return setDefault(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_RemoveAddress value) removeAddress,
  }) {
    return setDefault(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_RemoveAddress value)? removeAddress,
    required TResult orElse(),
  }) {
    if (setDefault != null) {
      return setDefault(this);
    }
    return orElse();
  }
}

abstract class _SetDefault implements AddressListEvent {
  const factory _SetDefault(UserSetDefaultAddressParam request) = _$_SetDefault;

  UserSetDefaultAddressParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetDefaultCopyWith<_SetDefault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveAddressCopyWith<$Res> {
  factory _$RemoveAddressCopyWith(
          _RemoveAddress value, $Res Function(_RemoveAddress) then) =
      __$RemoveAddressCopyWithImpl<$Res>;
  $Res call({UserRemoveAddressParam request});
}

/// @nodoc
class __$RemoveAddressCopyWithImpl<$Res>
    extends _$AddressListEventCopyWithImpl<$Res>
    implements _$RemoveAddressCopyWith<$Res> {
  __$RemoveAddressCopyWithImpl(
      _RemoveAddress _value, $Res Function(_RemoveAddress) _then)
      : super(_value, (v) => _then(v as _RemoveAddress));

  @override
  _RemoveAddress get _value => super._value as _RemoveAddress;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_RemoveAddress(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserRemoveAddressParam,
    ));
  }
}

/// @nodoc

class _$_RemoveAddress implements _RemoveAddress {
  const _$_RemoveAddress(this.request);

  @override
  final UserRemoveAddressParam request;

  @override
  String toString() {
    return 'AddressListEvent.removeAddress(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveAddress &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$RemoveAddressCopyWith<_RemoveAddress> get copyWith =>
      __$RemoveAddressCopyWithImpl<_RemoveAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSetDefaultAddressParam request) setDefault,
    required TResult Function(UserRemoveAddressParam request) removeAddress,
  }) {
    return removeAddress(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSetDefaultAddressParam request)? setDefault,
    TResult Function(UserRemoveAddressParam request)? removeAddress,
    required TResult orElse(),
  }) {
    if (removeAddress != null) {
      return removeAddress(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_RemoveAddress value) removeAddress,
  }) {
    return removeAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_RemoveAddress value)? removeAddress,
    required TResult orElse(),
  }) {
    if (removeAddress != null) {
      return removeAddress(this);
    }
    return orElse();
  }
}

abstract class _RemoveAddress implements AddressListEvent {
  const factory _RemoveAddress(UserRemoveAddressParam request) =
      _$_RemoveAddress;

  UserRemoveAddressParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveAddressCopyWith<_RemoveAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddressListStateTearOff {
  const _$AddressListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }

  _SaveAddressSuccess setDefaultSuccess(List<UserAddress> response) {
    return _SaveAddressSuccess(
      response,
    );
  }

  _SaveAddressFail setDefaultFail(String message) {
    return _SaveAddressFail(
      message,
    );
  }

  _GetGeoCodeSuccess removeAddressSuccess(UserRemoveAddress response) {
    return _GetGeoCodeSuccess(
      response,
    );
  }

  _GetGeoCodeFail removeAddressFail(String message) {
    return _GetGeoCodeFail(
      message,
    );
  }
}

/// @nodoc
const $AddressListState = _$AddressListStateTearOff();

/// @nodoc
mixin _$AddressListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressListStateCopyWith<$Res> {
  factory $AddressListStateCopyWith(
          AddressListState value, $Res Function(AddressListState) then) =
      _$AddressListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressListStateCopyWithImpl<$Res>
    implements $AddressListStateCopyWith<$Res> {
  _$AddressListStateCopyWithImpl(this._value, this._then);

  final AddressListState _value;
  // ignore: unused_field
  final $Res Function(AddressListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddressListStateCopyWithImpl<$Res>
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
    return 'AddressListState.initial()';
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
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddressListState {
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
    extends _$AddressListStateCopyWithImpl<$Res>
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
    return 'AddressListState.loadInProgress()';
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
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements AddressListState {
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
    extends _$AddressListStateCopyWithImpl<$Res>
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
    return 'AddressListState.loadSuccess()';
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
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AddressListState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AddressListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'AddressListState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AddressListState {
  const factory _LoadFailure() = _$_LoadFailure;
}

/// @nodoc
abstract class _$SaveAddressSuccessCopyWith<$Res> {
  factory _$SaveAddressSuccessCopyWith(
          _SaveAddressSuccess value, $Res Function(_SaveAddressSuccess) then) =
      __$SaveAddressSuccessCopyWithImpl<$Res>;
  $Res call({List<UserAddress> response});
}

/// @nodoc
class __$SaveAddressSuccessCopyWithImpl<$Res>
    extends _$AddressListStateCopyWithImpl<$Res>
    implements _$SaveAddressSuccessCopyWith<$Res> {
  __$SaveAddressSuccessCopyWithImpl(
      _SaveAddressSuccess _value, $Res Function(_SaveAddressSuccess) _then)
      : super(_value, (v) => _then(v as _SaveAddressSuccess));

  @override
  _SaveAddressSuccess get _value => super._value as _SaveAddressSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_SaveAddressSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
    ));
  }
}

/// @nodoc

class _$_SaveAddressSuccess implements _SaveAddressSuccess {
  const _$_SaveAddressSuccess(this.response);

  @override
  final List<UserAddress> response;

  @override
  String toString() {
    return 'AddressListState.setDefaultSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveAddressSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$SaveAddressSuccessCopyWith<_SaveAddressSuccess> get copyWith =>
      __$SaveAddressSuccessCopyWithImpl<_SaveAddressSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return setDefaultSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (setDefaultSuccess != null) {
      return setDefaultSuccess(response);
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
  }) {
    return setDefaultSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (setDefaultSuccess != null) {
      return setDefaultSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveAddressSuccess implements AddressListState {
  const factory _SaveAddressSuccess(List<UserAddress> response) =
      _$_SaveAddressSuccess;

  List<UserAddress> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveAddressSuccessCopyWith<_SaveAddressSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveAddressFailCopyWith<$Res> {
  factory _$SaveAddressFailCopyWith(
          _SaveAddressFail value, $Res Function(_SaveAddressFail) then) =
      __$SaveAddressFailCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SaveAddressFailCopyWithImpl<$Res>
    extends _$AddressListStateCopyWithImpl<$Res>
    implements _$SaveAddressFailCopyWith<$Res> {
  __$SaveAddressFailCopyWithImpl(
      _SaveAddressFail _value, $Res Function(_SaveAddressFail) _then)
      : super(_value, (v) => _then(v as _SaveAddressFail));

  @override
  _SaveAddressFail get _value => super._value as _SaveAddressFail;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SaveAddressFail(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveAddressFail implements _SaveAddressFail {
  const _$_SaveAddressFail(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddressListState.setDefaultFail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveAddressFail &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SaveAddressFailCopyWith<_SaveAddressFail> get copyWith =>
      __$SaveAddressFailCopyWithImpl<_SaveAddressFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return setDefaultFail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (setDefaultFail != null) {
      return setDefaultFail(message);
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
  }) {
    return setDefaultFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (setDefaultFail != null) {
      return setDefaultFail(this);
    }
    return orElse();
  }
}

abstract class _SaveAddressFail implements AddressListState {
  const factory _SaveAddressFail(String message) = _$_SaveAddressFail;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveAddressFailCopyWith<_SaveAddressFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGeoCodeSuccessCopyWith<$Res> {
  factory _$GetGeoCodeSuccessCopyWith(
          _GetGeoCodeSuccess value, $Res Function(_GetGeoCodeSuccess) then) =
      __$GetGeoCodeSuccessCopyWithImpl<$Res>;
  $Res call({UserRemoveAddress response});
}

/// @nodoc
class __$GetGeoCodeSuccessCopyWithImpl<$Res>
    extends _$AddressListStateCopyWithImpl<$Res>
    implements _$GetGeoCodeSuccessCopyWith<$Res> {
  __$GetGeoCodeSuccessCopyWithImpl(
      _GetGeoCodeSuccess _value, $Res Function(_GetGeoCodeSuccess) _then)
      : super(_value, (v) => _then(v as _GetGeoCodeSuccess));

  @override
  _GetGeoCodeSuccess get _value => super._value as _GetGeoCodeSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetGeoCodeSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserRemoveAddress,
    ));
  }
}

/// @nodoc

class _$_GetGeoCodeSuccess implements _GetGeoCodeSuccess {
  const _$_GetGeoCodeSuccess(this.response);

  @override
  final UserRemoveAddress response;

  @override
  String toString() {
    return 'AddressListState.removeAddressSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetGeoCodeSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetGeoCodeSuccessCopyWith<_GetGeoCodeSuccess> get copyWith =>
      __$GetGeoCodeSuccessCopyWithImpl<_GetGeoCodeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return removeAddressSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (removeAddressSuccess != null) {
      return removeAddressSuccess(response);
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
  }) {
    return removeAddressSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (removeAddressSuccess != null) {
      return removeAddressSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetGeoCodeSuccess implements AddressListState {
  const factory _GetGeoCodeSuccess(UserRemoveAddress response) =
      _$_GetGeoCodeSuccess;

  UserRemoveAddress get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetGeoCodeSuccessCopyWith<_GetGeoCodeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGeoCodeFailCopyWith<$Res> {
  factory _$GetGeoCodeFailCopyWith(
          _GetGeoCodeFail value, $Res Function(_GetGeoCodeFail) then) =
      __$GetGeoCodeFailCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$GetGeoCodeFailCopyWithImpl<$Res>
    extends _$AddressListStateCopyWithImpl<$Res>
    implements _$GetGeoCodeFailCopyWith<$Res> {
  __$GetGeoCodeFailCopyWithImpl(
      _GetGeoCodeFail _value, $Res Function(_GetGeoCodeFail) _then)
      : super(_value, (v) => _then(v as _GetGeoCodeFail));

  @override
  _GetGeoCodeFail get _value => super._value as _GetGeoCodeFail;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_GetGeoCodeFail(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetGeoCodeFail implements _GetGeoCodeFail {
  const _$_GetGeoCodeFail(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddressListState.removeAddressFail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetGeoCodeFail &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$GetGeoCodeFailCopyWith<_GetGeoCodeFail> get copyWith =>
      __$GetGeoCodeFailCopyWithImpl<_GetGeoCodeFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<UserAddress> response) setDefaultSuccess,
    required TResult Function(String message) setDefaultFail,
    required TResult Function(UserRemoveAddress response) removeAddressSuccess,
    required TResult Function(String message) removeAddressFail,
  }) {
    return removeAddressFail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<UserAddress> response)? setDefaultSuccess,
    TResult Function(String message)? setDefaultFail,
    TResult Function(UserRemoveAddress response)? removeAddressSuccess,
    TResult Function(String message)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (removeAddressFail != null) {
      return removeAddressFail(message);
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
    required TResult Function(_SaveAddressSuccess value) setDefaultSuccess,
    required TResult Function(_SaveAddressFail value) setDefaultFail,
    required TResult Function(_GetGeoCodeSuccess value) removeAddressSuccess,
    required TResult Function(_GetGeoCodeFail value) removeAddressFail,
  }) {
    return removeAddressFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? setDefaultSuccess,
    TResult Function(_SaveAddressFail value)? setDefaultFail,
    TResult Function(_GetGeoCodeSuccess value)? removeAddressSuccess,
    TResult Function(_GetGeoCodeFail value)? removeAddressFail,
    required TResult orElse(),
  }) {
    if (removeAddressFail != null) {
      return removeAddressFail(this);
    }
    return orElse();
  }
}

abstract class _GetGeoCodeFail implements AddressListState {
  const factory _GetGeoCodeFail(String message) = _$_GetGeoCodeFail;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetGeoCodeFailCopyWith<_GetGeoCodeFail> get copyWith =>
      throw _privateConstructorUsedError;
}
