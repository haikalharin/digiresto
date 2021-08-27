import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/entity/key_value_model.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:get/get.dart';

class OrderCartScreenViewController extends GetxController {
  var loading = new Loading().obs;
  var useSchedule = Rxn<bool>();
  var reloadCounter = 0.obs;
  var selectedDate = Rxn<DateTime>();
  var notesSubmited = true.obs;
  var selectedValueClock = Rxn<String>();
  var selectedValueSmoking = Rxn<String>();
  Rxn<DetailOutletDataResponse> detailOutlet = Rxn<DetailOutletDataResponse>();
  Rxn<List<OutletListProductDataResponse>> listProduct =
      Rxn<List<OutletListProductDataResponse>>();
  Rxn<CartSessionResponse> cartSession = Rxn<CartSessionResponse>();
  var activeAddress = Rxn<UserAddress>();

  RxList<KeyValueModel> dataSmoking = [
    KeyValueModel(key: "1", value: "Smoking"),
    KeyValueModel(key: "2", value: "Non Smoking"),
  ].obs;

  RxList<KeyValueModel> dataClock = [
    KeyValueModel(key: "13:00", value: "13:00"),
    KeyValueModel(key: "14:00", value: "14:00"),
    KeyValueModel(key: "15:00", value: "15:00"),
    KeyValueModel(key: "16:00", value: "16:00"),
    KeyValueModel(key: "17:00", value: "17:00"),
    KeyValueModel(key: "18:00", value: "18:00"),
    KeyValueModel(key: "19:00", value: "19:00"),
    KeyValueModel(key: "20:00", value: "20:00"),
    KeyValueModel(key: "21:00", value: "21:00"),
    KeyValueModel(key: "22:00", value: "22:00"),
    KeyValueModel(key: "23:00", value: "23:00"),
    KeyValueModel(key: "24:00", value: "24:00"),
  ].obs;
}
