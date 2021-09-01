part of 'waiting_payment_bloc.dart';

@freezed
class WaitingPaymentEvent with _$WaitingPaymentEvent {
  const factory WaitingPaymentEvent.started() = _Started;
  const factory WaitingPaymentEvent.cancelTopup(String billingId) =
      _CancelTopup;
}
