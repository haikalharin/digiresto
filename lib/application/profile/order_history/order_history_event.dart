part of 'order_history_bloc.dart';

@freezed
class OrderHistoryEvent with _$OrderHistoryEvent {
  const factory OrderHistoryEvent.started() = _Started;
}