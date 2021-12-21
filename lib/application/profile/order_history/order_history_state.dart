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
    required Option<Either<ProfileFailure, int>>
        orderOnProccessCountFailureOrSuccess,
    required Option<int> orderPendingCountOption,
    required Option<Either<ProfileFailure, IList<OrderHistory>>>
        orderupComingFailureOrSuccess,
    required Option<Either<ProfileFailure, int>> orderUpomingCountOption,
  }) = _OrderHistoryState;

  factory OrderHistoryState.initial() => OrderHistoryState(
        orderPendingFailureOrSuccess: none(),
        orderOnProccessFailureOrSuccess: none(),
        orderCompletedFailureOrSuccess: none(),
        orderOnProccessCountFailureOrSuccess: none(),
        orderPendingCountOption: none(),
        orderupComingFailureOrSuccess: none(),
        orderUpomingCountOption: none(),
      );
}
