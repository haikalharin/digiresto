// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'digi_locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DigiLocaleEventTearOff {
  const _$DigiLocaleEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UpdateLocale updateLocale({required Locale locale}) {
    return _UpdateLocale(
      locale: locale,
    );
  }
}

/// @nodoc
const $DigiLocaleEvent = _$DigiLocaleEventTearOff();

/// @nodoc
mixin _$DigiLocaleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) updateLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? updateLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateLocale value) updateLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateLocale value)? updateLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiLocaleEventCopyWith<$Res> {
  factory $DigiLocaleEventCopyWith(
          DigiLocaleEvent value, $Res Function(DigiLocaleEvent) then) =
      _$DigiLocaleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DigiLocaleEventCopyWithImpl<$Res>
    implements $DigiLocaleEventCopyWith<$Res> {
  _$DigiLocaleEventCopyWithImpl(this._value, this._then);

  final DigiLocaleEvent _value;
  // ignore: unused_field
  final $Res Function(DigiLocaleEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$DigiLocaleEventCopyWithImpl<$Res>
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
    return 'DigiLocaleEvent.started()';
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
    required TResult Function(Locale locale) updateLocale,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? updateLocale,
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
    required TResult Function(_UpdateLocale value) updateLocale,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateLocale value)? updateLocale,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DigiLocaleEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UpdateLocaleCopyWith<$Res> {
  factory _$UpdateLocaleCopyWith(
          _UpdateLocale value, $Res Function(_UpdateLocale) then) =
      __$UpdateLocaleCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class __$UpdateLocaleCopyWithImpl<$Res>
    extends _$DigiLocaleEventCopyWithImpl<$Res>
    implements _$UpdateLocaleCopyWith<$Res> {
  __$UpdateLocaleCopyWithImpl(
      _UpdateLocale _value, $Res Function(_UpdateLocale) _then)
      : super(_value, (v) => _then(v as _UpdateLocale));

  @override
  _UpdateLocale get _value => super._value as _UpdateLocale;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_UpdateLocale(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_UpdateLocale implements _UpdateLocale {
  const _$_UpdateLocale({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'DigiLocaleEvent.updateLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$UpdateLocaleCopyWith<_UpdateLocale> get copyWith =>
      __$UpdateLocaleCopyWithImpl<_UpdateLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) updateLocale,
  }) {
    return updateLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? updateLocale,
    required TResult orElse(),
  }) {
    if (updateLocale != null) {
      return updateLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateLocale value) updateLocale,
  }) {
    return updateLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateLocale value)? updateLocale,
    required TResult orElse(),
  }) {
    if (updateLocale != null) {
      return updateLocale(this);
    }
    return orElse();
  }
}

abstract class _UpdateLocale implements DigiLocaleEvent {
  const factory _UpdateLocale({required Locale locale}) = _$_UpdateLocale;

  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateLocaleCopyWith<_UpdateLocale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DigiLocaleStateTearOff {
  const _$DigiLocaleStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadLocale loadLocale({required Locale locale}) {
    return _LoadLocale(
      locale: locale,
    );
  }
}

/// @nodoc
const $DigiLocaleState = _$DigiLocaleStateTearOff();

/// @nodoc
mixin _$DigiLocaleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) loadLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? loadLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadLocale value) loadLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadLocale value)? loadLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiLocaleStateCopyWith<$Res> {
  factory $DigiLocaleStateCopyWith(
          DigiLocaleState value, $Res Function(DigiLocaleState) then) =
      _$DigiLocaleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DigiLocaleStateCopyWithImpl<$Res>
    implements $DigiLocaleStateCopyWith<$Res> {
  _$DigiLocaleStateCopyWithImpl(this._value, this._then);

  final DigiLocaleState _value;
  // ignore: unused_field
  final $Res Function(DigiLocaleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DigiLocaleStateCopyWithImpl<$Res>
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
    return 'DigiLocaleState.initial()';
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
    required TResult Function(Locale locale) loadLocale,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? loadLocale,
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
    required TResult Function(_LoadLocale value) loadLocale,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadLocale value)? loadLocale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DigiLocaleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadLocaleCopyWith<$Res> {
  factory _$LoadLocaleCopyWith(
          _LoadLocale value, $Res Function(_LoadLocale) then) =
      __$LoadLocaleCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class __$LoadLocaleCopyWithImpl<$Res>
    extends _$DigiLocaleStateCopyWithImpl<$Res>
    implements _$LoadLocaleCopyWith<$Res> {
  __$LoadLocaleCopyWithImpl(
      _LoadLocale _value, $Res Function(_LoadLocale) _then)
      : super(_value, (v) => _then(v as _LoadLocale));

  @override
  _LoadLocale get _value => super._value as _LoadLocale;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LoadLocale(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LoadLocale implements _LoadLocale {
  const _$_LoadLocale({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'DigiLocaleState.loadLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LoadLocaleCopyWith<_LoadLocale> get copyWith =>
      __$LoadLocaleCopyWithImpl<_LoadLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) loadLocale,
  }) {
    return loadLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? loadLocale,
    required TResult orElse(),
  }) {
    if (loadLocale != null) {
      return loadLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadLocale value) loadLocale,
  }) {
    return loadLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadLocale value)? loadLocale,
    required TResult orElse(),
  }) {
    if (loadLocale != null) {
      return loadLocale(this);
    }
    return orElse();
  }
}

abstract class _LoadLocale implements DigiLocaleState {
  const factory _LoadLocale({required Locale locale}) = _$_LoadLocale;

  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadLocaleCopyWith<_LoadLocale> get copyWith =>
      throw _privateConstructorUsedError;
}
