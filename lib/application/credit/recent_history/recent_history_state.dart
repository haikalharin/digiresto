part of 'recent_history_bloc.dart';

@freezed
class RecentHistoryState with _$RecentHistoryState {
  const factory RecentHistoryState({
    required bool isLoading,
    required IList<PaymentHistoryDetail> listData,
    required Option<CreditFailure> failureOption,
  }) = _RecentHistoryState;

  factory RecentHistoryState.initial() => RecentHistoryState(
        isLoading: false,
        listData: IList(),
        failureOption: none(),
      );
}
