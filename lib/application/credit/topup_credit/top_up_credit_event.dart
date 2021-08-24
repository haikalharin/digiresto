part of 'top_up_credit_bloc.dart';

@freezed
class TopUpCreditEvent with _$TopUpCreditEvent {
  const factory TopUpCreditEvent.nominalChanged(String nominalStr) =
      _NominalChanged;
  const factory TopUpCreditEvent.topUpSubmitted(String bankCode) =
      _TopUpSubmitted;
  const factory TopUpCreditEvent.changeDestination(String destination) =
      _ChangeDestination;
}
