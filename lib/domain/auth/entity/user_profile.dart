import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String name,
    required String username,
    required String email,
    required String mobilePhone,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
