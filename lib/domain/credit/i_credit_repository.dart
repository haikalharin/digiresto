import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/domain/credit/user_balance.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class ICreditRepository {
  Future<Either<CreditFailure, IList<TopUpMethod>>> getTopUpMethod();
  Future<Either<CreditFailure, UserBalance>> getUserBalance();
}
