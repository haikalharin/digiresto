import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderViewController extends GetxController {
  var page = 1.obs;
  var filterCategory = "".obs;
  var searchName = "".obs;
  var orderType = "".obs;
  var orderProductLength = 0.obs;
  var detailOutletLoading = false.obs;

  var orderSalesTypes = "".obs;
  Rx<DeliveryMethod> selectedDeliveryMethod = DeliveryMethod(name: "").obs;
  Rx<TransactionMobile> transaction = TransactionMobile().obs;
  Rx<DetailOutletDataResponse>? detailOutlet;
}
