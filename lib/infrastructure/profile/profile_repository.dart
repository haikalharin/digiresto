import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final INetworkService _networkService;
  final Logger logger;
  const ProfileRepository(this._networkService, this.logger) : super();
  @override
  Future<Either<AuthFailure, UserProfile>> getProfile() async {
    try {
      final apiResult = await _networkService.getHttp(
        path: Endpoints.urlProfile,
        useAuth: true,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final userData = Map<String, dynamic>.from(data);
      logger.d(data);
      return right(UserProfile.fromJson(userData));
    } on ServerException catch (e) {
      return left(AuthFailure.invalidToken(e.message));
    } on NoInternetException catch (_) {
      return left(AuthFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<OrderHistory>>>
      getOrderOnProcess() async {
    final _apiUrl = Endpoints.urlGetTransactionHistory;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "outletName": "",
            "page": 1,
            "limit": 10,
            "status": "waiting,process,ready,delivered",
          },
          "body": {}
        },
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('kosong boss');
        return left(ProfileFailure.noData());
      }
      final orderPendingList = list
          .map((item) => OrderHistory.fromJson(Map<String, dynamic>.from(item)))
          .toIList();
      return right(orderPendingList);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<OrderPending>>> getOrderPending() async {
    final _apiUrl = Endpoints.urlGetTransactionPending;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {"outletName": ""},
          "body": {}
        },
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('kosong boss');
        return left(ProfileFailure.noData());
      }
      final orderPendingList = list
          .map((item) => OrderPending.fromJson(Map<String, dynamic>.from(item)))
          .toIList();
      return right(orderPendingList);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> editProfile({
    required FullName fullName,
    required EmailAddress emailAddress,
  }) async {
    final _apiUrl = Endpoints.urlUpdateProfile;
    final _fullName = fullName.getOrCrash();
    final _emailAddress = emailAddress.getOrCrash();
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "name": _fullName,
          "email": _emailAddress,
        },
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['response']['code'];
      if (data as String != '00') {
        return left(ProfileFailure.unableToUpdate());
      }
      return right(unit);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<OrderHistory>>>
      getOrderCompleted() async {
    final _apiUrl = Endpoints.urlGetTransactionHistory;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "outletName": "",
            "page": 1,
            "limit": 10,
            "status":
                "cancelled,reject,auto_reject,done,auto_done,failed,refund"
          },
          "body": {}
        },
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('kosong boss');
        return left(ProfileFailure.noData());
      }
      final orderPendingList = list
          .map((item) => OrderHistory.fromJson(Map<String, dynamic>.from(item)))
          .toIList();
      return right(orderPendingList);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, OrderHistoryDetails>> getOrderHistoryDetails({
    required String receiptCode,
  }) async {
    final _apiUrl = Endpoints.urlGetTransaction;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {}
        },
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final orderHistoryDetails =
          OrderHistoryDetails.fromJson(Map<String, dynamic>.from(data));
      return right(orderHistoryDetails);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<String>>> getCancelReasons(
      String lang) async {
    try {
      final apiResult = await _networkService.getHttp(
        path: Endpoints.urlGetCancelReasons + lang,
        useAuth: true,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data']['cancelReason'];
      final list = List<String>.from(data).toIList();
      return right(list);
    } on ServerException catch (e) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> cancelTransaction(
      {required String receiptCode, required String reason}) async {
    final _apiUrl = Endpoints.urlCancelTransaction;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {
            "reason": reason,
          }
        },
      );
      logger.d(apiResult);
      final data =
          (apiResult as Map<String, dynamic>)['response']['code'] as String;
      if (data != '00') {
        return left(ProfileFailure.serverError());
      }
      return right(unit);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> postRating({
    required String receiptCode,
    required int rating,
    required String review,
  }) async {
    final _apiUrl = Endpoints.urlTransactionRating;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {
            "rating": rating,
            "review": review,
          }
        },
      );
      logger.d(apiResult);
      final data =
          (apiResult as Map<String, dynamic>)['response']['code'] as String;
      if (data != '00') {
        return left(ProfileFailure.serverError());
      }
      return right(unit);
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }
}
