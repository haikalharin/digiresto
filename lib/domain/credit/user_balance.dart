// To parse this JSON data, do
//
//     final userBalance = userBalanceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_balance.freezed.dart';
part 'user_balance.g.dart';

UserBalance userBalanceFromJson(String str) =>
    UserBalance.fromJson(json.decode(str));

String userBalanceToJson(UserBalance data) => json.encode(data.toJson());

@freezed
abstract class UserBalance with _$UserBalance {
  const factory UserBalance({
    required String username,
    required String balance,
  }) = _UserBalance;

  factory UserBalance.fromJson(Map<String, dynamic> json) =>
      _$UserBalanceFromJson(json);
}
