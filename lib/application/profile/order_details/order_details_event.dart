part of 'order_details_bloc.dart';

@freezed
class OrderDetailsEvent with _$OrderDetailsEvent {
  const factory OrderDetailsEvent.started(String receiptCode) = _Started;
  const factory OrderDetailsEvent.refresh(String receiptCode) = _Refresh;
  const factory OrderDetailsEvent.doneTransaction(String receiptCode) =
      _DoneTransaction;
  const factory OrderDetailsEvent.cancelPageOpen(String receiptCode) =
      _CancelPageOpen;
  const factory OrderDetailsEvent.cancelSubmitted({
    required String receiptCode,
    required String reason,
    required IList<String> reasonList,
  }) = _CancelSubmitted;
  const factory OrderDetailsEvent.ratingReviewSubmitted({
    required String receiptCode,
    required int rating,
    required String review,
  }) = _RatingReviewSubmitted;
}
