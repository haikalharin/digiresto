// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SkipIntro skipIntro() {
    return const _SkipIntro();
  }

  _SkipGuide skipGuide() {
    return const _SkipGuide();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() skipIntro,
    required TResult Function() skipGuide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SkipIntro value) skipIntro,
    required TResult Function(_SkipGuide value) skipGuide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
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
    return 'AppEvent.started()';
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
    required TResult Function() skipIntro,
    required TResult Function() skipGuide,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
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
    required TResult Function(_SkipIntro value) skipIntro,
    required TResult Function(_SkipGuide value) skipGuide,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SkipIntroCopyWith<$Res> {
  factory _$SkipIntroCopyWith(
          _SkipIntro value, $Res Function(_SkipIntro) then) =
      __$SkipIntroCopyWithImpl<$Res>;
}

/// @nodoc
class __$SkipIntroCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$SkipIntroCopyWith<$Res> {
  __$SkipIntroCopyWithImpl(_SkipIntro _value, $Res Function(_SkipIntro) _then)
      : super(_value, (v) => _then(v as _SkipIntro));

  @override
  _SkipIntro get _value => super._value as _SkipIntro;
}

/// @nodoc

class _$_SkipIntro implements _SkipIntro {
  const _$_SkipIntro();

  @override
  String toString() {
    return 'AppEvent.skipIntro()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SkipIntro);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() skipIntro,
    required TResult Function() skipGuide,
  }) {
    return skipIntro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
  }) {
    return skipIntro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
    required TResult orElse(),
  }) {
    if (skipIntro != null) {
      return skipIntro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SkipIntro value) skipIntro,
    required TResult Function(_SkipGuide value) skipGuide,
  }) {
    return skipIntro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
  }) {
    return skipIntro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
    required TResult orElse(),
  }) {
    if (skipIntro != null) {
      return skipIntro(this);
    }
    return orElse();
  }
}

abstract class _SkipIntro implements AppEvent {
  const factory _SkipIntro() = _$_SkipIntro;
}

/// @nodoc
abstract class _$SkipGuideCopyWith<$Res> {
  factory _$SkipGuideCopyWith(
          _SkipGuide value, $Res Function(_SkipGuide) then) =
      __$SkipGuideCopyWithImpl<$Res>;
}

/// @nodoc
class __$SkipGuideCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$SkipGuideCopyWith<$Res> {
  __$SkipGuideCopyWithImpl(_SkipGuide _value, $Res Function(_SkipGuide) _then)
      : super(_value, (v) => _then(v as _SkipGuide));

  @override
  _SkipGuide get _value => super._value as _SkipGuide;
}

/// @nodoc

class _$_SkipGuide implements _SkipGuide {
  const _$_SkipGuide();

  @override
  String toString() {
    return 'AppEvent.skipGuide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SkipGuide);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() skipIntro,
    required TResult Function() skipGuide,
  }) {
    return skipGuide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
  }) {
    return skipGuide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? skipIntro,
    TResult Function()? skipGuide,
    required TResult orElse(),
  }) {
    if (skipGuide != null) {
      return skipGuide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SkipIntro value) skipIntro,
    required TResult Function(_SkipGuide value) skipGuide,
  }) {
    return skipGuide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
  }) {
    return skipGuide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SkipIntro value)? skipIntro,
    TResult Function(_SkipGuide value)? skipGuide,
    required TResult orElse(),
  }) {
    if (skipGuide != null) {
      return skipGuide(this);
    }
    return orElse();
  }
}

abstract class _SkipGuide implements AppEvent {
  const factory _SkipGuide() = _$_SkipGuide;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {required Option<bool> preInstalled, required Option<bool> guideShown}) {
    return _AppState(
      preInstalled: preInstalled,
      guideShown: guideShown,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  Option<bool> get preInstalled => throw _privateConstructorUsedError;
  Option<bool> get guideShown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({Option<bool> preInstalled, Option<bool> guideShown});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? preInstalled = freezed,
    Object? guideShown = freezed,
  }) {
    return _then(_value.copyWith(
      preInstalled: preInstalled == freezed
          ? _value.preInstalled
          : preInstalled // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      guideShown: guideShown == freezed
          ? _value.guideShown
          : guideShown // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<bool> preInstalled, Option<bool> guideShown});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? preInstalled = freezed,
    Object? guideShown = freezed,
  }) {
    return _then(_AppState(
      preInstalled: preInstalled == freezed
          ? _value.preInstalled
          : preInstalled // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      guideShown: guideShown == freezed
          ? _value.guideShown
          : guideShown // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState({required this.preInstalled, required this.guideShown});

  @override
  final Option<bool> preInstalled;
  @override
  final Option<bool> guideShown;

  @override
  String toString() {
    return 'AppState(preInstalled: $preInstalled, guideShown: $guideShown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.preInstalled, preInstalled) ||
                const DeepCollectionEquality()
                    .equals(other.preInstalled, preInstalled)) &&
            (identical(other.guideShown, guideShown) ||
                const DeepCollectionEquality()
                    .equals(other.guideShown, guideShown)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(preInstalled) ^
      const DeepCollectionEquality().hash(guideShown);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required Option<bool> preInstalled,
      required Option<bool> guideShown}) = _$_AppState;

  @override
  Option<bool> get preInstalled => throw _privateConstructorUsedError;
  @override
  Option<bool> get guideShown => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
