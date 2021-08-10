import 'package:digiresto/domain/entity/auth/login_pin_model.dart';
import 'package:digiresto/domain/entity/auth/otp_validate_model.dart';
import 'package:digiresto/domain/entity/auth/otp_wame_model.dart';
import 'package:digiresto/domain/entity/auth/register_model.dart';
import 'package:injectable/injectable.dart';

import 'auth_api.dart';

@injectable
class AuthRepository {
  final AuthApi _authApi;

  AuthRepository(this._authApi);

  Future<LoginPin> loginUser(String handPhone, String pin) async {
    return await _authApi.login(handPhone, pin).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<LoginPin> nonUserLogin(String clientId) async {
    return await _authApi.nonUserLogin(clientId).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<OtpWame> getOtp(String handPhone) async {
    return await _authApi.getOtp(handPhone).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<OtpValidate> validateOtp(String handPhone, String otp) async {
    return await _authApi.validateOtp(handPhone, otp).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Register> register(Map<String, dynamic> object) async {
    return await _authApi.register(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
