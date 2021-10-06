// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBalance _$UserBalanceFromJson(Map<String, dynamic> json) {
  return _UserBalance.fromJson(json);
}

/// @nodoc
class _$UserBalanceTearOff {
  const _$UserBalanceTearOff();

  _UserBalance call({required String username, required String balance}) {
    return _UserBalance(
      username: username,
      balance: balance,
    );
  }

  UserBalance fromJson(Map<String, Object> json) {
    return UserBalance.fromJson(json);
  }
}

/// @nodoc
const $UserBalance = _$UserBalanceTearOff();

/// @nodoc
mixin _$UserBalance {
  String get username => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBalanceCopyWith<UserBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBalanceCopyWith<$Res> {
  factory $UserBalanceCopyWith(
          UserBalance value, $Res Function(UserBalance) then) =
      _$UserBalanceCopyWithImpl<$Res>;
  $Res call({String username, String balance});
}

/// @nodoc
class _$UserBalanceCopyWithImpl<$Res> implements $UserBalanceCopyWith<$Res> {
  _$UserBalanceCopyWithImpl(this._value, this._then);

  final UserBalance _value;
  // ignore: unused_field
  final $Res Function(UserBalance) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserBalanceCopyWith<$Res>
    implements $UserBalanceCopyWith<$Res> {
  factory _$UserBalanceCopyWith(
          _UserBalance value, $Res Function(_UserBalance) then) =
      __$UserBalanceCopyWithImpl<$Res>;
  @override
  $Res call({String username, String balance});
}

/// @nodoc
class __$UserBalanceCopyWithImpl<$Res> extends _$UserBalanceCopyWithImpl<$Res>
    implements _$UserBalanceCopyWith<$Res> {
  __$UserBalanceCopyWithImpl(
      _UserBalance _value, $Res Function(_UserBalance) _then)
      : super(_value, (v) => _then(v as _UserBalance));

  @override
  _UserBalance get _value => super._value as _UserBalance;

  @override
  $Res call({
    Object? username = freezed,
    Object? balance = freezed,
  }) {
    return _then(_UserBalance(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBalance implements _UserBalance {
  const _$_UserBalance({required this.username, required this.balance});

  factory _$_UserBalance.fromJson(Map<String, dynamic> json) =>
      _$$_UserBalanceFromJson(json);

  @override
  final String username;
  @override
  final String balance;

  @override
  String toString() {
    return 'UserBalance(username: $username, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserBalance &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(balance);

  @JsonKey(ignore: true)
  @override
  _$UserBalanceCopyWith<_UserBalance> get copyWith =>
      __$UserBalanceCopyWithImpl<_UserBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBalanceToJson(this);
  }
}

abstract class _UserBalance implements UserBalance {
  const factory _UserBalance(
      {required String username, required String balance}) = _$_UserBalance;

  factory _UserBalance.fromJson(Map<String, dynamic> json) =
      _$_UserBalance.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserBalanceCopyWith<_UserBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
