import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile_response.dart';
import 'package:digiresto/domain/entity/transaction/param/add_favorite_transaction_param.dart';
import 'package:digiresto/domain/entity/transaction/transaction_history.dart';
import 'package:digiresto/infrastructure/network/apis/transaction/transaction_api.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransactionRepository {
  final TransactionApi _transactionApi;

  TransactionRepository(this._transactionApi);
  Future<List<TransactionHistory>?> getTransactionHistory() async {
    return await _transactionApi.getTransactionHistory().then((value) {
      return value;
    });
  }

  Future<List<TransactionHistory>?> getOngoingTransaction() async {
    return await _transactionApi.getOngoingTransaction().then((value) {
      return value;
    });
  }

  Future<TransactionMobileResponse?> getTransaction(String receiptCode) async {
    return await _transactionApi.getTransaction(receiptCode).then((value) {
      return value;
    });
  }

  Future<TransactionMobileResponse?> cancelTransaction(
      String receiptCode) async {
    return await _transactionApi.cancelTransaction(receiptCode).then((value) {
      return value;
    });
  }

  Future<StatusResponse?> acceptTransaction(String receiptCode) async {
    return await _transactionApi.acceptTransaction(receiptCode).then((value) {
      return value;
    });
  }

  Future<bool> addFavoriteTransaction(
      AddFavoriteTransactionParam request) async {
    return await _transactionApi.addFavoriteTransaction(request).then((value) {
      return value;
    });
  }
}
