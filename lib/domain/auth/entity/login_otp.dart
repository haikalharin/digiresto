import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_otp.freezed.dart';
part 'login_otp.g.dart';

LoginOtp loginOtpFromJson(String str) => LoginOtp.fromJson(json.decode(str));

String loginOtpToJson(LoginOtp data) => json.encode(data.toJson());

@freezed
class LoginOtp with _$LoginOtp {
  const factory LoginOtp({
    required String? token,
    required String? renewtoken,
    required String? grantType,
    required String? handphone,
    required int? id,
    required String? name,
    required String? username,
    required String? email,
    required String? mobilePhone,
    @JsonKey(name: 'hidden_pushid') required String? hiddenPushid,
    @JsonKey(name: 'hidden_devicepairingflag')
        required String? hiddenDevicepairingflag,
    required bool isMember,
  }) = _LoginOtp;

  factory LoginOtp.fromJson(Map<String, dynamic> json) =>
      _$LoginOtpFromJson(json);
}
