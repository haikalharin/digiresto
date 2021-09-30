// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'address_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressMapEventTearOff {
  const _$AddressMapEventTearOff();

  _SaveAddress saveAddress(UserSaveAddressParam request) {
    return _SaveAddress(
      request,
    );
  }

  _GetGeoCode getGeoCode(GetGeoCodeParam request) {
    return _GetGeoCode(
      request,
    );
  }

  _SetActiveAddress setActiveAddress(UserAddress model) {
    return _SetActiveAddress(
      model,
    );
  }

  _ChangeAddress changeAddress() {
    return const _ChangeAddress();
  }
}

/// @nodoc
const $AddressMapEvent = _$AddressMapEventTearOff();

/// @nodoc
mixin _$AddressMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSaveAddressParam request) saveAddress,
    required TResult Function(GetGeoCodeParam request) getGeoCode,
    required TResult Function(UserAddress model) setActiveAddress,
    required TResult Function() changeAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSaveAddressParam request)? saveAddress,
    TResult Function(GetGeoCodeParam request)? getGeoCode,
    TResult Function(UserAddress model)? setActiveAddress,
    TResult Function()? changeAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAddress value) saveAddress,
    required TResult Function(_GetGeoCode value) getGeoCode,
    required TResult Function(_SetActiveAddress value) setActiveAddress,
    required TResult Function(_ChangeAddress value) changeAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAddress value)? saveAddress,
    TResult Function(_GetGeoCode value)? getGeoCode,
    TResult Function(_SetActiveAddress value)? setActiveAddress,
    TResult Function(_ChangeAddress value)? changeAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressMapEventCopyWith<$Res> {
  factory $AddressMapEventCopyWith(
          AddressMapEvent value, $Res Function(AddressMapEvent) then) =
      _$AddressMapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressMapEventCopyWithImpl<$Res>
    implements $AddressMapEventCopyWith<$Res> {
  _$AddressMapEventCopyWithImpl(this._value, this._then);

  final AddressMapEvent _value;
  // ignore: unused_field
  final $Res Function(AddressMapEvent) _then;
}

/// @nodoc
abstract class _$SaveAddressCopyWith<$Res> {
  factory _$SaveAddressCopyWith(
          _SaveAddress value, $Res Function(_SaveAddress) then) =
      __$SaveAddressCopyWithImpl<$Res>;
  $Res call({UserSaveAddressParam request});
}

/// @nodoc
class __$SaveAddressCopyWithImpl<$Res>
    extends _$AddressMapEventCopyWithImpl<$Res>
    implements _$SaveAddressCopyWith<$Res> {
  __$SaveAddressCopyWithImpl(
      _SaveAddress _value, $Res Function(_SaveAddress) _then)
      : super(_value, (v) => _then(v as _SaveAddress));

  @override
  _SaveAddress get _value => super._value as _SaveAddress;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_SaveAddress(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserSaveAddressParam,
    ));
  }
}

/// @nodoc

class _$_SaveAddress implements _SaveAddress {
  const _$_SaveAddress(this.request);

  @override
  final UserSaveAddressParam request;

  @override
  String toString() {
    return 'AddressMapEvent.saveAddress(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveAddress &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$SaveAddressCopyWith<_SaveAddress> get copyWith =>
      __$SaveAddressCopyWithImpl<_SaveAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSaveAddressParam request) saveAddress,
    required TResult Function(GetGeoCodeParam request) getGeoCode,
    required TResult Function(UserAddress model) setActiveAddress,
    required TResult Function() changeAddress,
  }) {
    return saveAddress(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSaveAddressParam request)? saveAddress,
    TResult Function(GetGeoCodeParam request)? getGeoCode,
    TResult Function(UserAddress model)? setActiveAddress,
    TResult Function()? changeAddress,
    required TResult orElse(),
  }) {
    if (saveAddress != null) {
      return saveAddress(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAddress value) saveAddress,
    required TResult Function(_GetGeoCode value) getGeoCode,
    required TResult Function(_SetActiveAddress value) setActiveAddress,
    required TResult Function(_ChangeAddress value) changeAddress,
  }) {
    return saveAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAddress value)? saveAddress,
    TResult Function(_GetGeoCode value)? getGeoCode,
    TResult Function(_SetActiveAddress value)? setActiveAddress,
    TResult Function(_ChangeAddress value)? changeAddress,
    required TResult orElse(),
  }) {
    if (saveAddress != null) {
      return saveAddress(this);
    }
    return orElse();
  }
}

abstract class _SaveAddress implements AddressMapEvent {
  const factory _SaveAddress(UserSaveAddressParam request) = _$_SaveAddress;

  UserSaveAddressParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveAddressCopyWith<_SaveAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGeoCodeCopyWith<$Res> {
  factory _$GetGeoCodeCopyWith(
          _GetGeoCode value, $Res Function(_GetGeoCode) then) =
      __$GetGeoCodeCopyWithImpl<$Res>;
  $Res call({GetGeoCodeParam request});
}

/// @nodoc
class __$GetGeoCodeCopyWithImpl<$Res>
    extends _$AddressMapEventCopyWithImpl<$Res>
    implements _$GetGeoCodeCopyWith<$Res> {
  __$GetGeoCodeCopyWithImpl(
      _GetGeoCode _value, $Res Function(_GetGeoCode) _then)
      : super(_value, (v) => _then(v as _GetGeoCode));

  @override
  _GetGeoCode get _value => super._value as _GetGeoCode;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetGeoCode(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetGeoCodeParam,
    ));
  }
}

/// @nodoc

class _$_GetGeoCode implements _GetGeoCode {
  const _$_GetGeoCode(this.request);

  @override
  final GetGeoCodeParam request;

  @override
  String toString() {
    return 'AddressMapEvent.getGeoCode(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetGeoCode &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetGeoCodeCopyWith<_GetGeoCode> get copyWith =>
      __$GetGeoCodeCopyWithImpl<_GetGeoCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSaveAddressParam request) saveAddress,
    required TResult Function(GetGeoCodeParam request) getGeoCode,
    required TResult Function(UserAddress model) setActiveAddress,
    required TResult Function() changeAddress,
  }) {
    return getGeoCode(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSaveAddressParam request)? saveAddress,
    TResult Function(GetGeoCodeParam request)? getGeoCode,
    TResult Function(UserAddress model)? setActiveAddress,
    TResult Function()? changeAddress,
    required TResult orElse(),
  }) {
    if (getGeoCode != null) {
      return getGeoCode(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAddress value) saveAddress,
    required TResult Function(_GetGeoCode value) getGeoCode,
    required TResult Function(_SetActiveAddress value) setActiveAddress,
    required TResult Function(_ChangeAddress value) changeAddress,
  }) {
    return getGeoCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAddress value)? saveAddress,
    TResult Function(_GetGeoCode value)? getGeoCode,
    TResult Function(_SetActiveAddress value)? setActiveAddress,
    TResult Function(_ChangeAddress value)? changeAddress,
    required TResult orElse(),
  }) {
    if (getGeoCode != null) {
      return getGeoCode(this);
    }
    return orElse();
  }
}

abstract class _GetGeoCode implements AddressMapEvent {
  const factory _GetGeoCode(GetGeoCodeParam request) = _$_GetGeoCode;

  GetGeoCodeParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetGeoCodeCopyWith<_GetGeoCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetActiveAddressCopyWith<$Res> {
  factory _$SetActiveAddressCopyWith(
          _SetActiveAddress value, $Res Function(_SetActiveAddress) then) =
      __$SetActiveAddressCopyWithImpl<$Res>;
  $Res call({UserAddress model});

  $UserAddressCopyWith<$Res> get model;
}

/// @nodoc
class __$SetActiveAddressCopyWithImpl<$Res>
    extends _$AddressMapEventCopyWithImpl<$Res>
    implements _$SetActiveAddressCopyWith<$Res> {
  __$SetActiveAddressCopyWithImpl(
      _SetActiveAddress _value, $Res Function(_SetActiveAddress) _then)
      : super(_value, (v) => _then(v as _SetActiveAddress));

  @override
  _SetActiveAddress get _value => super._value as _SetActiveAddress;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_SetActiveAddress(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserAddress,
    ));
  }

  @override
  $UserAddressCopyWith<$Res> get model {
    return $UserAddressCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_SetActiveAddress implements _SetActiveAddress {
  const _$_SetActiveAddress(this.model);

  @override
  final UserAddress model;

  @override
  String toString() {
    return 'AddressMapEvent.setActiveAddress(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetActiveAddress &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$SetActiveAddressCopyWith<_SetActiveAddress> get copyWith =>
      __$SetActiveAddressCopyWithImpl<_SetActiveAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSaveAddressParam request) saveAddress,
    required TResult Function(GetGeoCodeParam request) getGeoCode,
    required TResult Function(UserAddress model) setActiveAddress,
    required TResult Function() changeAddress,
  }) {
    return setActiveAddress(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSaveAddressParam request)? saveAddress,
    TResult Function(GetGeoCodeParam request)? getGeoCode,
    TResult Function(UserAddress model)? setActiveAddress,
    TResult Function()? changeAddress,
    required TResult orElse(),
  }) {
    if (setActiveAddress != null) {
      return setActiveAddress(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAddress value) saveAddress,
    required TResult Function(_GetGeoCode value) getGeoCode,
    required TResult Function(_SetActiveAddress value) setActiveAddress,
    required TResult Function(_ChangeAddress value) changeAddress,
  }) {
    return setActiveAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAddress value)? saveAddress,
    TResult Function(_GetGeoCode value)? getGeoCode,
    TResult Function(_SetActiveAddress value)? setActiveAddress,
    TResult Function(_ChangeAddress value)? changeAddress,
    required TResult orElse(),
  }) {
    if (setActiveAddress != null) {
      return setActiveAddress(this);
    }
    return orElse();
  }
}

abstract class _SetActiveAddress implements AddressMapEvent {
  const factory _SetActiveAddress(UserAddress model) = _$_SetActiveAddress;

  UserAddress get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetActiveAddressCopyWith<_SetActiveAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAddressCopyWith<$Res> {
  factory _$ChangeAddressCopyWith(
          _ChangeAddress value, $Res Function(_ChangeAddress) then) =
      __$ChangeAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeAddressCopyWithImpl<$Res>
    extends _$AddressMapEventCopyWithImpl<$Res>
    implements _$ChangeAddressCopyWith<$Res> {
  __$ChangeAddressCopyWithImpl(
      _ChangeAddress _value, $Res Function(_ChangeAddress) _then)
      : super(_value, (v) => _then(v as _ChangeAddress));

  @override
  _ChangeAddress get _value => super._value as _ChangeAddress;
}

/// @nodoc

class _$_ChangeAddress implements _ChangeAddress {
  const _$_ChangeAddress();

  @override
  String toString() {
    return 'AddressMapEvent.changeAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSaveAddressParam request) saveAddress,
    required TResult Function(GetGeoCodeParam request) getGeoCode,
    required TResult Function(UserAddress model) setActiveAddress,
    required TResult Function() changeAddress,
  }) {
    return changeAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSaveAddressParam request)? saveAddress,
    TResult Function(GetGeoCodeParam request)? getGeoCode,
    TResult Function(UserAddress model)? setActiveAddress,
    TResult Function()? changeAddress,
    required TResult orElse(),
  }) {
    if (changeAddress != null) {
      return changeAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAddress value) saveAddress,
    required TResult Function(_GetGeoCode value) getGeoCode,
    required TResult Function(_SetActiveAddress value) setActiveAddress,
    required TResult Function(_ChangeAddress value) changeAddress,
  }) {
    return changeAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAddress value)? saveAddress,
    TResult Function(_GetGeoCode value)? getGeoCode,
    TResult Function(_SetActiveAddress value)? setActiveAddress,
    TResult Function(_ChangeAddress value)? changeAddress,
    required TResult orElse(),
  }) {
    if (changeAddress != null) {
      return changeAddress(this);
    }
    return orElse();
  }
}

abstract class _ChangeAddress implements AddressMapEvent {
  const factory _ChangeAddress() = _$_ChangeAddress;
}

/// @nodoc
class _$AddressMapStateTearOff {
  const _$AddressMapStateTearOff();

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

  _SaveAddressSuccess saveAddressSuccess(UserAddAddress response) {
    return _SaveAddressSuccess(
      response,
    );
  }

  _SaveAddressFail saveAddressFail(String message) {
    return _SaveAddressFail(
      message,
    );
  }

  _GetGeoCodeSuccess getGeoCodeSuccess(Geocode response) {
    return _GetGeoCodeSuccess(
      response,
    );
  }

  _GetGeoCodeFail getGeoCodeFail(String message) {
    return _GetGeoCodeFail(
      message,
    );
  }

  _SetActiveAddressSuccess setActiveAddressSuccess(UserAddress response) {
    return _SetActiveAddressSuccess(
      response,
    );
  }

  _SetActiveAddressFail setActiveAddressFail(String message) {
    return _SetActiveAddressFail(
      message,
    );
  }
}

/// @nodoc
const $AddressMapState = _$AddressMapStateTearOff();

/// @nodoc
mixin _$AddressMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressMapStateCopyWith<$Res> {
  factory $AddressMapStateCopyWith(
          AddressMapState value, $Res Function(AddressMapState) then) =
      _$AddressMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressMapStateCopyWithImpl<$Res>
    implements $AddressMapStateCopyWith<$Res> {
  _$AddressMapStateCopyWithImpl(this._value, this._then);

  final AddressMapState _value;
  // ignore: unused_field
  final $Res Function(AddressMapState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddressMapStateCopyWithImpl<$Res>
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
    return 'AddressMapState.initial()';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
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
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddressMapState {
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
    extends _$AddressMapStateCopyWithImpl<$Res>
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
    return 'AddressMapState.loadInProgress()';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
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
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements AddressMapState {
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
    extends _$AddressMapStateCopyWithImpl<$Res>
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
    return 'AddressMapState.loadSuccess()';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
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
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AddressMapState {
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
    extends _$AddressMapStateCopyWithImpl<$Res>
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
    return 'AddressMapState.loadFailure()';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
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
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
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
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AddressMapState {
  const factory _LoadFailure() = _$_LoadFailure;
}

/// @nodoc
abstract class _$SaveAddressSuccessCopyWith<$Res> {
  factory _$SaveAddressSuccessCopyWith(
          _SaveAddressSuccess value, $Res Function(_SaveAddressSuccess) then) =
      __$SaveAddressSuccessCopyWithImpl<$Res>;
  $Res call({UserAddAddress response});
}

/// @nodoc
class __$SaveAddressSuccessCopyWithImpl<$Res>
    extends _$AddressMapStateCopyWithImpl<$Res>
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
              as UserAddAddress,
    ));
  }
}

/// @nodoc

class _$_SaveAddressSuccess implements _SaveAddressSuccess {
  const _$_SaveAddressSuccess(this.response);

  @override
  final UserAddAddress response;

  @override
  String toString() {
    return 'AddressMapState.saveAddressSuccess(response: $response)';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) {
    return saveAddressSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (saveAddressSuccess != null) {
      return saveAddressSuccess(response);
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) {
    return saveAddressSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (saveAddressSuccess != null) {
      return saveAddressSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveAddressSuccess implements AddressMapState {
  const factory _SaveAddressSuccess(UserAddAddress response) =
      _$_SaveAddressSuccess;

  UserAddAddress get response => throw _privateConstructorUsedError;
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
    extends _$AddressMapStateCopyWithImpl<$Res>
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
    return 'AddressMapState.saveAddressFail(message: $message)';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) {
    return saveAddressFail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (saveAddressFail != null) {
      return saveAddressFail(message);
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) {
    return saveAddressFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (saveAddressFail != null) {
      return saveAddressFail(this);
    }
    return orElse();
  }
}

abstract class _SaveAddressFail implements AddressMapState {
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
  $Res call({Geocode response});
}

/// @nodoc
class __$GetGeoCodeSuccessCopyWithImpl<$Res>
    extends _$AddressMapStateCopyWithImpl<$Res>
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
              as Geocode,
    ));
  }
}

/// @nodoc

class _$_GetGeoCodeSuccess implements _GetGeoCodeSuccess {
  const _$_GetGeoCodeSuccess(this.response);

  @override
  final Geocode response;

  @override
  String toString() {
    return 'AddressMapState.getGeoCodeSuccess(response: $response)';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) {
    return getGeoCodeSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (getGeoCodeSuccess != null) {
      return getGeoCodeSuccess(response);
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) {
    return getGeoCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (getGeoCodeSuccess != null) {
      return getGeoCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetGeoCodeSuccess implements AddressMapState {
  const factory _GetGeoCodeSuccess(Geocode response) = _$_GetGeoCodeSuccess;

  Geocode get response => throw _privateConstructorUsedError;
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
    extends _$AddressMapStateCopyWithImpl<$Res>
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
    return 'AddressMapState.getGeoCodeFail(message: $message)';
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
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) {
    return getGeoCodeFail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (getGeoCodeFail != null) {
      return getGeoCodeFail(message);
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) {
    return getGeoCodeFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (getGeoCodeFail != null) {
      return getGeoCodeFail(this);
    }
    return orElse();
  }
}

abstract class _GetGeoCodeFail implements AddressMapState {
  const factory _GetGeoCodeFail(String message) = _$_GetGeoCodeFail;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetGeoCodeFailCopyWith<_GetGeoCodeFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetActiveAddressSuccessCopyWith<$Res> {
  factory _$SetActiveAddressSuccessCopyWith(_SetActiveAddressSuccess value,
          $Res Function(_SetActiveAddressSuccess) then) =
      __$SetActiveAddressSuccessCopyWithImpl<$Res>;
  $Res call({UserAddress response});

  $UserAddressCopyWith<$Res> get response;
}

/// @nodoc
class __$SetActiveAddressSuccessCopyWithImpl<$Res>
    extends _$AddressMapStateCopyWithImpl<$Res>
    implements _$SetActiveAddressSuccessCopyWith<$Res> {
  __$SetActiveAddressSuccessCopyWithImpl(_SetActiveAddressSuccess _value,
      $Res Function(_SetActiveAddressSuccess) _then)
      : super(_value, (v) => _then(v as _SetActiveAddressSuccess));

  @override
  _SetActiveAddressSuccess get _value =>
      super._value as _SetActiveAddressSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_SetActiveAddressSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserAddress,
    ));
  }

  @override
  $UserAddressCopyWith<$Res> get response {
    return $UserAddressCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_SetActiveAddressSuccess implements _SetActiveAddressSuccess {
  const _$_SetActiveAddressSuccess(this.response);

  @override
  final UserAddress response;

  @override
  String toString() {
    return 'AddressMapState.setActiveAddressSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetActiveAddressSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$SetActiveAddressSuccessCopyWith<_SetActiveAddressSuccess> get copyWith =>
      __$SetActiveAddressSuccessCopyWithImpl<_SetActiveAddressSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) {
    return setActiveAddressSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (setActiveAddressSuccess != null) {
      return setActiveAddressSuccess(response);
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) {
    return setActiveAddressSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (setActiveAddressSuccess != null) {
      return setActiveAddressSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetActiveAddressSuccess implements AddressMapState {
  const factory _SetActiveAddressSuccess(UserAddress response) =
      _$_SetActiveAddressSuccess;

  UserAddress get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetActiveAddressSuccessCopyWith<_SetActiveAddressSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetActiveAddressFailCopyWith<$Res> {
  factory _$SetActiveAddressFailCopyWith(_SetActiveAddressFail value,
          $Res Function(_SetActiveAddressFail) then) =
      __$SetActiveAddressFailCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SetActiveAddressFailCopyWithImpl<$Res>
    extends _$AddressMapStateCopyWithImpl<$Res>
    implements _$SetActiveAddressFailCopyWith<$Res> {
  __$SetActiveAddressFailCopyWithImpl(
      _SetActiveAddressFail _value, $Res Function(_SetActiveAddressFail) _then)
      : super(_value, (v) => _then(v as _SetActiveAddressFail));

  @override
  _SetActiveAddressFail get _value => super._value as _SetActiveAddressFail;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SetActiveAddressFail(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetActiveAddressFail implements _SetActiveAddressFail {
  const _$_SetActiveAddressFail(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddressMapState.setActiveAddressFail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetActiveAddressFail &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SetActiveAddressFailCopyWith<_SetActiveAddressFail> get copyWith =>
      __$SetActiveAddressFailCopyWithImpl<_SetActiveAddressFail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(UserAddAddress response) saveAddressSuccess,
    required TResult Function(String message) saveAddressFail,
    required TResult Function(Geocode response) getGeoCodeSuccess,
    required TResult Function(String message) getGeoCodeFail,
    required TResult Function(UserAddress response) setActiveAddressSuccess,
    required TResult Function(String message) setActiveAddressFail,
  }) {
    return setActiveAddressFail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(UserAddAddress response)? saveAddressSuccess,
    TResult Function(String message)? saveAddressFail,
    TResult Function(Geocode response)? getGeoCodeSuccess,
    TResult Function(String message)? getGeoCodeFail,
    TResult Function(UserAddress response)? setActiveAddressSuccess,
    TResult Function(String message)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (setActiveAddressFail != null) {
      return setActiveAddressFail(message);
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
    required TResult Function(_SaveAddressSuccess value) saveAddressSuccess,
    required TResult Function(_SaveAddressFail value) saveAddressFail,
    required TResult Function(_GetGeoCodeSuccess value) getGeoCodeSuccess,
    required TResult Function(_GetGeoCodeFail value) getGeoCodeFail,
    required TResult Function(_SetActiveAddressSuccess value)
        setActiveAddressSuccess,
    required TResult Function(_SetActiveAddressFail value) setActiveAddressFail,
  }) {
    return setActiveAddressFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SaveAddressSuccess value)? saveAddressSuccess,
    TResult Function(_SaveAddressFail value)? saveAddressFail,
    TResult Function(_GetGeoCodeSuccess value)? getGeoCodeSuccess,
    TResult Function(_GetGeoCodeFail value)? getGeoCodeFail,
    TResult Function(_SetActiveAddressSuccess value)? setActiveAddressSuccess,
    TResult Function(_SetActiveAddressFail value)? setActiveAddressFail,
    required TResult orElse(),
  }) {
    if (setActiveAddressFail != null) {
      return setActiveAddressFail(this);
    }
    return orElse();
  }
}

abstract class _SetActiveAddressFail implements AddressMapState {
  const factory _SetActiveAddressFail(String message) = _$_SetActiveAddressFail;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetActiveAddressFailCopyWith<_SetActiveAddressFail> get copyWith =>
      throw _privateConstructorUsedError;
}
