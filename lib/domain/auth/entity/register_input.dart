// 'credential': pin.toString(),
// 'name': _usernameController.text.toString(),
// 'accountNumber': _userStore.authPhone,
// 'email': _emailController.text.toString(),
// 'pushid': '12313131',
// 'uid': '-',

import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_input.freezed.dart';
part 'register_input.g.dart';

@freezed
class RegisterInput with _$RegisterInput {
  @JsonSerializable()
  const factory RegisterInput({
    required String credential,
    required String name,
    required String accountNumber,
    required String email,
    required String pushId,
    required String uid,
  }) = _RegisterInput;
  factory RegisterInput.fromJson(Map<String, dynamic> json) =>
      _$RegisterInputFromJson(json);
}
