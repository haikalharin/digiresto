import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class IProfileRepository {
  Future<Either<AuthFailure, UserProfile>> getProfile();
  Future<Either<ProfileFailure, Unit>> editProfile({
    required FullName fullName,
    required EmailAddress emailAddress,
  });
  Future<Either<ProfileFailure, IList<OrderHistory>>> getOrderOnProcess({
    required int page,
  });
  Future<Either<ProfileFailure, IList<OrderHistory>>> getOrderCompleted({
    required int page,
  });
  Future<Either<ProfileFailure, IList<OrderPending>>> getOrderPending();
  Future<Either<ProfileFailure, int>> getOrderOnProcessCount();
  Future<Either<ProfileFailure, OrderHistoryDetails>> getOrderHistoryDetails({
    required String receiptCode,
  });
  Future<Either<ProfileFailure, IList<String>>> getCancelReasons(String lang);
  Future<Either<ProfileFailure, Unit>> cancelTransaction({
    required String receiptCode,
    required String reason,
  });
  Future<Either<ProfileFailure, Unit>> postRating({
    required String receiptCode,
    required int rating,
    required String review,
  });

  Future<Either<ProfileFailure, Unit>> doneTransaction({
    required String receiptCode,
  });
}
