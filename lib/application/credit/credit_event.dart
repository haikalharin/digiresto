part of 'credit_bloc.dart';

@freezed
class CreditEvent with _$CreditEvent {
  const factory CreditEvent.started() = _Started;
  const factory CreditEvent.refreshBalance() = _RefreshBalance;
}
