part of 'top_up_credit_bloc.dart';

@freezed
class TopUpCreditState with _$TopUpCreditState {
  const factory TopUpCreditState({
    required Nominal nominal,
    required bool showError,
    required bool isSubmitting,
    required String destination,
    required Option<Either<CreditFailure, TopUpVADetails>>
        topUpVAfailureOrSuccess,
    required Option<Either<CreditFailure, TopUpBankDetails>>
        topUpBankfailureOrSuccess,
  }) = _TopUpCreditState;

  factory TopUpCreditState.initial() => TopUpCreditState(
        nominal: Nominal(''),
        showError: false,
        isSubmitting: false,
        topUpVAfailureOrSuccess: none(),
        topUpBankfailureOrSuccess: none(),
        destination: '',
      );
}
