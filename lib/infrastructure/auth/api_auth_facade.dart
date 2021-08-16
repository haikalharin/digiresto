import 'dart:collection';

import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/register_input.dart';
import 'package:digiresto/domain/auth/entity/register_status.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/auth/entity/user_profile.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/exceptions/server_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IAuthFacade)
class ApiAuthFacade implements IAuthFacade {
  final Logger logger;
  final INetworkService _networkService;
  final IStorage _storage;
  const ApiAuthFacade(
    this._networkService,
    this.logger,
    this._storage,
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
  Future<Either<AuthFailure, RegisterStatus>> register({
    required RegisterInput registerInput,
  }) async {
    String apiUrl = Endpoints.urlRegister;
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: registerInput.toJson(),
      );
      final data = (apiResult as Map<String, dynamic>)['response'];

      final registerStatus = RegisterStatus.fromJson(data);

      return right(registerStatus);
    } on ServerException catch (e) {
      logger.d(e.code);
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, UserAuth>> loginPin(
      {required PhoneNumber phoneNumber, required Pin pin}) async {
    String apiUrl = Endpoints.urlLogin;
    String _phoneNumber = phoneNumber.getOrCrash();
    String _pin = pin.getOrCrash();
    final apiResult = await _networkService.postHttp(
      path: apiUrl,
      content: {
        "username": _phoneNumber,
        "password": pin,
      },
    );
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Option<UserAuth>>> getSignedInUser() async {
    await _storage.openBox(StorageConstants.user);
    final _userInStorage = await _storage.getData();
    if (_userInStorage.isNotEmpty) {
      final _userAuth = UserAuth.fromJson(_userInStorage);
      final _userProfile = await getProfile(_userAuth.token);
      return _userProfile.fold(
          (l) => left(l), (profile) => right(optionOf(_userAuth)));
    }
    await _storage.close();
    return right(none());
  }

  @override
  Future<Either<AuthFailure, bool>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, UserProfile>> getProfile(String token) async {
    try {
      final apiResult = _networkService.getHttp(
        path: Endpoints.urlProfile,
        header: {"Authorization": "Bearer $token"},
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final userData = Map<String, dynamic>.from(data);
      return right(UserProfile.fromJson(userData));
    } on ServerException catch (e) {
      return left(AuthFailure.invalidToken(e.message));
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }
}
