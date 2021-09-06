part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.getTransactionHistory() =
      _GetTransactionHistory;

  const factory TransactionEvent.getOngoingTransaction() =
      _GetOngoingTransaction;

  const factory TransactionEvent.getTransaction(String receiptCode) =
      _GetTransaction;

  const factory TransactionEvent.cancelTransaction(String receiptCode) =
      _CancelTransaction;

  const factory TransactionEvent.acceptTransaction(String receiptCode) =
      _AcceptTransaction;
}
