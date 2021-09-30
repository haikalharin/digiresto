// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginOtp _$LoginOtpFromJson(Map<String, dynamic> json) {
  return _LoginOtp.fromJson(json);
}

/// @nodoc
class _$LoginOtpTearOff {
  const _$LoginOtpTearOff();

  _LoginOtp call(
      {required String? token,
      required String? renewtoken,
      required String? grantType,
      required String? handphone,
      required int? id,
      required String? name,
      required String? username,
      required String? email,
      required String? mobilePhone,
      @JsonKey(name: 'hidden_pushid')
          required String? hiddenPushid,
      @JsonKey(name: 'hidden_devicepairingflag')
          required String? hiddenDevicepairingflag,
      required bool isMember}) {
    return _LoginOtp(
      token: token,
      renewtoken: renewtoken,
      grantType: grantType,
      handphone: handphone,
      id: id,
      name: name,
      username: username,
      email: email,
      mobilePhone: mobilePhone,
      hiddenPushid: hiddenPushid,
      hiddenDevicepairingflag: hiddenDevicepairingflag,
      isMember: isMember,
    );
  }

  LoginOtp fromJson(Map<String, Object> json) {
    return LoginOtp.fromJson(json);
  }
}

/// @nodoc
const $LoginOtp = _$LoginOtpTearOff();

/// @nodoc
mixin _$LoginOtp {
  String? get token => throw _privateConstructorUsedError;
  String? get renewtoken => throw _privateConstructorUsedError;
  String? get grantType => throw _privateConstructorUsedError;
  String? get handphone => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobilePhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'hidden_pushid')
  String? get hiddenPushid => throw _privateConstructorUsedError;
  @JsonKey(name: 'hidden_devicepairingflag')
  String? get hiddenDevicepairingflag => throw _privateConstructorUsedError;
  bool get isMember => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginOtpCopyWith<LoginOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginOtpCopyWith<$Res> {
  factory $LoginOtpCopyWith(LoginOtp value, $Res Function(LoginOtp) then) =
      _$LoginOtpCopyWithImpl<$Res>;
  $Res call(
      {String? token,
      String? renewtoken,
      String? grantType,
      String? handphone,
      int? id,
      String? name,
      String? username,
      String? email,
      String? mobilePhone,
      @JsonKey(name: 'hidden_pushid')
          String? hiddenPushid,
      @JsonKey(name: 'hidden_devicepairingflag')
          String? hiddenDevicepairingflag,
      bool isMember});
}

/// @nodoc
class _$LoginOtpCopyWithImpl<$Res> implements $LoginOtpCopyWith<$Res> {
  _$LoginOtpCopyWithImpl(this._value, this._then);

  final LoginOtp _value;
  // ignore: unused_field
  final $Res Function(LoginOtp) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? renewtoken = freezed,
    Object? grantType = freezed,
    Object? handphone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? mobilePhone = freezed,
    Object? hiddenPushid = freezed,
    Object? hiddenDevicepairingflag = freezed,
    Object? isMember = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      renewtoken: renewtoken == freezed
          ? _value.renewtoken
          : renewtoken // ignore: cast_nullable_to_non_nullable
              as String?,
      grantType: grantType == freezed
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      handphone: handphone == freezed
          ? _value.handphone
          : handphone // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: mobilePhone == freezed
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      hiddenPushid: hiddenPushid == freezed
          ? _value.hiddenPushid
          : hiddenPushid // ignore: cast_nullable_to_non_nullable
              as String?,
      hiddenDevicepairingflag: hiddenDevicepairingflag == freezed
          ? _value.hiddenDevicepairingflag
          : hiddenDevicepairingflag // ignore: cast_nullable_to_non_nullable
              as String?,
      isMember: isMember == freezed
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginOtpCopyWith<$Res> implements $LoginOtpCopyWith<$Res> {
  factory _$LoginOtpCopyWith(_LoginOtp value, $Res Function(_LoginOtp) then) =
      __$LoginOtpCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? token,
      String? renewtoken,
      String? grantType,
      String? handphone,
      int? id,
      String? name,
      String? username,
      String? email,
      String? mobilePhone,
      @JsonKey(name: 'hidden_pushid')
          String? hiddenPushid,
      @JsonKey(name: 'hidden_devicepairingflag')
          String? hiddenDevicepairingflag,
      bool isMember});
}

/// @nodoc
class __$LoginOtpCopyWithImpl<$Res> extends _$LoginOtpCopyWithImpl<$Res>
    implements _$LoginOtpCopyWith<$Res> {
  __$LoginOtpCopyWithImpl(_LoginOtp _value, $Res Function(_LoginOtp) _then)
      : super(_value, (v) => _then(v as _LoginOtp));

  @override
  _LoginOtp get _value => super._value as _LoginOtp;

  @override
  $Res call({
    Object? token = freezed,
    Object? renewtoken = freezed,
    Object? grantType = freezed,
    Object? handphone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? mobilePhone = freezed,
    Object? hiddenPushid = freezed,
    Object? hiddenDevicepairingflag = freezed,
    Object? isMember = freezed,
  }) {
    return _then(_LoginOtp(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      renewtoken: renewtoken == freezed
          ? _value.renewtoken
          : renewtoken // ignore: cast_nullable_to_non_nullable
              as String?,
      grantType: grantType == freezed
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      handphone: handphone == freezed
          ? _value.handphone
          : handphone // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: mobilePhone == freezed
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      hiddenPushid: hiddenPushid == freezed
          ? _value.hiddenPushid
          : hiddenPushid // ignore: cast_nullable_to_non_nullable
              as String?,
      hiddenDevicepairingflag: hiddenDevicepairingflag == freezed
          ? _value.hiddenDevicepairingflag
          : hiddenDevicepairingflag // ignore: cast_nullable_to_non_nullable
              as String?,
      isMember: isMember == freezed
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginOtp implements _LoginOtp {
  const _$_LoginOtp(
      {required this.token,
      required this.renewtoken,
      required this.grantType,
      required this.handphone,
      required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.mobilePhone,
      @JsonKey(name: 'hidden_pushid')
          required this.hiddenPushid,
      @JsonKey(name: 'hidden_devicepairingflag')
          required this.hiddenDevicepairingflag,
      required this.isMember});

  factory _$_LoginOtp.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginOtpFromJson(json);

  @override
  final String? token;
  @override
  final String? renewtoken;
  @override
  final String? grantType;
  @override
  final String? handphone;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? mobilePhone;
  @override
  @JsonKey(name: 'hidden_pushid')
  final String? hiddenPushid;
  @override
  @JsonKey(name: 'hidden_devicepairingflag')
  final String? hiddenDevicepairingflag;
  @override
  final bool isMember;

  @override
  String toString() {
    return 'LoginOtp(token: $token, renewtoken: $renewtoken, grantType: $grantType, handphone: $handphone, id: $id, name: $name, username: $username, email: $email, mobilePhone: $mobilePhone, hiddenPushid: $hiddenPushid, hiddenDevicepairingflag: $hiddenDevicepairingflag, isMember: $isMember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginOtp &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.renewtoken, renewtoken) ||
                const DeepCollectionEquality()
                    .equals(other.renewtoken, renewtoken)) &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)) &&
            (identical(other.handphone, handphone) ||
                const DeepCollectionEquality()
                    .equals(other.handphone, handphone)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobilePhone, mobilePhone) ||
                const DeepCollectionEquality()
                    .equals(other.mobilePhone, mobilePhone)) &&
            (identical(other.hiddenPushid, hiddenPushid) ||
                const DeepCollectionEquality()
                    .equals(other.hiddenPushid, hiddenPushid)) &&
            (identical(
                    other.hiddenDevicepairingflag, hiddenDevicepairingflag) ||
                const DeepCollectionEquality().equals(
                    other.hiddenDevicepairingflag, hiddenDevicepairingflag)) &&
            (identical(other.isMember, isMember) ||
                const DeepCollectionEquality()
                    .equals(other.isMember, isMember)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(renewtoken) ^
      const DeepCollectionEquality().hash(grantType) ^
      const DeepCollectionEquality().hash(handphone) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobilePhone) ^
      const DeepCollectionEquality().hash(hiddenPushid) ^
      const DeepCollectionEquality().hash(hiddenDevicepairingflag) ^
      const DeepCollectionEquality().hash(isMember);

  @JsonKey(ignore: true)
  @override
  _$LoginOtpCopyWith<_LoginOtp> get copyWith =>
      __$LoginOtpCopyWithImpl<_LoginOtp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginOtpToJson(this);
  }
}

abstract class _LoginOtp implements LoginOtp {
  const factory _LoginOtp(
      {required String? token,
      required String? renewtoken,
      required String? grantType,
      required String? handphone,
      required int? id,
      required String? name,
      required String? username,
      required String? email,
      required String? mobilePhone,
      @JsonKey(name: 'hidden_pushid')
          required String? hiddenPushid,
      @JsonKey(name: 'hidden_devicepairingflag')
          required String? hiddenDevicepairingflag,
      required bool isMember}) = _$_LoginOtp;

  factory _LoginOtp.fromJson(Map<String, dynamic> json) = _$_LoginOtp.fromJson;

  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  String? get renewtoken => throw _privateConstructorUsedError;
  @override
  String? get grantType => throw _privateConstructorUsedError;
  @override
  String? get handphone => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get mobilePhone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'hidden_pushid')
  String? get hiddenPushid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'hidden_devicepairingflag')
  String? get hiddenDevicepairingflag => throw _privateConstructorUsedError;
  @override
  bool get isMember => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginOtpCopyWith<_LoginOtp> get copyWith =>
      throw _privateConstructorUsedError;
}
