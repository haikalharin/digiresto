import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/profile/order_on_process.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, IList<OrderOnProccess>>> getOrderOnProcess();
  Future<Either<ProfileFailure, IList<OrderPending>>> getOrderPending();
}
