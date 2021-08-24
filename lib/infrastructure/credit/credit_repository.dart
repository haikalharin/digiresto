import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/domain/credit/user_balance.dart';
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
    final apiResult = await _networkService.getHttp(
      path: apiUrl,
      useAuth: true,
    );
    final data = (apiResult as Map<String, dynamic>)['data']['topupMethod'];
    final topUpData = List<Map<String, dynamic>>.from(data);
    final result = topUpData.map((a) => TopUpMethod.fromJson(a)).toIList();
    logger.d(data);
    return right(result);
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
    } on ServerException catch (e) {
      logger.d(e.message);
      return left(CreditFailure.serverException(
        code: e.code,
        message: e.message,
      ));
    } on NoInternetException catch (_) {
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
    required String finalAmount,
  }) async {
    String apiUrl = Endpoints.urlTopup;
    try {
      final apiResult =
          await _networkService.postHttp(path: apiUrl, useAuth: true, content: {
        "body": {
          "bankCode": bankCode,
          "customerPhone": customerPhone,
          "finalAmount": finalAmount,
        }
      });
      final data = (apiResult as Map<String, dynamic>)['data'];
      final topUpDetails = Map<String, dynamic>.from(data);
      return right(TopUpVADetails.fromJson(topUpDetails));
    } on ServerException catch (e) {
      logger.d(e.message);
      return left(CreditFailure.serverException(
        code: e.code,
        message: e.message,
      ));
    } on NoInternetException catch (_) {
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
    String apiUrl = Endpoints.urlTopup;
    try {
      final apiResult =
          await _networkService.postHttp(path: apiUrl, useAuth: true, content: {
        "body": {
          "bankCode": bankCode,
          "customerPhone": customerPhone,
          "finalAmount": finalAmount,
        }
      });
      final data = (apiResult as Map<String, dynamic>)['data'];
      final topUpDetails = Map<String, dynamic>.from(data);
      return right(TopUpBankDetails.fromJson(topUpDetails));
    } on ServerException catch (e) {
      logger.d(e.message);
      return left(CreditFailure.serverException(
        code: e.code,
        message: e.message,
      ));
    } on NoInternetException catch (_) {
      return left(CreditFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CreditFailure.unexpected());
    }
  }
}
