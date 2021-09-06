import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:digiresto/domain/entity/transaction/transaction_history.dart';
import 'package:digiresto/infrastructure/network/apis/transaction/transaction_api.dart';

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

  Future<TransactionMobile?> getTransaction(String receiptCode) async {
    return await _transactionApi.getTransaction(receiptCode).then((value) {
      return value;
    });
  }

  Future<TransactionMobile?> cancelTransaction(String receiptCode) async {
    return await _transactionApi.cancelTransaction(receiptCode).then((value) {
      return value;
    });
  }

  Future<StatusResponse?> acceptTransaction(String receiptCode) async {
    return await _transactionApi.acceptTransaction(receiptCode).then((value) {
      return value;
    });
  }
}
