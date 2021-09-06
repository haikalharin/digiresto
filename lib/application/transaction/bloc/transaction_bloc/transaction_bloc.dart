import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile_response.dart';
import 'package:digiresto/domain/entity/transaction/param/add_favorite_transaction_param.dart';
import 'package:digiresto/domain/entity/transaction/transaction_history.dart';
import 'package:digiresto/domain/transaction/transaction_failure.dart';
import 'package:digiresto/infrastructure/network/apis/transaction/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionRepository _transactionRepository;
  TransactionBloc(
    this._transactionRepository,
  ) : super(_Initial());

  @override
  Stream<TransactionState> mapEventToState(TransactionEvent gEvent) async* {
    yield* gEvent.map(getTransactionHistory: (r) async* {
      final getTransactionHistory =
          await _transactionRepository.getTransactionHistory();
      if (getTransactionHistory == null) {
        yield TransactionState.loadFailure(
            TransactionFailure.getTransactionHistoryFail());
      } else {
        yield TransactionState.getTransactionHistorySuccess(
            getTransactionHistory);
      }
    }, getOngoingTransaction: (r) async* {
      final getOngoingTransaction =
          await _transactionRepository.getOngoingTransaction();
      if (getOngoingTransaction == null) {
        yield TransactionState.loadFailure(
            TransactionFailure.getOngoingTransactionFail());
      } else {
        yield TransactionState.getOngoingTransactionSuccess(
            getOngoingTransaction);
      }
    }, getTransaction: (r) async* {
      final getTransaction =
          await _transactionRepository.getTransaction(r.receiptCode);
      if (getTransaction == null) {
        yield TransactionState.loadFailure(
            TransactionFailure.getTransactionFail());
      } else {
        yield TransactionState.getTransactionSuccess(getTransaction);
      }
    }, cancelTransaction: (r) async* {
      final cancelTransaction =
          await _transactionRepository.cancelTransaction(r.receiptCode);
      if (cancelTransaction == null) {
        yield TransactionState.loadFailure(
            TransactionFailure.cancelTransactionFail());
      } else {
        yield TransactionState.cancelTransactionSuccess(cancelTransaction);
      }
    }, acceptTransaction: (r) async* {
      final acceptTransaction =
          await _transactionRepository.acceptTransaction(r.receiptCode);
      if (acceptTransaction == null) {
        yield TransactionState.loadFailure(
            TransactionFailure.acceptTransactionFail());
      } else {
        yield TransactionState.acceptTransactionSuccess(acceptTransaction);
      }
    }, addFavoriteTransaction: (r) async* {
      final addFavoriteTransaction =
          await _transactionRepository.addFavoriteTransaction(r.request);
      if (addFavoriteTransaction == false) {
        yield TransactionState.loadFailure(
            TransactionFailure.addFavoriteTransactionFail());
      } else {
        yield TransactionState.addFavoriteTransactionSuccess(
            addFavoriteTransaction);
      }
    });
  }
}
