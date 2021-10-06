// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'intro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IntroTearOff {
  const _$IntroTearOff();

  _Intro call(
      {required Widget image,
      required String title,
      required String description}) {
    return _Intro(
      image: image,
      title: title,
      description: description,
    );
  }
}

/// @nodoc
const $Intro = _$IntroTearOff();

/// @nodoc
mixin _$Intro {
  Widget get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroCopyWith<Intro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroCopyWith<$Res> {
  factory $IntroCopyWith(Intro value, $Res Function(Intro) then) =
      _$IntroCopyWithImpl<$Res>;
  $Res call({Widget image, String title, String description});
}

/// @nodoc
class _$IntroCopyWithImpl<$Res> implements $IntroCopyWith<$Res> {
  _$IntroCopyWithImpl(this._value, this._then);

  final Intro _value;
  // ignore: unused_field
  final $Res Function(Intro) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IntroCopyWith<$Res> implements $IntroCopyWith<$Res> {
  factory _$IntroCopyWith(_Intro value, $Res Function(_Intro) then) =
      __$IntroCopyWithImpl<$Res>;
  @override
  $Res call({Widget image, String title, String description});
}

/// @nodoc
class __$IntroCopyWithImpl<$Res> extends _$IntroCopyWithImpl<$Res>
    implements _$IntroCopyWith<$Res> {
  __$IntroCopyWithImpl(_Intro _value, $Res Function(_Intro) _then)
      : super(_value, (v) => _then(v as _Intro));

  @override
  _Intro get _value => super._value as _Intro;

  @override
  $Res call({
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_Intro(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Intro implements _Intro {
  const _$_Intro(
      {required this.image, required this.title, required this.description});

  @override
  final Widget image;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'Intro(image: $image, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Intro &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$IntroCopyWith<_Intro> get copyWith =>
      __$IntroCopyWithImpl<_Intro>(this, _$identity);
}

abstract class _Intro implements Intro {
  const factory _Intro(
      {required Widget image,
      required String title,
      required String description}) = _$_Intro;

  @override
  Widget get image => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IntroCopyWith<_Intro> get copyWith => throw _privateConstructorUsedError;
}
