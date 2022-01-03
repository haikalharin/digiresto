import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:digiresto/domain/credit/payment_history.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:digiresto/domain/credit/top_up_pending.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/domain/credit/user_balance.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class ICreditRepository {
  Future<Either<CreditFailure, IList<TopUpMethod>>> getTopUpMethod();
  Future<Either<CreditFailure, UserBalance>> getUserBalance();
  Future<Either<CreditFailure, TopUpVADetails>> topUpVA({
    required String bankCode,
    required String customerPhone,
    required String amount,
    required String fee,
  });
  Future<Either<CreditFailure, TopUpBankDetails>> topUpBank({
    required String bankCode,
    required String customerPhone,
    required String finalAmount,
  });
  Future<Either<CreditFailure, IList<TopUpPending>>> getTopUpPending();
  Future<Either<CreditFailure, String>> cancelTopup(String billingId);
  Future<Either<CreditFailure, PaymentHistory>> getRecentHistory({
    required int onPage,
    required int pageSize,
  });
  Future<Either<CreditFailure, int>> getCountTopupPending();
}
