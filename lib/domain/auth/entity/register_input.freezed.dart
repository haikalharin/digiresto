// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterInput _$RegisterInputFromJson(Map<String, dynamic> json) {
  return _RegisterInput.fromJson(json);
}

/// @nodoc
class _$RegisterInputTearOff {
  const _$RegisterInputTearOff();

  _RegisterInput call(
      {required String credential,
      required String name,
      required String accountNumber,
      required String email,
      required String pushId,
      required String uid}) {
    return _RegisterInput(
      credential: credential,
      name: name,
      accountNumber: accountNumber,
      email: email,
      pushId: pushId,
      uid: uid,
    );
  }

  RegisterInput fromJson(Map<String, Object> json) {
    return RegisterInput.fromJson(json);
  }
}

/// @nodoc
const $RegisterInput = _$RegisterInputTearOff();

/// @nodoc
mixin _$RegisterInput {
  String get credential => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get pushId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterInputCopyWith<RegisterInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterInputCopyWith<$Res> {
  factory $RegisterInputCopyWith(
          RegisterInput value, $Res Function(RegisterInput) then) =
      _$RegisterInputCopyWithImpl<$Res>;
  $Res call(
      {String credential,
      String name,
      String accountNumber,
      String email,
      String pushId,
      String uid});
}

/// @nodoc
class _$RegisterInputCopyWithImpl<$Res>
    implements $RegisterInputCopyWith<$Res> {
  _$RegisterInputCopyWithImpl(this._value, this._then);

  final RegisterInput _value;
  // ignore: unused_field
  final $Res Function(RegisterInput) _then;

  @override
  $Res call({
    Object? credential = freezed,
    Object? name = freezed,
    Object? accountNumber = freezed,
    Object? email = freezed,
    Object? pushId = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      credential: credential == freezed
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pushId: pushId == freezed
          ? _value.pushId
          : pushId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterInputCopyWith<$Res>
    implements $RegisterInputCopyWith<$Res> {
  factory _$RegisterInputCopyWith(
          _RegisterInput value, $Res Function(_RegisterInput) then) =
      __$RegisterInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {String credential,
      String name,
      String accountNumber,
      String email,
      String pushId,
      String uid});
}

/// @nodoc
class __$RegisterInputCopyWithImpl<$Res>
    extends _$RegisterInputCopyWithImpl<$Res>
    implements _$RegisterInputCopyWith<$Res> {
  __$RegisterInputCopyWithImpl(
      _RegisterInput _value, $Res Function(_RegisterInput) _then)
      : super(_value, (v) => _then(v as _RegisterInput));

  @override
  _RegisterInput get _value => super._value as _RegisterInput;

  @override
  $Res call({
    Object? credential = freezed,
    Object? name = freezed,
    Object? accountNumber = freezed,
    Object? email = freezed,
    Object? pushId = freezed,
    Object? uid = freezed,
  }) {
    return _then(_RegisterInput(
      credential: credential == freezed
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pushId: pushId == freezed
          ? _value.pushId
          : pushId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_RegisterInput implements _RegisterInput {
  const _$_RegisterInput(
      {required this.credential,
      required this.name,
      required this.accountNumber,
      required this.email,
      required this.pushId,
      required this.uid});

  factory _$_RegisterInput.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterInputFromJson(json);

  @override
  final String credential;
  @override
  final String name;
  @override
  final String accountNumber;
  @override
  final String email;
  @override
  final String pushId;
  @override
  final String uid;

  @override
  String toString() {
    return 'RegisterInput(credential: $credential, name: $name, accountNumber: $accountNumber, email: $email, pushId: $pushId, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterInput &&
            (identical(other.credential, credential) ||
                const DeepCollectionEquality()
                    .equals(other.credential, credential)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.pushId, pushId) ||
                const DeepCollectionEquality().equals(other.pushId, pushId)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(credential) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(pushId) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$RegisterInputCopyWith<_RegisterInput> get copyWith =>
      __$RegisterInputCopyWithImpl<_RegisterInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterInputToJson(this);
  }
}

abstract class _RegisterInput implements RegisterInput {
  const factory _RegisterInput(
      {required String credential,
      required String name,
      required String accountNumber,
      required String email,
      required String pushId,
      required String uid}) = _$_RegisterInput;

  factory _RegisterInput.fromJson(Map<String, dynamic> json) =
      _$_RegisterInput.fromJson;

  @override
  String get credential => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get accountNumber => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get pushId => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterInputCopyWith<_RegisterInput> get copyWith =>
      throw _privateConstructorUsedError;
}
