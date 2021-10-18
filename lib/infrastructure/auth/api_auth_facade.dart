import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/entity/login_otp.dart';
import 'package:digiresto/domain/auth/entity/register_input.dart';
import 'package:digiresto/domain/auth/entity/register_status.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/exceptions/server_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IAuthFacade)
class ApiAuthFacade implements IAuthFacade {
  final Logger logger;
  final INetworkService _networkService;
  final IStorage _storage;
  final IProfileRepository _profileRepository;
  const ApiAuthFacade(
    this._networkService,
    this.logger,
    this._storage,
    this._profileRepository,
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
    } on FailureException catch (e) {
      // TODO: implement Failure Exception
      ErrorDialog().showError(error: e.message!);
      return left(AuthFailure.unknownError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(AuthFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.unknownError());
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
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(AuthFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(AuthFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, UserAuth>> loginPin(
      {required PhoneNumber phoneNumber, required Pin pin}) async {
    String apiUrl = Endpoints.urlLogin;
    String _phoneNumber = phoneNumber.getOrCrash();
    String _pin = pin.getOrCrash();
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "username": _phoneNumber,
          "password": _pin,
        },
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final userData = Map<String, dynamic>.from(data);
      logger.d(userData);
      final _user = UserAuth.fromJson(userData);
      await _storage.openBox(StorageConstants.user);
      await _storage.putData(json: _user.toJson());
      final _userInStorage = await _storage.getData();
      logger.d('user in storage :' + _userInStorage.toString());
      await _storage.close();
      return right(_user);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      if (e.code == '999') {
        return left(AuthFailure.invalidPin());
      }
      return left(AuthFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(AuthFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, Option<UserAuth>>> getSignedInUser() async {
    await _storage.openBox(StorageConstants.user);
    Either<AuthFailure, Option<UserAuth>> failureOrSuccess = right(none());
    final _userInStorage = await _storage.getData();
    if (_userInStorage.isNotEmpty) {
      final _user = UserAuth.fromJson(_userInStorage);
      await _storage.openBox(StorageConstants.user);
      await _storage.putData(json: _user.toJson());
      await _storage.close();
      final _userAuth = UserAuth.fromJson(_userInStorage);
      final _userProfile = await _profileRepository.getProfile();
      logger.d(_userProfile);
      failureOrSuccess = _userProfile.fold(
        (l) => left(l),
        (profile) => right(
          optionOf(_userAuth),
        ),
      );
    }
    await _storage.close();
    return failureOrSuccess;
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _networkService.getHttp(
        path: Endpoints.urlLogout,
        useAuth: true,
      );
    } catch (e) {}
    await _storage.openBox(StorageConstants.user);
    await _storage.deleteData();
    await _storage.close();
    return right(unit);
  }

  @override
  Future<void> changeUrl({required String url}) async {
    await _storage.openBox(StorageConstants.base);
    await _storage.putString(key: 'devUrl', value: url);
  }

  @override
  Future<Either<AuthFailure, LoginOtp>> loginOtp(
      {required PhoneNumber phoneNumber, required Otp otp}) async {
    String apiUrl = Endpoints.urlLoginOtp;
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
      final data = (apiResult as Map<String, dynamic>)['data'];
      logger.d('data' + data.toString());
      final userData = Map<String, dynamic>.from(data);
      logger.d('userdata: ' + userData.toString());
      final _login = LoginOtp.fromJson(userData);

      if (_login.isMember) {
        final _user = UserAuth.fromJson(userData);
        await _storage.openBox(StorageConstants.user);
        await _storage.putData(json: _user.toJson());
        final _userInStorage = await _storage.getData();
        logger.d('user in storage :' + _userInStorage.toString());
        await _storage.close();
      }
      return right(_login);
    } on FailureException catch (e) {
      // TODO: implement Failure Exception
      ErrorDialog().showError(error: e.message!);
      if (e.code == '22') {
        return left(AuthFailure.invalidOtp());
      }
      return left(AuthFailure.unknownError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(AuthFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.unknownError());
    }
  }
}
