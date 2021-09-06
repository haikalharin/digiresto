part of 'order_history_bloc.dart';

@freezed
class OrderHistoryState with _$OrderHistoryState {
  const factory OrderHistoryState({
    required Option<Either<ProfileFailure, IList<OrderPending>>>
        orderPendingFailureOrSuccess,
    required Option<Either<ProfileFailure, IList<OrderHistory>>>
        orderOnProccessFailureOrSuccess,
    required Option<Either<ProfileFailure, IList<OrderHistory>>>
        orderCompletedFailureOrSuccess,
  }) = _OrderHistoryState;

  factory OrderHistoryState.initial() => OrderHistoryState(
        orderPendingFailureOrSuccess: none(),
        orderOnProccessFailureOrSuccess: none(),
        orderCompletedFailureOrSuccess: none(),
      );
}
