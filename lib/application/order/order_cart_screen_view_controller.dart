import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
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
import 'package:digiresto/domain/order/i_order_repository.dart';
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:digiresto/domain/order/order_cart_drive_thru_model.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/domain/promo_voucher/voucher_detail_arguments.dart';
import 'package:digiresto/domain/transaction/payment_receipt_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_va_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'bloc/order_bloc.dart';

@injectable
class OrderCartScreenViewController extends GetxController {
  final IOrderRepository _orderRepository;

  OrderCartScreenViewController(this._orderRepository);

  var isLoading = true.obs;
  var useSchedule = Rxn<bool>();

  var reloadCounter = 0.obs;
  var selectedDate = Rxn<DateTime>();
  var notesSubmited = true.obs;
  var selectedKeyClock = Rxn<String>();
  var selectedKeySmoking = Rxn<String>();
  var dineInIDMethod = Rxn<OrderCartDineInModel>();
  var driveThruIDMethod = Rxn<OrderCartDriveThruModel>();
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
  var listOrderPending = RxList<OrderPending>();
  var cartFailMessage = Rxn<StatusMessageDisplayResponse>();
  var refreshlocation = ''.obs;
  bool noteIsSubmite = false;
  bool detailLocationIsSubmited = false;

  RxList<KeyValueModel> dataSmoking = [
    KeyValueModel(key: "1", value: "Smoking"),
    KeyValueModel(key: "2", value: "Non Smoking"),
  ].obs;

  Future<void> getTransactionPending() async {
    await Get.context!.read<OrderBloc>()
      ..add(OrderEvent.getTransactionPending());
    update();
    return;
  }

  Future<void> updateState() async {
    update();
    return;
  }

  void setTransactionPending(IList<OrderPending> list) {
    listOrderPending.value = list.toList();
    print('list : ${list.toString()}');
    update();
  }

  void removeCartSession() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.removeCartSession());
    update();
  }

  void updateCartParam() async {
    Get.context!.read<OrderBloc>().add(OrderEvent.updateCart(
          notesController.text,
          detailOutlet.value!.merchantName!,
        ));
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

  void setDriveThruMethodID() async {
    Get.context!.read<OrderBloc>().add(
          OrderEvent.setDriveThruIDMethod(
            OrderCartDriveThruModel(
              customerCarType: customerCarTypeController.text,
              customerCarNumber: customerCarNumberController.text,
              customerCarColor: customerCarColorController.text,
              selectedKeyClock: selectedKeyClock.value!,
              selectedDate: selectedDate.value!,
              useSchedule: useSchedule.value!,
            ),
          ),
        );
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
    String txt = "";
    if (useSchedule.value!) {
      txt = selectedDateController.text.toString() +
          " " +
          selectedKeyClock.value! +
          " " +
          paxController.text.toString() +
          " pax, " +
          OrderCartDineInModel.getValueSmoking(selectedKeySmoking.value!);
    } else {
      txt = "Now, " +
          paxController.text.toString() +
          " pax, " +
          OrderCartDineInModel.getValueSmoking(selectedKeySmoking.value!);
    }
    infoControllerDineIn.text = txt;
    update();
  }

  void parseDriveThruMethodID() async {
    final value = driveThruIDMethod.value!;
    useSchedule.value = value.useSchedule;
    customerCarColorController.text = value.customerCarColor;
    customerCarNumberController.text = value.customerCarNumber;
    customerCarTypeController.text = value.customerCarType;
    selectedKeyClock.value = value.selectedKeyClock;
    selectedDateController.text =
        new DateFormat("yyyy/MM/dd").format(value.selectedDate);
    String txt = "";
    if (useSchedule.value!) {
      txt = selectedDateController.text.toString() +
          " " +
          selectedKeyClock.value! +
          ", " +
          customerCarTypeController.text +
          ", " +
          customerCarColorController.text +
          ", " +
          customerCarNumberController.text;
    } else {
      txt = "Now, " +
          customerCarTypeController.text +
          ", " +
          customerCarColorController.text +
          ", " +
          customerCarNumberController.text;
    }
    infoControllerDriveThru.text = txt;
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
  final locationDetailCOntroller = TextEditingController();
  final infoControllerDineIn = TextEditingController();
  final infoControllerDriveThru = TextEditingController();
  final voucherCodeController = TextEditingController();
  final paxController = TextEditingController();
  final selectedDateController = TextEditingController();
  final customerCarColorController = TextEditingController();
  final customerCarNumberController = TextEditingController();
  final customerCarTypeController = TextEditingController();

  @override
  onInit() {
    super.onInit();
    initDialogPlace();
    initDialogDriveThruPlace();
  }

  void initDialogPlace() async {
    useSchedule.value = false;
    paxController.text = "1";
    selectedDate.value = DateTime.now();
    selectedKeyClock.value =
        '${(DateTime.now().hour + 1).toString().padLeft(2, "0")}:00';
    selectedKeySmoking.value = "1";
    selectedDateController.text =
        new DateFormat("yyyy/MM/dd").format(DateTime.now());
    update();
  }

  void initDialogDriveThruPlace() async {
    useSchedule.value = false;
    selectedDate.value = DateTime.now();
    selectedKeyClock.value =
        '${(DateTime.now().hour + 1).toString().padLeft(2, "0")}:00';
    selectedDateController.text =
        new DateFormat("yyyy/MM/dd").format(DateTime.now());
    update();
  }

  void addCart(
    int productId,
    int qty,
    bool isBuyNow,
    TransactionDataItemResponse detailProduct,
  ) async {
    // TODO: potensi cart bisa berubah
    var productParam = CreateUpdateCartSessionItemParam(
      modifiers: [
        ...detailProduct.modifiers
            .map(
              (e) => CreateCartSessionItemModifierParam(
                modifierGroupId: e.modifierGroupId,
                qty: e.qty,
                modifierId: e.modifierId,
              ),
            )
            .toList(),
      ],
      note: '',
      productId: productId,
      qty: qty,
    );
    Get.context!.read<OrderBloc>().add(OrderEvent.addCart(
          productParam,
          detailOutlet.value!,
          salesType.value!,
          isBuyNow,
          detailOutlet.value!.merchantName!,
        ));
    update();
  }

  void removeCart(
    int productId,
    TransactionDataItemResponse detailProduct,
  ) async {
    var productParam = CreateUpdateCartSessionItemParam(modifiers: [
      ...detailProduct.modifiers
          .map(
            (e) => CreateCartSessionItemModifierParam(
              modifierGroupId: e.modifierGroupId,
              qty: e.qty,
              modifierId: e.modifierId,
            ),
          )
          .toList(),
    ], note: '', productId: productId, qty: 0);
    Get.context!.read<OrderBloc>().add(OrderEvent.removeCart(productParam));
    update();
  }

  selectDate(BuildContext context) async {
    final now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value!,
      // Refer step 1
      firstDate: now,
      lastDate: now.add(Duration(days: 365)),
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
    if (picked != null) {
      selectedDate.value = picked;
      selectedDateController.text = new DateFormat("yyyy/MM/dd").format(picked);
      selectedKeyClock.value =
          '${(DateTime.now().hour + 1).toString().padLeft(2, "0")}:00';
    }

    update();
    print('selectedDate.value${selectedDate.value}');
    print(
        'selected :${((selectedDate.value?.add(Duration(days: 1)) ?? DateTime.now().add(Duration(days: 1))).difference(DateTime.now()).inDays) == 0}');
  }

  List<DropdownMenuItem<String>>? getItemsHoursDropdown() {
    return ((selectedDate.value?.add(Duration(days: 1)) ??
                    DateTime.now().add(Duration(days: 1)))
                .difference(DateTime.now())
                .inDays) ==
            0
        ? dataClock
            .where((p) =>
                int.parse(p.key!.substring(0, 2)) > (DateTime.now().hour))
            .toList()
            .map((data) => DropdownMenuItem<String>(
                  child: Text(data.value!),
                  value: data.key,
                ))
            .toList()
        : dataClock
            .toList()
            .map((data) => DropdownMenuItem<String>(
                  child: Text(data.value!),
                  value: data.key,
                ))
            .toList();
  }

  void checkCartSession() async {
    if (cartSession.value!.transactionData!.items.length <= 1) {
      isLoading.value = false;
      getIt<BottomTabCubit>().changeTab(0);
      Get.offAllNamed(Routers.home);
      getIt<HomeBloc>().add(HomeEvent.refresh());
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
    Get.context!.read<OrderBloc>().add(
          OrderEvent.getOutletListProduct(
            GetOutletProductParam(
              body: GetOutletProductBodyParam(),
              queryString: GetOutletProductQueryParam(
                categoryId: "",
                filter: "",
                limit: 15,
                outletId:
                    cartSession.value!.transactionData!.outletId.toString(),
                page: 1,
                isCatering: cartSession.value?.transactionData?.isCatering,
                mealsTypes: cartSession.value?.transactionData?.mealsType,
                preOrderDate: Utils.formatDate(
                    cartSession.value?.transactionData?.preorderDate),
              ),
            ),
          ),
        );
    update();
  }

  Future<void> getCartCache() async {
    normalizeVoucherArgument(Get.arguments);
    await Get.context!.read<OrderBloc>()
      ..add(OrderEvent.getPaymentMethodID())
      ..add(OrderEvent.getDeliveryMethodID())
      ..add(OrderEvent.getVoucherMethodID())
      ..add(OrderEvent.getSalesTypeCart())
      ..add(OrderEvent.getDineInIDMethod())
      ..add(OrderEvent.getDriveThruIDMethod())
      ..add(OrderEvent.getCartSession());
    update();
    return;
  }

  Future<void> getActiveAddress() async {
    await Get.context!.read<AddressListBloc>()
      ..add(AddressListEvent.getActiveAddress());
    update();
    return;
  }

  void getVoucherMethod() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getVoucherMethodID());
    update();
  }

  void checkAllLoaded() {
    if (cartSession.value != null &&
        detailOutlet.value != null &&
        listProduct.value != null) {
      isLoading.value = false;
      if (paymentMethod.value == null && voucherMethod.value != null) {
        Get.context!.read<OrderBloc>().add(
              OrderEvent.mustAddPaymentMethod(),
            );
      }
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
    KeyValueModel(key: "08:00", value: "08:00"),
    KeyValueModel(key: "09:00", value: "09:00"),
    KeyValueModel(key: "10:00", value: "10:00"),
    KeyValueModel(key: "11:00", value: "11:00"),
    KeyValueModel(key: "12:00", value: "12:00"),
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

  void normalizeVoucherArgument(VoucherDetailArguments? arguments) {
    if (arguments != null && arguments.isUseVoucher) {
      GetListVoucherOutletDataResponse? newVoucherModel =
          GetListVoucherOutletDataResponse(
              code: arguments.voucher.code, name: arguments.voucher.name);
      Get.context!.read<OrderBloc>().add(
            OrderEvent.setVoucherMethodID(newVoucherModel),
          );
    }
  }
}
