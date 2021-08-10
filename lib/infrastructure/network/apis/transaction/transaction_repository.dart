import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:digiresto/domain/entity/response_model.dart';
import 'package:digiresto/domain/entity/transaction/transaction_history.dart';
import 'package:digiresto/infrastructure/network/apis/transaction/transaction_api.dart';

class TransactionRepository {
  final TransactionApi _transactionApi;

  TransactionRepository(this._transactionApi);
  Future<List<TransactionHistory>> getTransactionHistory() async {
    return await _transactionApi.getTransactionHistory().then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<TransactionHistory>> getOngoingTransaction() async {
    return await _transactionApi.getOngoingTransaction().then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<TransactionMobile> getTransaction(String receiptCode) async {
    return await _transactionApi.getTransaction(receiptCode).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<TransactionMobile> cancelTransaction(String receiptCode) async {
    return await _transactionApi.cancelTransaction(receiptCode).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Response> acceptTransaction(String receiptCode) async {
    return await _transactionApi.acceptTransaction(receiptCode).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
