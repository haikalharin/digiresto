import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth.freezed.dart';
part 'user_auth.g.dart';

@freezed
class UserAuth with _$UserAuth {
  const factory UserAuth({
    required String? token,
    required String? renewtoken,
    required String? grantType,
    required String? handphone,
    required int? id,
    required String? name,
    required String? username,
    required String? email,
    required String? mobilePhone,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) =>
      _$UserAuthFromJson(json);
}
