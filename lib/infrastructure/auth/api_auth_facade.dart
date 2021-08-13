import 'dart:collection';

import 'package:digiresto/domain/auth/entity/login_pin.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/register_status.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/exceptions/server_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final Logger logger;
  final INetworkService _networkService;
  const AuthRepository(
    this._networkService,
    this.logger,
  );
  @override
  Future<Either<AuthFailure, String>> getOtp(
      {required PhoneNumber phoneNumber}) async {
    String apiUrl = Endpoints.urlGetOtp + phoneNumber.getOrCrash();
    final apiResult = await _networkService.getHttp(path: apiUrl);
    var userData = (apiResult as Map<String, dynamic>)['data'];
    final _data = HashMap.from(userData);
    return right(_data.values.first);
  }

  @override
  Future<Either<AuthFailure, LoginPin>> loginPin(
      {required PhoneNumber phoneNumber, required Pin pin}) {
    // TODO: implement loginPin
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, bool>> validateOtp({
    required PhoneNumber phoneNumber,
    required Otp otp,
  }) async {
    String apiUrl = Endpoints.urlValidateOtp;
    String _phoneNumber = phoneNumber.getOrCrash();
    String _otp = otp.getOrCrash();

    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "phoneNumber": _phoneNumber,
          "otp": _otp,
        },
      );
      var userData = (apiResult as Map<String, dynamic>)['data'];

      return right(userData['isMember']);
    } on ServerException catch (e) {
      logger.d(e.code);
      if (e.code == '22') {
        return left(AuthFailure.invalidOtp(e.message));
      }
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, RegisterStatus>> register(
      {required PhoneNumber phoneNumber, required Otp otp}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
