import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/credit/payment_history.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:digiresto/domain/credit/top_up_pending.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/domain/credit/user_balance.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: ICreditRepository)
class CreditRepository implements ICreditRepository {
  final INetworkService _networkService;
  final Logger logger;
  const CreditRepository(this._networkService, this.logger);
  @override
  Future<Either<CreditFailure, IList<TopUpMethod>>> getTopUpMethod() async {
    String apiUrl = Endpoints.urlTopupList;
    try {
      final apiResult = await _networkService.getHttp(
        path: apiUrl,
        useAuth: true,
      );
      final data = (apiResult as Map<String, dynamic>)['data']['topupMethod'];
      final topUpData = List<Map<String, dynamic>>.from(data);
      final result = topUpData.map((a) => TopUpMethod.fromJson(a)).toIList();
      logger.d(data);
      return right(result);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, UserBalance>> getUserBalance() async {
    String apiUrl = Endpoints.urlBalance;
    try {
      final apiResult = await _networkService.getHttp(
        path: apiUrl,
        useAuth: true,
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final userBalanceData = Map<String, dynamic>.from(data);

      return right(UserBalance.fromJson(userBalanceData));
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, TopUpVADetails>> topUpVA({
    required String bankCode,
    required String customerPhone,
    required String amount,
    required String fee,
  }) async {
    final apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlTopup;
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        useAuth: true,
        content: {
          "body": {
            "bankCode": bankCode,
            "customerPhone": customerPhone,
            "amount": amount,
            "fee": fee,
          }
        },
        queryParameter: queryParameter,
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final topUpDetails = Map<String, dynamic>.from(data);
      return right(TopUpVADetails.fromJson(topUpDetails));
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, TopUpBankDetails>> topUpBank({
    required String bankCode,
    required String customerPhone,
    required String finalAmount,
  }) async {
    final apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlTopup;
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        useAuth: true,
        content: {
          "body": {
            "bankCode": bankCode,
            "customerPhone": customerPhone,
            "finalAmount": finalAmount,
          }
        },
        queryParameter: queryParameter,
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final topUpDetails = Map<String, dynamic>.from(data);
      return right(TopUpBankDetails.fromJson(topUpDetails));
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, IList<TopUpPending>>> getTopUpPending() async {
    final apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlTopupPending;
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        useAuth: true,
        queryParameter: queryParameter,
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final listData = List.from(data);
      final listTopUp =
          listData.map((json) => TopUpPending.fromJson(json)).toIList();
      return right(listTopUp);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, String>> cancelTopup(String billingId) async {
    final apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlCancelBilling;
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "billingId": billingId,
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      final data = (apiResult as Map<String, dynamic>)['response']["code"];
      return right(data);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, PaymentHistory>> getRecentHistory({
    required int onPage,
    required int pageSize,
  }) async {
    String apiUrl = Endpoints.urlPaymentHistory;

    try {
      final apiResult = await _networkService.getHttp(
        path: '$apiUrl?onPage=$onPage&pageSize=$pageSize',
        useAuth: true,
      );
      final data =
          (apiResult as Map<String, dynamic>)['data']['accountHistory'];
      final json = Map<String, dynamic>.from(data);
      final result = PaymentHistory.fromJson(json);
      logger.d(data);
      return right(result);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }

  @override
  Future<Either<CreditFailure, int>> getCountTopupPending() async {
    final apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlTopupPending;
    try {
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        useAuth: true,
        queryParameter: queryParameter,
        content: {
          "query_string": {
            "outletName": "",
          },
          "body": {},
        },
      );
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      final count = list.length;
      return right(count);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(CreditFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CreditFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CreditFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }
}
