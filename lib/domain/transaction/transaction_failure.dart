import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_failure.freezed.dart';

@freezed
class TransactionFailure with _$TransactionFailure implements Exception {
  const factory TransactionFailure.getTransactionHistoryFail() =
      _GetTransactionHistoryFail;

  const factory TransactionFailure.getOngoingTransactionFail() =
      _GetOngoingTransactionFail;

  const factory TransactionFailure.getTransactionFail() = _GetTransactionFail;

  const factory TransactionFailure.cancelTransactionFail() =
      _CancelTransactionFail;

  const factory TransactionFailure.acceptTransactionFail() =
      _AcceptTransactionFail;
}
