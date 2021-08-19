part of 'credit_bloc.dart';

@freezed
class CreditState with _$CreditState {
  const factory CreditState.initial() = _Initial;
  const factory CreditState.loading() = _Loading;
  const factory CreditState.loaded({
    required Either<CreditFailure, UserBalance> userBalance,
    required Either<CreditFailure, IList<TopUpMethod>> listTopUpMethod,
  }) = _Loaded;
}
