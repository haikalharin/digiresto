part of 'credit_bloc.dart';

@freezed
class CreditState with _$CreditState {
  const factory CreditState({
    required Option<Either<CreditFailure, UserBalance>> userBalance,
    required Option<Either<CreditFailure, IList<TopUpMethod>>> listTopUpMethod,
  }) = _CreditState;

  factory CreditState.initial() => CreditState(
        userBalance: none(),
        listTopUpMethod: none(),
      );
}
