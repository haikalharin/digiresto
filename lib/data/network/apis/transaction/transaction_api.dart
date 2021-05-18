import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/order/transaction_mobile.dart';
import 'package:boilerplate/models/response_model.dart' as ResponseStatus;

import 'package:boilerplate/models/transaction/transaction_history.dart';

import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class TransactionApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  TransactionApi(this._dioClient, this._restClient);

  Future<List<TransactionHistory>> getTransactionHistory() async {
    try {
      String apiUrl = Endpoints.urlGetTransactionHistory;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {"outletName": ""},
        "body": {}
      });

      var transactionHistory = (apiResult as Map<String, dynamic>)['data']; //mengambil data data didalam jsonObject
      List<TransactionHistory> listTransactionHistory = [];
      for (int i = 0; i < transactionHistory.length; i++) {
        listTransactionHistory.add(TransactionHistory.createTransactionHistory(transactionHistory[i]));
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
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {"receiptCode": receiptCode},
        "body": {}
      });

      var data = (apiResult as Map<String, dynamic>)['data']; //mengambil data data didalam
      return TransactionMobile.create(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<TransactionMobile> cancelTransaction(String receiptCode) async {
    try {
      String apiUrl = Endpoints.urlCancelTransaction;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {"receiptCode": receiptCode},
        "body": {}
      });

      var data = (apiResult as Map<String, dynamic>)['data']; //mengambil data data didalam
      return TransactionMobile.create(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<ResponseStatus.Response> acceptTransaction(String receiptCode) async {
    try {
      String apiUrl = Endpoints.urlAcceptTransaction;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {"receiptCode": receiptCode},
        "body": {}
      });

      var data = (apiResult as Map<String, dynamic>)['response']; //mengambil data data didalam
      return ResponseStatus.Response.createResponse(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<TransactionHistory>> getOngoingTransaction() async {
    try {
      String apiUrl = Endpoints.urlOngoingTransaction;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {},
        "body": {}
      });

      var ongoingTransaction = (apiResult as Map<String, dynamic>)['data'];
      List<TransactionHistory> listTransactionHistory = [];
      for (int i = 0; i < ongoingTransaction.length; i++) {
        listTransactionHistory.add(TransactionHistory.createTransactionHistory(ongoingTransaction[i]));
      }
      return listTransactionHistory;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
