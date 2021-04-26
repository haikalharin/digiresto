import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/models/order/detail_outlet_model.dart';
import 'package:boilerplate/models/order/hot_promo_model.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/models/order/promo_outlet_model.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/utils/dio/dio_error_util.dart';
import 'package:mobx/mobx.dart';

part 'transaction_store.g.dart';

class TransactionStore = _TransactionStore with _$TransactionStore;

abstract class _TransactionStore with Store {
  // repository instance
  Repository _repository;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _TransactionStore(Repository repository) : this._repository = repository;

  @observable
  List<TransactionHistory> listTransactionHistory;

  @action
  Future<List<TransactionHistory>>  getTransactionHistory() async {
    return await _repository.getTransactionHistory().then((res) {
      this.listTransactionHistory = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }
}
