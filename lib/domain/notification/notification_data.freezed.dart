// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
class _$NotificationDataTearOff {
  const _$NotificationDataTearOff();

  _NotificationData call(
      {required String title,
      required String description,
      required bool isRead}) {
    return _NotificationData(
      title: title,
      description: description,
      isRead: isRead,
    );
  }

  NotificationData fromJson(Map<String, Object> json) {
    return NotificationData.fromJson(json);
  }
}

/// @nodoc
const $NotificationData = _$NotificationDataTearOff();

/// @nodoc
mixin _$NotificationData {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res>;
  $Res call({String title, String description, bool isRead});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  final NotificationData _value;
  // ignore: unused_field
  final $Res Function(NotificationData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isRead = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDataCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$NotificationDataCopyWith(
          _NotificationData value, $Res Function(_NotificationData) then) =
      __$NotificationDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, bool isRead});
}

/// @nodoc
class __$NotificationDataCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res>
    implements _$NotificationDataCopyWith<$Res> {
  __$NotificationDataCopyWithImpl(
      _NotificationData _value, $Res Function(_NotificationData) _then)
      : super(_value, (v) => _then(v as _NotificationData));

  @override
  _NotificationData get _value => super._value as _NotificationData;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isRead = freezed,
  }) {
    return _then(_NotificationData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationData implements _NotificationData {
  const _$_NotificationData(
      {required this.title, required this.description, required this.isRead});

  factory _$_NotificationData.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDataFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final bool isRead;

  @override
  String toString() {
    return 'NotificationData(title: $title, description: $description, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationData &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isRead);

  @JsonKey(ignore: true)
  @override
  _$NotificationDataCopyWith<_NotificationData> get copyWith =>
      __$NotificationDataCopyWithImpl<_NotificationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDataToJson(this);
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
      {required String title,
      required String description,
      required bool isRead}) = _$_NotificationData;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$_NotificationData.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get isRead => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationDataCopyWith<_NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}
