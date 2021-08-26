import 'dart:async';

import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:digiresto/domain/entity/response_model.dart' as ResponseStatus;
import 'package:digiresto/domain/entity/transaction/transaction_history.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TransactionApi {
  final INetworkService _networkService;

  // injecting dio instance
  TransactionApi(this._networkService);

  Future<List<TransactionHistory>> getTransactionHistory() async {
    try {
      String apiUrl = Endpoints.urlGetTransactionHistory;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {"outletName": ""},
        "body": {}
      });

      var transactionHistory = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<TransactionHistory> listTransactionHistory = [];
      for (int i = 0; i < transactionHistory.length; i++) {
        listTransactionHistory.add(
            TransactionHistory.createTransactionHistory(transactionHistory[i]));
      }
      return listTransactionHistory;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<TransactionMobile> getTransaction(String receiptCode) async {
    try {
      String apiUrl = Endpoints.urlGetTransaction;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {"receiptCode": receiptCode},
        "body": {}
      });

      var data = (apiResult
          as Map<String, dynamic>)['data']; //mengambil data data didalam
      return TransactionMobile.create(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<TransactionMobile> cancelTransaction(String receiptCode) async {
    try {
      String apiUrl = Endpoints.urlCancelTransaction;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {"receiptCode": receiptCode},
        "body": {}
      });

      var data = (apiResult
          as Map<String, dynamic>)['data']; //mengambil data data didalam
      return TransactionMobile.create(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<ResponseStatus.Response> acceptTransaction(String receiptCode) async {
    try {
      String apiUrl = Endpoints.urlAcceptTransaction;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {"receiptCode": receiptCode},
        "body": {}
      });

      var data = (apiResult
          as Map<String, dynamic>)['response']; //mengambil data data didalam
      return ResponseStatus.Response.createResponse(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<TransactionHistory>> getOngoingTransaction() async {
    try {
      String apiUrl = Endpoints.urlOngoingTransaction;
      final apiResult = await _networkService
          .postHttp(path: apiUrl, content: {"query_string": {}, "body": {}});

      var ongoingTransaction = (apiResult as Map<String, dynamic>)['data'];
      List<TransactionHistory> listTransactionHistory = [];
      for (int i = 0; i < ongoingTransaction.length; i++) {
        listTransactionHistory.add(
            TransactionHistory.createTransactionHistory(ongoingTransaction[i]));
      }
      return listTransactionHistory;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
