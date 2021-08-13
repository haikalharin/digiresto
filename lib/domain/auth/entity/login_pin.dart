import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_pin.freezed.dart';
part 'login_pin.g.dart';

@freezed
class LoginPin with _$LoginPin {
  @JsonSerializable(explicitToJson: true)
  const factory LoginPin({
    required String token,
    required String handphone,
    required int id,
    required String name,
    required String username,
    required String email,
    required String mobilePhone,
    @JsonKey(name: 'hidden_pushid') required String hiddenPushId,
  }) = _LoginPin;
  factory LoginPin.fromJson(Map<String, dynamic> json) =>
      _$LoginPinFromJson(json);
}
