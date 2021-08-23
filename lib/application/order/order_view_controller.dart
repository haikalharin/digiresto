import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderViewController extends GetxController {
  var page = 1.obs;
  var categoryId = "".obs;
  var search = "".obs;
  var filterCategory = "".obs;
  var searchName = "".obs;
  var orderType = "".obs;
  var orderProductLength = 0.obs;
  var detailOutletLoading = false.obs;

  var orderSalesTypes = "".obs;
  Rx<DeliveryMethod> selectedDeliveryMethod = DeliveryMethod(name: "").obs;
  Rx<TransactionMobile> transaction = TransactionMobile().obs;
  Rxn<DetailOutletDataResponse> detailOutlet = Rxn<DetailOutletDataResponse>();
  Rxn<List<OutletProductCategoryDataResponse>> listCategory =
      Rxn<List<OutletProductCategoryDataResponse>>();
  Rxn<List<OutletListProductDataResponse>> listProduct =
      Rxn<List<OutletListProductDataResponse>>();
  Rxn<List<GetListVoucherOutletDataResponse>> listVoucher =
      Rxn<List<GetListVoucherOutletDataResponse>>();
  Rxn<List<PromoOutletDataResponse>> listPromo =
      Rxn<List<PromoOutletDataResponse>>();
}
