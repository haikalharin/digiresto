part of 'order_history_bloc.dart';

@freezed
class OrderHistoryEvent with _$OrderHistoryEvent {
  const factory OrderHistoryEvent.orderPendingOpen() = _OrderPendingOpen;
  const factory OrderHistoryEvent.orderOnProcessOpen() = _OrderOnProcessOpen;
  const factory OrderHistoryEvent.orderCompletedOpen() = _OrderCompletedOpen;
}
