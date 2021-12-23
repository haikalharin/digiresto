import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
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
  ) : super(_Initial()) {
    on<TransactionEvent>(
      (event, emit) async {
        await event.map(getTransactionHistory: (r) async {
          final getTransactionHistory =
              await _transactionRepository.getTransactionHistory();
          if (getTransactionHistory == null) {
            emit(TransactionState.loadFailure(
                TransactionFailure.getTransactionHistoryFail()));
          } else {
            emit(TransactionState.getTransactionHistorySuccess(
                getTransactionHistory));
          }
        }, getOngoingTransaction: (r) async {
          final getOngoingTransaction =
              await _transactionRepository.getOngoingTransaction();
          if (getOngoingTransaction == null) {
            emit(TransactionState.loadFailure(
                TransactionFailure.getOngoingTransactionFail()));
          } else {
            emit(TransactionState.getOngoingTransactionSuccess(
                getOngoingTransaction));
          }
        }, getTransaction: (r) async {
          emit(TransactionState.loadInProgress());
          final getTransaction =
              await _transactionRepository.getTransaction(r.receiptCode);
          if (getTransaction == null) {
            emit(TransactionState.loadFailure(
                TransactionFailure.getTransactionFail()));
          } else {
            emit(TransactionState.getTransactionSuccess(getTransaction));
          }
        }, cancelTransaction: (r) async {
          final cancelTransaction =
              await _transactionRepository.cancelTransaction(r.receiptCode);
          if (cancelTransaction == null) {
            emit(TransactionState.loadFailure(
                TransactionFailure.cancelTransactionFail()));
          } else {
            emit(TransactionState.cancelTransactionSuccess(cancelTransaction));
          }
        }, acceptTransaction: (r) async {
          final acceptTransaction =
              await _transactionRepository.acceptTransaction(r.receiptCode);
          if (acceptTransaction == null) {
            emit(TransactionState.loadFailure(
                TransactionFailure.acceptTransactionFail()));
          } else {
            emit(TransactionState.acceptTransactionSuccess(acceptTransaction));
          }
        }, addFavoriteTransaction: (r) async {
          final addFavoriteTransaction =
              await _transactionRepository.addFavoriteTransaction(r.request);
          if (addFavoriteTransaction == false) {
            emit(TransactionState.loadFailure(
                TransactionFailure.addFavoriteTransactionFail()));
          } else {
            emit(TransactionState.addFavoriteTransactionSuccess(
                addFavoriteTransaction));
          }
        });
      },
      transformer: sequential(),
    );
  }
}
