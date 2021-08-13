import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfile({
    required int id,
    required String name,
    required String username,
    required String email,
    required String mobilePhone,
    @JsonKey(name: 'hidden_pushid') required String hiddenPushId,
  }) = _UserProfile;
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
