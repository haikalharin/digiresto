// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _Started started() {
    return const _Started();
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

  _PinChanged pinChanged(String pinStr) {
    return _PinChanged(
      pinStr,
    );
  }

  _RetypePinChanged retypePinChanged(String retypePinStr) {
    return _RetypePinChanged(
      retypePinStr,
    );
  }

  _OnNext onNext(
      {required String phoneNumber,
      required PageController pageController,
      required Function onPinError,
      required Function onRetypePinError}) {
    return _OnNext(
      phoneNumber: phoneNumber,
      pageController: pageController,
      onPinError: onPinError,
      onRetypePinError: onRetypePinError,
    );
  }

  _ToggleAgree toggleAgree() {
    return const _ToggleAgree();
  }

  _ButtonSubmitted buttonSubmitted({required String phoneNumberStr}) {
    return _ButtonSubmitted(
      phoneNumberStr: phoneNumberStr,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.started()';
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
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RegisterEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'RegisterEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RegisterEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PinChangedCopyWith<$Res> {
  factory _$PinChangedCopyWith(
          _PinChanged value, $Res Function(_PinChanged) then) =
      __$PinChangedCopyWithImpl<$Res>;
  $Res call({String pinStr});
}

/// @nodoc
class __$PinChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$PinChangedCopyWith<$Res> {
  __$PinChangedCopyWithImpl(
      _PinChanged _value, $Res Function(_PinChanged) _then)
      : super(_value, (v) => _then(v as _PinChanged));

  @override
  _PinChanged get _value => super._value as _PinChanged;

  @override
  $Res call({
    Object? pinStr = freezed,
  }) {
    return _then(_PinChanged(
      pinStr == freezed
          ? _value.pinStr
          : pinStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PinChanged implements _PinChanged {
  const _$_PinChanged(this.pinStr);

  @override
  final String pinStr;

  @override
  String toString() {
    return 'RegisterEvent.pinChanged(pinStr: $pinStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PinChanged &&
            (identical(other.pinStr, pinStr) ||
                const DeepCollectionEquality().equals(other.pinStr, pinStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pinStr);

  @JsonKey(ignore: true)
  @override
  _$PinChangedCopyWith<_PinChanged> get copyWith =>
      __$PinChangedCopyWithImpl<_PinChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return pinChanged(pinStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return pinChanged?.call(pinStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(pinStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return pinChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class _PinChanged implements RegisterEvent {
  const factory _PinChanged(String pinStr) = _$_PinChanged;

  String get pinStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PinChangedCopyWith<_PinChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetypePinChangedCopyWith<$Res> {
  factory _$RetypePinChangedCopyWith(
          _RetypePinChanged value, $Res Function(_RetypePinChanged) then) =
      __$RetypePinChangedCopyWithImpl<$Res>;
  $Res call({String retypePinStr});
}

/// @nodoc
class __$RetypePinChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$RetypePinChangedCopyWith<$Res> {
  __$RetypePinChangedCopyWithImpl(
      _RetypePinChanged _value, $Res Function(_RetypePinChanged) _then)
      : super(_value, (v) => _then(v as _RetypePinChanged));

  @override
  _RetypePinChanged get _value => super._value as _RetypePinChanged;

  @override
  $Res call({
    Object? retypePinStr = freezed,
  }) {
    return _then(_RetypePinChanged(
      retypePinStr == freezed
          ? _value.retypePinStr
          : retypePinStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetypePinChanged implements _RetypePinChanged {
  const _$_RetypePinChanged(this.retypePinStr);

  @override
  final String retypePinStr;

  @override
  String toString() {
    return 'RegisterEvent.retypePinChanged(retypePinStr: $retypePinStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetypePinChanged &&
            (identical(other.retypePinStr, retypePinStr) ||
                const DeepCollectionEquality()
                    .equals(other.retypePinStr, retypePinStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(retypePinStr);

  @JsonKey(ignore: true)
  @override
  _$RetypePinChangedCopyWith<_RetypePinChanged> get copyWith =>
      __$RetypePinChangedCopyWithImpl<_RetypePinChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return retypePinChanged(retypePinStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return retypePinChanged?.call(retypePinStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (retypePinChanged != null) {
      return retypePinChanged(retypePinStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return retypePinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return retypePinChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (retypePinChanged != null) {
      return retypePinChanged(this);
    }
    return orElse();
  }
}

abstract class _RetypePinChanged implements RegisterEvent {
  const factory _RetypePinChanged(String retypePinStr) = _$_RetypePinChanged;

  String get retypePinStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetypePinChangedCopyWith<_RetypePinChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnNextCopyWith<$Res> {
  factory _$OnNextCopyWith(_OnNext value, $Res Function(_OnNext) then) =
      __$OnNextCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      PageController pageController,
      Function onPinError,
      Function onRetypePinError});
}

/// @nodoc
class __$OnNextCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$OnNextCopyWith<$Res> {
  __$OnNextCopyWithImpl(_OnNext _value, $Res Function(_OnNext) _then)
      : super(_value, (v) => _then(v as _OnNext));

  @override
  _OnNext get _value => super._value as _OnNext;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? pageController = freezed,
    Object? onPinError = freezed,
    Object? onRetypePinError = freezed,
  }) {
    return _then(_OnNext(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      onPinError: onPinError == freezed
          ? _value.onPinError
          : onPinError // ignore: cast_nullable_to_non_nullable
              as Function,
      onRetypePinError: onRetypePinError == freezed
          ? _value.onRetypePinError
          : onRetypePinError // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_OnNext implements _OnNext {
  const _$_OnNext(
      {required this.phoneNumber,
      required this.pageController,
      required this.onPinError,
      required this.onRetypePinError});

  @override
  final String phoneNumber;
  @override
  final PageController pageController;
  @override
  final Function onPinError;
  @override
  final Function onRetypePinError;

  @override
  String toString() {
    return 'RegisterEvent.onNext(phoneNumber: $phoneNumber, pageController: $pageController, onPinError: $onPinError, onRetypePinError: $onRetypePinError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnNext &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.pageController, pageController) ||
                const DeepCollectionEquality()
                    .equals(other.pageController, pageController)) &&
            (identical(other.onPinError, onPinError) ||
                const DeepCollectionEquality()
                    .equals(other.onPinError, onPinError)) &&
            (identical(other.onRetypePinError, onRetypePinError) ||
                const DeepCollectionEquality()
                    .equals(other.onRetypePinError, onRetypePinError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(pageController) ^
      const DeepCollectionEquality().hash(onPinError) ^
      const DeepCollectionEquality().hash(onRetypePinError);

  @JsonKey(ignore: true)
  @override
  _$OnNextCopyWith<_OnNext> get copyWith =>
      __$OnNextCopyWithImpl<_OnNext>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return onNext(phoneNumber, pageController, onPinError, onRetypePinError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return onNext?.call(
        phoneNumber, pageController, onPinError, onRetypePinError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(phoneNumber, pageController, onPinError, onRetypePinError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return onNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return onNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(this);
    }
    return orElse();
  }
}

abstract class _OnNext implements RegisterEvent {
  const factory _OnNext(
      {required String phoneNumber,
      required PageController pageController,
      required Function onPinError,
      required Function onRetypePinError}) = _$_OnNext;

  String get phoneNumber => throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;
  Function get onPinError => throw _privateConstructorUsedError;
  Function get onRetypePinError => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnNextCopyWith<_OnNext> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleAgreeCopyWith<$Res> {
  factory _$ToggleAgreeCopyWith(
          _ToggleAgree value, $Res Function(_ToggleAgree) then) =
      __$ToggleAgreeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggleAgreeCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ToggleAgreeCopyWith<$Res> {
  __$ToggleAgreeCopyWithImpl(
      _ToggleAgree _value, $Res Function(_ToggleAgree) _then)
      : super(_value, (v) => _then(v as _ToggleAgree));

  @override
  _ToggleAgree get _value => super._value as _ToggleAgree;
}

/// @nodoc

class _$_ToggleAgree implements _ToggleAgree {
  const _$_ToggleAgree();

  @override
  String toString() {
    return 'RegisterEvent.toggleAgree()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToggleAgree);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return toggleAgree();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return toggleAgree?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (toggleAgree != null) {
      return toggleAgree();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return toggleAgree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return toggleAgree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (toggleAgree != null) {
      return toggleAgree(this);
    }
    return orElse();
  }
}

abstract class _ToggleAgree implements RegisterEvent {
  const factory _ToggleAgree() = _$_ToggleAgree;
}

/// @nodoc
abstract class _$ButtonSubmittedCopyWith<$Res> {
  factory _$ButtonSubmittedCopyWith(
          _ButtonSubmitted value, $Res Function(_ButtonSubmitted) then) =
      __$ButtonSubmittedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$ButtonSubmittedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ButtonSubmittedCopyWith<$Res> {
  __$ButtonSubmittedCopyWithImpl(
      _ButtonSubmitted _value, $Res Function(_ButtonSubmitted) _then)
      : super(_value, (v) => _then(v as _ButtonSubmitted));

  @override
  _ButtonSubmitted get _value => super._value as _ButtonSubmitted;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(_ButtonSubmitted(
      phoneNumberStr: phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ButtonSubmitted implements _ButtonSubmitted {
  const _$_ButtonSubmitted({required this.phoneNumberStr});

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'RegisterEvent.buttonSubmitted(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ButtonSubmitted &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  _$ButtonSubmittedCopyWith<_ButtonSubmitted> get copyWith =>
      __$ButtonSubmittedCopyWithImpl<_ButtonSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function(String retypePinStr) retypePinChanged,
    required TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)
        onNext,
    required TResult Function() toggleAgree,
    required TResult Function(String phoneNumberStr) buttonSubmitted,
  }) {
    return buttonSubmitted(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
  }) {
    return buttonSubmitted?.call(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function(String retypePinStr)? retypePinChanged,
    TResult Function(String phoneNumber, PageController pageController,
            Function onPinError, Function onRetypePinError)?
        onNext,
    TResult Function()? toggleAgree,
    TResult Function(String phoneNumberStr)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (buttonSubmitted != null) {
      return buttonSubmitted(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_RetypePinChanged value) retypePinChanged,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_ToggleAgree value) toggleAgree,
    required TResult Function(_ButtonSubmitted value) buttonSubmitted,
  }) {
    return buttonSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
  }) {
    return buttonSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_RetypePinChanged value)? retypePinChanged,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_ToggleAgree value)? toggleAgree,
    TResult Function(_ButtonSubmitted value)? buttonSubmitted,
    required TResult orElse(),
  }) {
    if (buttonSubmitted != null) {
      return buttonSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ButtonSubmitted implements RegisterEvent {
  const factory _ButtonSubmitted({required String phoneNumberStr}) =
      _$_ButtonSubmitted;

  String get phoneNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ButtonSubmittedCopyWith<_ButtonSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {required FullName fullName,
      required EmailAddress email,
      required Pin pin,
      required Pin retypePin,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool agreeTerms,
      required Option<Either<AuthFailure, RegisterStatus>>
          registerFailureOrSuccessOption}) {
    return _RegisterState(
      fullName: fullName,
      email: email,
      pin: pin,
      retypePin: retypePin,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      agreeTerms: agreeTerms,
      registerFailureOrSuccessOption: registerFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  FullName get fullName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Pin get pin => throw _privateConstructorUsedError;
  Pin get retypePin => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get agreeTerms => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, RegisterStatus>>
      get registerFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {FullName fullName,
      EmailAddress email,
      Pin pin,
      Pin retypePin,
      bool showErrorMessages,
      bool isSubmitting,
      bool agreeTerms,
      Option<Either<AuthFailure, RegisterStatus>>
          registerFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? pin = freezed,
    Object? retypePin = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? agreeTerms = freezed,
    Object? registerFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as Pin,
      retypePin: retypePin == freezed
          ? _value.retypePin
          : retypePin // ignore: cast_nullable_to_non_nullable
              as Pin,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms: agreeTerms == freezed
          ? _value.agreeTerms
          : agreeTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      registerFailureOrSuccessOption: registerFailureOrSuccessOption == freezed
          ? _value.registerFailureOrSuccessOption
          : registerFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, RegisterStatus>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName fullName,
      EmailAddress email,
      Pin pin,
      Pin retypePin,
      bool showErrorMessages,
      bool isSubmitting,
      bool agreeTerms,
      Option<Either<AuthFailure, RegisterStatus>>
          registerFailureOrSuccessOption});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? pin = freezed,
    Object? retypePin = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? agreeTerms = freezed,
    Object? registerFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterState(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as Pin,
      retypePin: retypePin == freezed
          ? _value.retypePin
          : retypePin // ignore: cast_nullable_to_non_nullable
              as Pin,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms: agreeTerms == freezed
          ? _value.agreeTerms
          : agreeTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      registerFailureOrSuccessOption: registerFailureOrSuccessOption == freezed
          ? _value.registerFailureOrSuccessOption
          : registerFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, RegisterStatus>>,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.fullName,
      required this.email,
      required this.pin,
      required this.retypePin,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.agreeTerms,
      required this.registerFailureOrSuccessOption});

  @override
  final FullName fullName;
  @override
  final EmailAddress email;
  @override
  final Pin pin;
  @override
  final Pin retypePin;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool agreeTerms;
  @override
  final Option<Either<AuthFailure, RegisterStatus>>
      registerFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterState(fullName: $fullName, email: $email, pin: $pin, retypePin: $retypePin, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, agreeTerms: $agreeTerms, registerFailureOrSuccessOption: $registerFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.retypePin, retypePin) ||
                const DeepCollectionEquality()
                    .equals(other.retypePin, retypePin)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.agreeTerms, agreeTerms) ||
                const DeepCollectionEquality()
                    .equals(other.agreeTerms, agreeTerms)) &&
            (identical(other.registerFailureOrSuccessOption,
                    registerFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.registerFailureOrSuccessOption,
                    registerFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(retypePin) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(agreeTerms) ^
      const DeepCollectionEquality().hash(registerFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required FullName fullName,
      required EmailAddress email,
      required Pin pin,
      required Pin retypePin,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool agreeTerms,
      required Option<Either<AuthFailure, RegisterStatus>>
          registerFailureOrSuccessOption}) = _$_RegisterState;

  @override
  FullName get fullName => throw _privateConstructorUsedError;
  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Pin get pin => throw _privateConstructorUsedError;
  @override
  Pin get retypePin => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get agreeTerms => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, RegisterStatus>>
      get registerFailureOrSuccessOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
