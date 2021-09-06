part of 'order_details_bloc.dart';

@freezed
class OrderDetailsEvent with _$OrderDetailsEvent {
  const factory OrderDetailsEvent.started(String receiptCode) = _Started;
  const factory OrderDetailsEvent.refresh(String receiptCode) = _Refresh;
}
