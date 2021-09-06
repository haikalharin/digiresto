part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loadInProgress() = _LoadInProgress;
  const factory TransactionState.loadSuccess() = _LoadSuccess;
  const factory TransactionState.loadFailure(TransactionFailure error) =
      _LoadFailure;

  const factory TransactionState.getTransactionHistorySuccess(
      List<TransactionHistory> response) = _GetTransactionHistorySuccess;

  const factory TransactionState.getOngoingTransactionSuccess(
      List<TransactionHistory> response) = _GetOngoingTransactionSuccess;

  const factory TransactionState.getTransactionSuccess(
      TransactionMobileResponse response) = _GetTransactionSuccess;

  const factory TransactionState.cancelTransactionSuccess(
      TransactionMobileResponse response) = _CancelTransactionSuccess;

  const factory TransactionState.acceptTransactionSuccess(
      StatusResponse response) = _AcceptTransactionSuccess;
}
