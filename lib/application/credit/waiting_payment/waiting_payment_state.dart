part of 'waiting_payment_bloc.dart';

@freezed
class WaitingPaymentState with _$WaitingPaymentState {
  const factory WaitingPaymentState.initial() = _Initial;
  const factory WaitingPaymentState.loading() = _Loading;
  const factory WaitingPaymentState.loadSuccess(
    IList<TopUpPending> listTopUpPending,
  ) = _LoadSucces;
  const factory WaitingPaymentState.loadFailure(
    CreditFailure failure,
  ) = _LoadFailure;
}
