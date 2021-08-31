import 'dart:core';

import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/order/order_cart_screen_view_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/transaction/transaction_history_taxes_and_services.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/list/list_product_cart_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'detailProductDialog.dart';

class OrderCartScreen extends GetView<OrderCartScreenViewController> {
  // UserStore _userStore;
  // OrderStore _orderStore;
  //TransactionStore _transactionStore;

  void loadingAdd() {
    controller.loading.value.add();
  }

  void loadingDelete() {
    controller.loading.value.delete();
  }

  final ScrollController _scrollController = new ScrollController();
  final notesController = TextEditingController();
  final placeInfoController = TextEditingController();
  final voucherCodeController = TextEditingController();
  final paxController = TextEditingController();
  final selectedDateController = TextEditingController();

  //List<PaymentMethod> _paymentMethods;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  void didChangeDependencies() {
    //super.didChangeDependencies();
    // _userStore = Provider.of<UserStore>(context);
    // _orderStore = Provider.of<OrderStore>(context);
    // _transactionStore = Provider.of<TransactionStore>(context);
    initDialogPlace();

    // print(
    //     'DEBUG >> transactionData on cart_store ${_orderStore.transactionData}');

    // _orderStore.getPaymentMethod().then((value) {
    //   print(value.toList().toString());
    //   // setState(() {
    //   //   _paymentMethods = value;
    //   // });
    // });

    // _userStore.getBalance().then((value) => {});

    // if (_orderStore.orderSalesTypes == 'onlineDriver') {
    //   _orderStore.deliveryInquiry({
    //     "location": [_userStore.activeAddressLat, _userStore.activeAddresslng]
    //   });
    // }
  }

  void getCartSession() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getCartSession());
  }

  void initDialogPlace() {
    controller.useSchedule.value = false;
    paxController.text = "1";
    controller.selectedDate.value = DateTime.now();
    controller.selectedValueClock.value = "13:00";
    controller.selectedValueSmoking.value = "1";
    selectedDateController.text =
        new DateFormat("yyyy/MM/dd").format(DateTime.now());
  }

  String getValueSmoking(String key) {
    for (int i = 0; i <= controller.dataSmoking.toList().length; i++) {
      if (controller.dataSmoking.toList()[i].key == key) {
        return controller.dataSmoking.toList()[i].value!;
      }
    }
    return "";
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: controller.selectedDate.value!, // Refer step 1
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
    if (picked != null && picked != controller.selectedDate.value!) {
      controller.selectedDate.value = picked;
      selectedDateController.text = new DateFormat("yyyy/MM/dd").format(picked);
    }
  }

  Widget _notes() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //if (_orderStore.orderSalesTypes == 'dineIn')

                  // Text("Info Makan di Tempat",
                  //     style: TextStyle(
                  //       fontFamily: "roboto",
                  //       //color: Colors.white,
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.bold,
                  //     )),
                  // //if (_orderStore.orderSalesTypes == 'dineIn')
                  // Container(
                  //   padding: const EdgeInsets.only(top: 5, bottom: 10),
                  //   child: TextField(
                  //       textInputAction: TextInputAction.search,
                  //       onSubmitted: (value) {},
                  //       controller: placeInfoController,
                  //       readOnly: true,
                  //       onTap: () {
                  //         _dialogPlace(Get.context!);
                  //       },
                  //       style: TextStyle(
                  //         fontSize: 14.0,
                  //       ),
                  //       decoration: InputDecoration(
                  //         isDense: true,
                  //         filled: true,
                  //         fillColor: AppColors.greyFill,
                  //         contentPadding: EdgeInsets.only(
                  //             top: 12, bottom: 12, left: 10, right: 10),
                  //         hintText: "",
                  //         border: OutlineInputBorder(
                  //             borderSide:
                  //                 BorderSide(color: Colors.black, width: 32.0),
                  //             borderRadius: BorderRadius.circular(5)),
                  //         enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.all(Radius.circular(5)),
                  //           borderSide:
                  //               BorderSide(width: 1, color: Colors.black),
                  //         ),
                  //       )),
                  // ),
                  Row(
                    children: [
                      Text("Catatan",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text("opsional",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black87,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: TextField(
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {},
                        onChanged: (text) {
                          controller.notesSubmited.value = false;
                        },
                        controller: notesController,
                        readOnly: false,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: AppColors.greyFill,
                          contentPadding: EdgeInsets.only(
                              top: 12, bottom: 12, left: 10, right: 10),
                          hintText: "Contoh, tidak pakai bawang",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 32.0),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                        )),
                  ),
                  controller.notesSubmited.value == false
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(top: 5),
                              //width: MediaQuery. of(context). size. width-200,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                height: 55,
                                child: RaisedButton(
                                  onPressed: () {
                                    controller.notesSubmited.value = true;
                                  },
                                  color: AppColors.red,
                                  child: Text("Simpan",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                    side: BorderSide(
                                      width: 1,
                                      color: AppColors.redYoung,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container()
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Widget titleDetailOutlet() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Outlet", style: AppFont.textBlack14Regular),
                      Row(
                        children: [
                          Text(controller.detailOutlet.value!.name,
                              style: AppFont.textBlack14Bold),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDialogSalesType() async {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        backgroundColor: Colors.white,
        context: Get.context!,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              ListTile(
                // leading: GestureDetector(
                //   onTap: () {
                //     Get.back();
                //   },
                //   child: ImageIcon(
                //     AssetImage(AppAssets.iconBackBlack),
                //     color: Colors.black,
                //   ),
                // ),
                title: Container(
                  //make title to center
                  //transform: Matrix4.translationValues(-24, 0, 0),
                  child: Center(
                    child: new Text(
                      'Silahkan pilih tipe order',
                      style: AppFont.textBlack17Bold,
                    ),
                  ),
                ),
                enabled: false,
              ),
              Column(
                children: controller.generateListSalesTypeOption((element) {
                  Get.context!
                      .read<OrderBloc>()
                      .add(OrderEvent.setSalesTypeCart(element));
                  Get.back(closeOverlays: true);
                }),
              ),
              SizedBox(
                height: 16,
              )
            ],
          );
        });
  }

  Widget _selectSalesTypeMethod() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tipe Order", style: AppFont.textBlack14Regular),
                      Row(
                        children: [
                          controller.generateSalesTypeIcon(
                              color: AppColors.redD42C35),
                          SizedBox(width: 8),
                          Text(
                              Utils.formatSalesType(
                                  controller.salesType.value ?? ""),
                              style: AppFont.textBlack14Bold),
                        ],
                      )
                    ],
                  ),
                  if (controller.salesType.value != null)
                    FlatButton(
                        onPressed: () {
                          _showDialogSalesType();
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.red,
                          ),
                        ),
                        child: Text('Ubah',
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                  else
                    FlatButton(
                        onPressed: () {
                          _showDialogSalesType();
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.red,
                          ),
                        ),
                        child: Text('Pilih',
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Widget _paymentMethod() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Metode Pembayaran",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      if ("_orderStore.orderPaymentTypeText" != null)
                        Text("_orderStore.orderPaymentTypeText",
                            style: TextStyle(
                              fontFamily: "roboto",
                              //color: Colors.white,
                              fontSize: 14,
                            )),
                    ],
                  ),
                  if ("_orderStore.orderPaymentTypeText" != null)
                    FlatButton(
                        onPressed: () {
                          Navigator.of(Get.context!)
                              .pushNamed(Routers.selectPaymentMethod);
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.red,
                          ),
                        ),
                        child: Text('Ubah',
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                  else
                    FlatButton(
                        onPressed: () {
                          Navigator.of(Get.context!)
                              .pushNamed(Routers.selectPaymentMethod);
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.red,
                          ),
                        ),
                        child: Text('Pilih',
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Widget _deliveryMethod() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pesan Antar",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      if ("_orderStore.selectedDeliveryMethod" != null)
                        Text("_orderStore.selectedDeliveryMethod['name']",
                            style: TextStyle(
                              fontFamily: "roboto",
                              //color: Colors.white,
                              fontSize: 14,
                            )),
                    ],
                  ),
                  if ("_orderStore.selectedDeliveryMethod" != null)
                    FlatButton(
                        onPressed: () {
                          Navigator.of(Get.context!)
                              .pushNamed(Routers.selectDeliveryMethod);
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.red,
                          ),
                        ),
                        child: Text('Ubah',
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                  else
                    FlatButton(
                        onPressed: () {
                          Navigator.of(Get.context!)
                              .pushNamed(Routers.selectDeliveryMethod);
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.red,
                          ),
                        ),
                        child: Text('Pilih',
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailPayment() {
    //final transaction = _orderStore.countedTransaction;
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Detail Payment",
                      style: TextStyle(
                        fontFamily: "roboto",
                        //color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal'),
                      Text("Rp." +
                          Utils.formatRupiah(controller
                              .cartSession.value!.transactionData.subtotal
                              .toString()))
                    ],
                  ),
                  // for (var i = 0; i < transaction.taxesAndServices.length; i++)
                  //   _buildTaxAndServiceList(transaction.taxesAndServices[i]),
                  // if (_orderStore.orderSalesTypes == 'onlineDriver' &&
                  //     _orderStore.selectedDeliveryMethod != null)
                  //   SizedBox(
                  //     height: 5,
                  //   ),
                  // if (_orderStore.orderSalesTypes == 'onlineDriver' &&
                  //     _orderStore.selectedDeliveryMethod != null)
                  //   Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //           'Delivery - ${_orderStore.selectedDeliveryMethod['name']}'),
                  //       Text("Rp." +
                  //           Utils.formatRupiah(
                  //               transaction.deliveryAmount.toString()))
                  //     ],
                  //   ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total'),
                      Text("Rp." +
                          Utils.formatRupiah(controller
                              .cartSession.value!.transactionData.totalPayment
                              .toString()))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                      minWidth: double.infinity,
                      onPressed: () async {
                        //validation
                        // if (_orderStore.orderPaymentType == null) {
                        //   ErrorPopupWidget.show(context, "Digiresto",
                        //       "Anda belum memilih pembayaran, silahkan pilih metode pembayaran terlebih dahulu untuk mengakses halaman ini",
                        //       () {
                        //     Navigator.of(context).pop();
                        //     Navigator.of(context)
                        //         .pushNamed(Routers.selectPaymentMethod);
                        //   });
                        // } else if (placeInfoController.text == "" &&
                        //     _orderStore.orderSalesTypesCode == "DI") {
                        //   ErrorPopupWidget.show(context, "Digiresto",
                        //       "Info Makan di Tempat tidak boleh kosong", () {
                        //     Navigator.of(context).pop();
                        //     _dialogPlace(context);
                        //   });
                        // } else {
                        //   ErrorPopupWidget.confirmation(context, "Digiresto",
                        //       "Apakah Anda yakin dengan orderan ini?",
                        //       () async {
                        //     Navigator.of(context).pop();
                        //     Loading.show();
                        //     print('DEBUG >> do checkout');
                        //     var checkoutResponse =
                        //         await _orderStore.checkout().catchError((err) {
                        //       print("error response checkout 1:");
                        //       print(err);
                        //       Loading.dismiss();
                        //       ErrorPopupWidget.show(
                        //           context, "Digiresto", "Transaksi gagal", () {
                        //         Navigator.of(context).pop();
                        //       });
                        //     });
                        //     if (checkoutResponse.receiptCode == "") {
                        //       Loading.dismiss();
                        //       print("error response cheeckout 2:");
                        //     } else if (checkoutResponse.payment.isCredit) {
                        //       await _orderStore.getTransaction();
                        //       await _transactionStore
                        //           .getOngoingTransaction()
                        //           .then((res) {
                        //         print(
                        //             "success get data ongoing transaction : ");
                        //       }).catchError((err) {
                        //         print("error response: " + err.toString());
                        //         ErrorPopupWidget.showDioError(
                        //             context, err, null);
                        //       });
                        //       Loading.dismiss();
                        //       Navigator.of(context).pushNamedAndRemoveUntil(
                        //           Routes.payment_receipt, (_) => false);
                        //     } else if (checkoutResponse.payment.isWebView) {
                        //       Loading.dismiss();
                        //       Navigator.of(context).pushNamedAndRemoveUntil(
                        //           Routes.payment_web_view, (_) => false);
                        //     } else if (checkoutResponse.payment.isDeeplink) {
                        //       //Need test on real device to simulate open payment app
                        //       Loading.dismiss();
                        //       LaunchUrl.run(checkoutResponse.payment.deeplink);
                        //     } else {
                        //       Loading.dismiss();
                        //       if (checkoutResponse
                        //           .payment.paymentCode.isNotEmpty) {
                        //         Navigator.of(context).pushNamedAndRemoveUntil(
                        //             Routers.paymentVa, (_) => false);
                        //       }
                        //     }
                        //   }
                        //   );
                        // }
                      },
                      color: AppColors.red,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        'Order',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  _dialogPlace(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return Container(
                  height: (controller.useSchedule.value ?? false) ? 350 : 270,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text("Info Makan di Tempat",
                            style: TextStyle(
                              fontFamily: "roboto",
                              //color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gunakan Jadwal",
                              style: TextStyle(
                                fontFamily: "roboto",
                                //color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )),
                          Switch(
                            value: controller.useSchedule.value!,
                            onChanged: (value) {
                              setState(() {
                                controller.useSchedule.value = value;
                              });
                            },
                            activeTrackColor: Colors.redAccent,
                            activeColor: AppColors.redYoung,
                          )
                        ],
                      ),
                      controller.useSchedule.value!
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Jadwal",
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 10),
                                        child: TextField(
                                            textInputAction:
                                                TextInputAction.search,
                                            onSubmitted: (value) {},
                                            controller: selectedDateController,
                                            readOnly: true,
                                            onTap: () {
                                              _selectDate(context);
                                            },
                                            style: TextStyle(
                                              fontSize: 12.0,
                                            ),
                                            decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: AppColors.greyFill,
                                              contentPadding: EdgeInsets.only(
                                                  top: 12,
                                                  bottom: 12,
                                                  left: 10,
                                                  right: 10),
                                              hintText:
                                                  "Contoh, tidak pakai bawang",
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 32.0),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5)),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.black),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        width: 80,
                                        child: DropdownButtonFormField<String>(
                                          decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: AppColors.greyFill,
                                              contentPadding: EdgeInsets.only(
                                                  top: 8,
                                                  bottom: 8,
                                                  left: 5,
                                                  right: 5),
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              )),
                                          value: controller
                                              .selectedValueClock.value,
                                          items: controller.dataClock
                                              .toList()
                                              .map((data) =>
                                                  DropdownMenuItem<String>(
                                                    child: Text(data.value!),
                                                    value: data.key,
                                                  ))
                                              .toList(),
                                          onChanged: (String? value) {
                                            setState(() {
                                              controller.selectedValueClock
                                                  .value = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Container(),
                      Container(
                        child: Text("Pax",
                            style: TextStyle(
                              fontFamily: "roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5, bottom: 10),
                        child: TextField(
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) {},
                            controller: paxController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered,
                            readOnly: false,
                            onTap: () {},
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: AppColors.greyFill,
                              contentPadding: EdgeInsets.only(
                                  top: 12, bottom: 12, left: 10, right: 10),
                              hintText: "",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 32.0),
                                  borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                            )),
                      ),
                      Container(
                        child: Text("Smoking / Non Smoking",
                            style: TextStyle(
                              fontFamily: "roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: AppColors.greyFill,
                              contentPadding: EdgeInsets.only(
                                  top: 8, bottom: 8, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              )),
                          value: controller.selectedValueSmoking.value,
                          items: controller.dataSmoking
                              .toList()
                              .map((data) => DropdownMenuItem<String>(
                                    child: Text(data.value!),
                                    value: data.key,
                                  ))
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              controller.selectedValueSmoking.value = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: MediaQuery.of(context).size.width - 260,
                              child: RaisedButton(
                                onPressed: () {
                                  placeInfoController.text = "";
                                  initDialogPlace();
                                  Navigator.of(context).pop();
                                },
                                color: Colors.white,
                                child: Text("Batal",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.redYoung)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: MediaQuery.of(context).size.width - 260,
                              child: RaisedButton(
                                onPressed: () {
                                  String txt = "";
                                  // if (useSchedule) {
                                  //   txt = selectedDateController.text
                                  //           .toString() +
                                  //       " " +
                                  //       _selectedValueClock +
                                  //       " " +
                                  //       paxController.text.toString() +
                                  //       " pax, " +
                                  //       getValueSmoking(_selectedValueSmoking);
                                  // } else {
                                  //   txt = "Now, " +
                                  //       paxController.text.toString() +
                                  //       " pax, " +
                                  //       getValueSmoking(_selectedValueSmoking);
                                  // }
                                  placeInfoController.text = txt;
                                  Navigator.of(context).pop();
                                },
                                color: AppColors.red,
                                child: Text("Ok",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ));
  }

  Widget _useVoucherCode() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kode Voucher",
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(Get.context!).size.width / 1.5,
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: TextField(
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) {},
                            controller: voucherCodeController,
                            readOnly: false,
                            onTap: () {},
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: AppColors.greyFill,
                              contentPadding: EdgeInsets.only(
                                  top: 12, bottom: 12, left: 10, right: 10),
                              hintText: "Masukkan Kode Voucher",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 32.0),
                                  borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                            )),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: 5),
                        //width: MediaQuery. of(context). size. width-200,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {},
                            color: AppColors.red,
                            child: Text("Gunakan",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.redYoung,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  void getDetailOutlet() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getDetailOutlet(
        GetDetailOutletParam(
            body: GetDetailOutletBodyParam(),
            queryString: GetDetailOutletQueryParam(
                outletId: controller.cartSession.value!.transactionData.outletId
                    .toString()))));
  }

  void getListProduct() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletListProduct(
        GetOutletProductParam(
            body: GetOutletProductBodyParam(),
            queryString: GetOutletProductQueryParam(
                categoryId: "",
                filter: "",
                limit: 15,
                outletId: controller.cartSession.value!.transactionData.outletId
                    .toString(),
                page: 1))));
  }

  void getSalesTypeOrder() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getSalesTypeCart());
  }

  @override
  Widget build(BuildContext context) {
    getSalesTypeOrder();
    getCartSession();
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        state.maybeMap(
            getCartSessionSuccess: (r) {
              controller.cartSession.value = r.response;
              getDetailOutlet();
              getListProduct();
            },
            getDetailOutletSuccess: (r) {
              controller.detailOutlet.value = r.response;
            },
            getOutletListProductSuccess: (r) {
              controller.listProduct.value = r.response;
            },
            getSalesTypeCartSuccess: (r) {
              controller.salesType.value = r.value;
            },
            orElse: () {});
      },
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              TopBackgound(backgroundColor: AppColors.red),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        _HeaderOrderCart(),
                        controller.detailOutlet.value != null
                            ? titleDetailOutlet()
                            : Container(),
                        controller.salesType.value != null &&
                                controller.detailOutlet.value != null
                            ? _selectSalesTypeMethod()
                            : Container(),

                        _AddressOrderCart(),

                        controller.detailOutlet.value != null &&
                                controller.listProduct.value != null
                            ? _ProductOrderCart()
                            : Container(),
                        _notes(),
                        _useVoucherCode(),
                        _paymentMethod(),
                        _deliveryMethod(),
                        controller.cartSession.value != null
                            ? _detailPayment()
                            : Container()
                        // Observer(builder: (context) => _paymentMethod()),
                        // if (_orderStore.orderSalesTypes == 'onlineDriver')
                        //   Observer(builder: (context) => _deliveryMethod()),
                        // Observer(builder: (context) => _detailPayment()),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildTaxAndServiceList(TransactionHistoryTaxesAndServices item) {
    return Column(
      children: [
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("item.name"),
            Text('Rp.' + Utils.formatRupiah(item.amount.toString())),
          ],
        ),
      ],
    );
  }
}

class _ProductOrderCart extends GetView<OrderCartScreenViewController> {
  void _editCart(TransactionDataItemResponse x, String y) {}

  void _plusProduct(int productId, int qty, int price,
      TransactionDataItemResponse detailProduct) {
    controller.reloadCounter.value++;

    //_orderStore.setProduct(productId, qty, price, detailProduct);
  }

  _showDetailProduct(TransactionDataItemResponse cartProduct,
      OutletListProductDataResponse product, String orderType) {
    //Navigator.push(context,MaterialPageRoute(builder: (context) => Page2())).then((value) { setState(() {});
    Navigator.push(
            Get.context!,
            MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return DetailProductDialog(
                      dataProduct: product,
                      orderType: orderType,
                      mode: "edit",
                      qtyProduct: cartProduct.qty);
                },
                fullscreenDialog: true))
        .then((value) {
      controller.reloadCounter.value++;
    });
  }

  Widget _addNew() {
    return Column(
      children: [
        Container(
          color: AppColors.greyStroke,
          height: 5,
          width: double.infinity,
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text("Mau pesan yang lain ? ",
                        style: TextStyle(
                          fontFamily: "roboto",
                          //color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                      child: Text("Tambahkan pesanan lainnya ",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                height: 35,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(Get.context!).pushNamed(
                        Routers.orderDetailOutlet,
                        arguments: OrderDetailViewArgument(
                            controller.detailOutlet.value!.id,
                            controller.detailOutlet.value!.merchantId));
                  },
                  color: Colors.white,
                  child: Text("Tambah",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red)),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    side: BorderSide(
                      width: 1,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.greyStroke,
          height: 10,
          width: double.infinity,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.only(top: 10, left: 10, right: 5),
          margin: EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "Pesanan",
                  //_orderStore.orderOutlet.detail["name"],
                  //controller.detailOutlet.value != null ? data.outlet["detail"]["name"] : ""
                  style: TextStyle(
                    fontFamily: "roboto",
                    //color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 10),
              //   child: Text(
              //     _orderStore.orderMerchantName.toString(),
              //     //_orderStore.orderOutlet.merchantName,
              //     //controller.detailOutlet.value != null ? data.outlet["detail"]["name"] : ""
              //     style: TextStyle(
              //       fontFamily: "roboto",
              //       //color: Colors.white,
              //       fontSize: 14,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),

              //#######
              Container(
                width: double.infinity,
                child: ListProductCartWidget(
                    addOrRemove: _plusProduct,
                    orderType:
                        controller.cartSession.value!.transactionData.salesType,
                    productCart:
                        controller.cartSession.value!.transactionData.items,
                    runDetailAction: _showDetailProduct,
                    runEditAction: _editCart,
                    scrollDirection: Axis.vertical,
                    product: controller.listProduct.value!),
              ),
            ],
          ),
        ),
        _addNew(),
      ],
    );
  }
}

class _AddressOrderCart extends GetView<OrderCartScreenViewController> {
  void getActiveAddress() {
    Get.context!
        .read<AddressListBloc>()
        .add(AddressListEvent.getActiveAddress());
  }

  @override
  Widget build(BuildContext context) {
    getActiveAddress();
    return BlocConsumer<AddressListBloc, AddressListState>(
        listener: (context, state) {
      state.maybeMap(
          getActiveAddressSuccess: (r) {
            controller.activeAddress.value = r.response;
          },
          setActiveAddressSuccess: (r) {
            controller.activeAddress.value = r.response;
          },
          orElse: () {});
    }, builder: (context, state) {
      return Obx(() => Theme(
            data: Theme.of(Get.context!).copyWith(
              primaryColor: Colors.black,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lokasi Pengiriman",
                                style: AppFont.textBlack14Regular),
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage(AppAssets.iconMarkerMove),
                                  color: AppColors.redD42C35,
                                  size: 16,
                                ),
                                SizedBox(width: 8),
                                Text(controller.activeAddress.value?.name ?? "",
                                    style: AppFont.textBlack14Bold),
                              ],
                            )
                          ],
                        ),
                        if (controller.salesType.value != null)
                          FlatButton(
                              onPressed: () {
                                Get.toNamed(Routers.homeAllAddress)!
                                    .then((value) {
                                  getActiveAddress();
                                });
                              },
                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
                              ),
                              child: Text('Ubah',
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                  )))
                        else
                          FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
                              ),
                              child: Text('Pilih',
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                  )))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            width: Get.width * 0.85,
                            child: Obx(() => Text(
                                  controller.activeAddress.value?.address ?? "",
                                  style: AppFont.textBlack12Regular
                                      .copyWith(color: AppColors.grey747474),
                                )),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.greyF6F6F6,
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    color: AppColors.greyStroke,
                    height: 10,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ));
    });
  }
}

class _HeaderOrderCart extends GetView<OrderCartScreenViewController> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bgHome),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                  icon: new Icon(Icons.arrow_back_outlined,
                      color: Colors.white, size: 24.0),
                  onPressed: () {
                    //if (_userStore.activeHistoryScreen=='profile.address'){
                    //_userStore.setActivedHomeTab("home");
                    Navigator.of(Get.context!).pushNamed(Routers.home);
                    //}
                  },
                ),
                Container(
                  child: Text("Detail Order",
                      //controller.detailOutlet.value != null ? data.outlet["detail"]["name"] : ""
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ),
                Container(
                  width: 50,
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
