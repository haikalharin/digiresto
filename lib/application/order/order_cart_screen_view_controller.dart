import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/home/home_navigation_view_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/entity/key_value_model.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/payment_method_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:digiresto/domain/transaction/payment_receipt_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_va_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/infrastructure/network/apis/order/order_repository.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'bloc/order_bloc.dart';

@injectable
class OrderCartScreenViewController extends GetxController {
  final OrderRepository _orderRepository;
  OrderCartScreenViewController(this._orderRepository);
  var isLoading = true.obs;
  var useSchedule = Rxn<bool>();
  var reloadCounter = 0.obs;
  var selectedDate = Rxn<DateTime>();
  var notesSubmited = true.obs;
  var selectedKeyClock = Rxn<String>();
  var selectedKeySmoking = Rxn<String>();
  var dineInIDMethod = Rxn<OrderCartDineInModel>();
  Rxn<DetailOutletDataResponse> detailOutlet = Rxn<DetailOutletDataResponse>();
  Rxn<List<OutletListProductDataResponse>> listProduct =
      Rxn<List<OutletListProductDataResponse>>();
  Rxn<CartSessionResponse> cartSession = Rxn<CartSessionResponse>();
  var activeAddress = Rxn<UserAddress>();
  var salesType = Rxn<String>();
  var paymentMethod = Rxn<PaymentMethodDataResponse>();
  var deliveryMethod = Rxn<DeliveryMethodDataResponse>();
  var voucherMethod = Rxn<GetListVoucherOutletDataResponse>();
  var checkoutResponse = Rxn<CheckoutDataResponse>();

  RxList<KeyValueModel> dataSmoking = [
    KeyValueModel(key: "1", value: "Smoking"),
    KeyValueModel(key: "2", value: "Non Smoking"),
  ].obs;

  void removeCartSession() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.removeCartSession());
    update();
  }

  void getCartSession() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.getCartSession());
    update();
  }

  void updateCartParam() async {
    Get.context!
        .read<OrderBloc>()
        .add(OrderEvent.updateCart(notesController.text));
    update();
  }

  void setDineInMethodID() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.setDineInIDMethod(
        OrderCartDineInModel(
            pax: int.parse(paxController.text),
            selectedDate: selectedDate.value!,
            selectedKeyClock: selectedKeyClock.value!,
            selectedKeySmoking: selectedKeySmoking.value!,
            useSchedule: useSchedule.value!)));
    update();
  }

  void parseDineInMethodID() async {
    final value = dineInIDMethod.value!;
    useSchedule.value = value.useSchedule;
    paxController.text = value.pax.toString();
    selectedDate.value = value.selectedDate;
    selectedKeyClock.value = value.selectedKeyClock;
    selectedKeySmoking.value = value.selectedKeySmoking;
    selectedDateController.text =
        new DateFormat("yyyy/MM/dd").format(value.selectedDate);
    update();
  }

  String getValueSmoking(String key) {
    for (int i = 0; i <= dataSmoking.toList().length; i++) {
      if (dataSmoking.toList()[i].key == key) {
        return dataSmoking.toList()[i].value!;
      }
    }
    return "";
  }

  final ScrollController scrollController = new ScrollController();
  final notesController = TextEditingController();
  final placeInfoController = TextEditingController();
  final voucherCodeController = TextEditingController();
  final paxController = TextEditingController();
  final selectedDateController = TextEditingController();

  @override
  onInit() {
    super.onInit();
    initDialogPlace();
  }

  void initDialogPlace() async {
    useSchedule.value = false;
    paxController.text = "1";
    selectedDate.value = DateTime.now();
    selectedKeyClock.value = "13:00";
    selectedKeySmoking.value = "1";
    selectedDateController.text =
        new DateFormat("yyyy/MM/dd").format(DateTime.now());
    update();
  }

  void addCart(
    int productId,
    int qty,
    bool isBuyNow,
  ) async {
    var productParam = CreateUpdateCartSessionItemParam(
        modifiers: [], note: '', productId: productId, qty: qty);
    Get.context!.read<OrderBloc>().add(OrderEvent.addCart(
          productParam,
          detailOutlet.value!,
          salesType.value!,
          isBuyNow,
        ));
    update();
  }

  void removeCart(int productId) async {
    var productParam = CreateUpdateCartSessionItemParam(
        modifiers: [], note: '', productId: productId, qty: 0);
    Get.context!.read<OrderBloc>().add(OrderEvent.removeCart(productParam));
    update();
  }

  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value!, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(
            //isMaterialAppTheme: true,
            child: child!,
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light().copyWith(primary: AppColors.red),
              primaryColor: AppColors.red,
            ));
      },
    );
    if (picked != null && picked != selectedDate.value!) {
      selectedDate.value = picked;
      selectedDateController.text = new DateFormat("yyyy/MM/dd").format(picked);
    }
  }

  void checkCartSession() async {
    if (cartSession.value!.transactionData!.items.length <= 1) {
      isLoading.value = false;
      Get.find<HomeNavigationViewController>().selectedTabIndex.value = 0;
      Get.offNamedUntil(Routers.home, (route) => false);
    }
    if (checkoutResponse.value?.receiptCode == "") {
      isLoading.value = false;
      print("error response cheeckout 2:");
    } else if (checkoutResponse.value?.payment.isCredit ?? false) {
      Get.offNamed(Routers.paymentReceipt,
          arguments: PaymentReceiptViewArgument(
              fromOrder: true,
              receiptCode: checkoutResponse.value!.receiptCode));
      isLoading.value = false;
    } else if (checkoutResponse.value?.payment.isWebView ?? false) {
      isLoading.value = false;
      Get.offNamed(Routers.paymentWebView,
          arguments: PaymentWebViewArgument(
              checkoutDataResponse: checkoutResponse.value!));
    } else if (checkoutResponse.value?.payment.isDeeplink ?? false) {
      isLoading.value = false;
      LaunchUrl.runDeeplink(checkoutResponse.value!.payment.deeplink,
          onError: () {
        ErrorPopupWidget.show("Error", "App Launch Error", () {
          Get.offNamed(Routers.paymentReceipt,
              arguments: PaymentReceiptViewArgument(
                  fromOrder: true,
                  receiptCode: checkoutResponse.value!.receiptCode));
        });
      }, onSuccess: () {
        Get.offNamed(Routers.paymentReceipt,
            arguments: PaymentReceiptViewArgument(
                fromOrder: true,
                receiptCode: checkoutResponse.value!.receiptCode));
      });
    } else {
      isLoading.value = false;
      if (checkoutResponse.value?.payment.paymentCode != null) {
        final userProfile = (await _orderRepository.getLocalUserProfile())!;
        Get.offNamed(Routers.paymentVa,
            arguments: PaymentVAViewArgument(
                userProfile: userProfile,
                checkoutDataResponse: checkoutResponse.value!));
      }
    }
    update();
  }

  void getDetailOutlet() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.getDetailOutlet(
        GetDetailOutletParam(
            body: GetDetailOutletBodyParam(),
            queryString: GetDetailOutletQueryParam(
                outletId:
                    cartSession.value!.transactionData!.outletId.toString()))));
    update();
  }

  void getListProduct() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletListProduct(
        GetOutletProductParam(
            body: GetOutletProductBodyParam(),
            queryString: GetOutletProductQueryParam(
                categoryId: "",
                filter: "",
                limit: 15,
                outletId:
                    cartSession.value!.transactionData!.outletId.toString(),
                page: 1))));
    update();
  }

  void getCartCache() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getPaymentMethodID());
    Get.context!.read<OrderBloc>().add(OrderEvent.getDeliveryMethodID());
    Get.context!.read<OrderBloc>().add(OrderEvent.getVoucherMethodID());
    Get.context!.read<OrderBloc>().add(OrderEvent.getSalesTypeCart());
    Get.context!.read<OrderBloc>().add(OrderEvent.getDineInIDMethod());
    update();
  }

  void getActiveAddress() {
    Get.context!
        .read<AddressListBloc>()
        .add(AddressListEvent.getActiveAddress());
    update();
  }

  void checkAllLoaded() {
    if (cartSession.value != null &&
        detailOutlet.value != null &&
        listProduct.value != null) {
      isLoading.value = false;
    }
    update();
  }

  Widget generateSalesTypeIcon({Color color = Colors.black, double size = 16}) {
    Widget listWidget;

    if (salesType.value == "dineIn") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderDineIn),
          size: size, color: color);
    } else if (salesType.value == "takeAway") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderTakeIt),
          size: size, color: color);
    } else if (salesType.value == "onlineDriver") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderDelivery),
          size: size, color: color);
    } else if (salesType.value == "driveThru") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderDriveThru),
          size: size, color: color);
    } else {
      listWidget = Container();
    }

    return listWidget;
  }

  List<Widget> generateListSalesTypeOption(onTap(String element)) {
    List<Widget> listWidget = [];
    detailOutlet.value!.salesTypes.forEach((element) {
      if (element == "dineIn") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDineIn),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text(I10n.current.landing_dine_in,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      } else if (element == "takeAway") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderTakeIt),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text(I10n.current.landing_take_away,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      } else if (element == "onlineDriver") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDelivery),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text(I10n.current.landing_delivery,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      } else if (element == "driveThru") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDriveThru),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text(I10n.current.landing_drive_thru,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      }
    });
    return listWidget;
  }

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
