import 'dart:core';

import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/order/order_cart_screen_view_controller.dart';
import 'package:digiresto/application/transaction/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:digiresto/domain/core/constants/strings.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/transaction/transaction_history_taxes_and_services.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/domain/order/order_select_delivery_method_view_argument.dart';
import 'package:digiresto/domain/order/order_select_payment_method_view_argument.dart';
import 'package:digiresto/domain/order/order_select_voucher_method_view_argument.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/widgets/list/list_product_cart_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'detail_product_dialog.dart';

class OrderCartScreen extends GetView<OrderCartScreenViewController> {
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
                      Text("Catatan", style: AppFont.textBlack14Bold),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text("opsional", style: AppFont.textBlack8Light),
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
                        controller: controller.notesController,
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
                                    updateCartParam();
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
    return Obx(() {
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
    });
  }

  Widget _paymentMethod() {
    String? title = controller.paymentMethod.value?.title
        .replaceAll('%1\$s', Strings.appName);
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageIcon(
                        AssetImage(
                          AppAssets.iconTransfeer,
                        ),
                        size: 24,
                        color: AppColors.redD12B34,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Metode Pembayaran",
                              style: AppFont.textBlack14Bold),
                          if (title != null)
                            Text(title, style: AppFont.textBlack12Light),
                        ],
                      ),
                    ],
                  ),
                  if (controller.paymentMethod.value != null)
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routers.selectPaymentMethod,
                                    arguments:
                                        OrderSelectPaymentMethodViewArgument(
                                            outlet:
                                                controller.detailOutlet.value!,
                                            salestype:
                                                controller.salesType.value!))!
                                .then((value) {
                              Get.context!
                                  .read<OrderBloc>()
                                  .add(OrderEvent.getPaymentMethodID());
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.redD12B34,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(17.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.red,
                              ),
                            ),
                          ),
                          child: Text('Ubah',
                              style: AppFont.textBlack10SemiBold
                                  .copyWith(color: AppColors.white))),
                    )
                  else
                    ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routers.selectPaymentMethod,
                                  arguments:
                                      OrderSelectPaymentMethodViewArgument(
                                          outlet:
                                              controller.detailOutlet.value!,
                                          salestype:
                                              controller.salesType.value!))!
                              .then((value) {
                            Get.context!
                                .read<OrderBloc>()
                                .add(OrderEvent.getPaymentMethodID());
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
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

  Widget _voucherMethod() {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageIcon(
                        AssetImage(
                          AppAssets.iconVoucher,
                        ),
                        size: 24,
                        color: AppColors.redD12B34,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Voucher Saya", style: AppFont.textBlack14Bold),
                          if (controller.voucherMethod.value != null)
                            Text(controller.voucherMethod.value?.name ?? "",
                                style: AppFont.textBlack12Light),
                        ],
                      ),
                    ],
                  ),
                  if (controller.voucherMethod.value != null)
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routers.selectVoucherVoucher,
                                    arguments:
                                        OrderSelectVoucherMethodViewArgument(
                                            outlet: controller
                                                .detailOutlet.value!))!
                                .then((value) {
                              Get.context!
                                  .read<OrderBloc>()
                                  .add(OrderEvent.getVoucherMethodID());
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.redD12B34,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(17.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.red,
                              ),
                            ),
                          ),
                          child: Text('Ubah',
                              style: AppFont.textBlack10SemiBold
                                  .copyWith(color: AppColors.white))),
                    )
                  else
                    ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routers.selectVoucherVoucher,
                                  arguments:
                                      OrderSelectVoucherMethodViewArgument(
                                          outlet:
                                              controller.detailOutlet.value!))!
                              .then((value) {
                            Get.context!
                                .read<OrderBloc>()
                                .add(OrderEvent.getVoucherMethodID());
                          });
                          ;
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageIcon(
                        AssetImage(AppAssets.iconOutletOrderDelivery),
                        size: 24,
                        color: AppColors.redD12B34,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengiriman", style: AppFont.textBlack14Bold),
                          if (controller.deliveryMethod.value != null)
                            Text(
                                controller.deliveryMethod.value?.provider ?? "",
                                style: AppFont.textBlack12Light),
                        ],
                      ),
                    ],
                  ),
                  if (controller.deliveryMethod.value != null)
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routers.selectDeliveryMethod,
                                    arguments:
                                        OrderSelectDeliveryMethodViewArgument(
                                            outlet:
                                                controller.detailOutlet.value!,
                                            itemWeight: controller
                                                .cartSession
                                                .value!
                                                .transactionData!
                                                .itemWeight))!
                                .then((value) {
                              Get.context!
                                  .read<OrderBloc>()
                                  .add(OrderEvent.getDeliveryMethodID());
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.redD12B34,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(17.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.red,
                              ),
                            ),
                          ),
                          child: Text('Ubah',
                              style: AppFont.textBlack10SemiBold
                                  .copyWith(color: AppColors.white))),
                    )
                  else
                    ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routers.selectDeliveryMethod,
                                  arguments:
                                      OrderSelectDeliveryMethodViewArgument(
                                          outlet:
                                              controller.detailOutlet.value!,
                                          itemWeight: controller
                                              .cartSession
                                              .value!
                                              .transactionData!
                                              .itemWeight))!
                              .then((value) {
                            Get.context!
                                .read<OrderBloc>()
                                .add(OrderEvent.getDeliveryMethodID());
                          });
                          ;
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
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
                              .cartSession.value!.transactionData!.subtotal
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
                              .cartSession.value!.transactionData!.totalPayment
                              .toString()))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          //validation
                          if (controller.paymentMethod.value == null) {
                            ErrorPopupWidget.show("Digiresto",
                                "Anda belum memilih pembayaran, silahkan pilih metode pembayaran terlebih dahulu untuk mengakses halaman ini",
                                () {
                              Get.back();
                              Get.toNamed(Routers.selectPaymentMethod,
                                      arguments:
                                          OrderSelectPaymentMethodViewArgument(
                                              outlet: controller
                                                  .detailOutlet.value!,
                                              salestype:
                                                  controller.salesType.value!))!
                                  .then((value) {
                                Get.context!
                                    .read<OrderBloc>()
                                    .add(OrderEvent.getPaymentMethodID());
                              });
                            });
                          } else if (controller.activeAddress.value == null) {
                            ErrorPopupWidget.show(
                                "Digiresto", "Anda belum memilih alamat tujuan",
                                () {
                              Get.back();
                              Get.toNamed(Routers.homeAllAddress)!
                                  .then((value) {
                                controller.getActiveAddress();
                              });
                            });
                          } else if (controller.salesType.value ==
                                  "onlineDriver" &&
                              controller.deliveryMethod.value == null) {
                            ErrorPopupWidget.show("Digiresto",
                                "Anda belum memilih jasa pengiriman", () {
                              Get.back();
                              Get.toNamed(Routers.selectDeliveryMethod,
                                      arguments:
                                          OrderSelectDeliveryMethodViewArgument(
                                              outlet: controller
                                                  .detailOutlet.value!,
                                              itemWeight: controller
                                                  .cartSession
                                                  .value!
                                                  .transactionData!
                                                  .itemWeight))!
                                  .then((value) {
                                Get.context!
                                    .read<OrderBloc>()
                                    .add(OrderEvent.getDeliveryMethodID());
                              });
                            });
                          } else if (controller.paymentMethod.value!.id ==
                              "papaya") {
                            if (controller.paymentMethod.value!.ammount ==
                                "0") {
                              ErrorPopupWidget.show("Digiresto",
                                  "Digiresto Credit Anda Tidak Mencukupi", () {
                                Get.back();
                              });
                            } else {
                              controller.isLoading.value = true;
                              Get.context!
                                  .read<OrderBloc>()
                                  .add(OrderEvent.checkoutCart());
                            }
                          } else if (controller.placeInfoController.text ==
                                  "" &&
                              controller.salesType.value == "dineIn") {
                            ErrorPopupWidget.show("Digiresto",
                                "Info Makan di Tempat tidak boleh kosong", () {
                              Get.back();
                              _dialogDineIn();
                            });
                          } else {
                            ErrorPopupWidget.confirmation("Digiresto",
                                "Apakah Anda yakin dengan orderan ini?",
                                () async {
                              Get.back();
                              controller.isLoading.value = true;
                              print('DEBUG >> do checkout');
                              Get.context!
                                  .read<OrderBloc>()
                                  .add(OrderEvent.checkoutCart());
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.red,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                        ),
                        child: Text(
                          'Order',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
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

  _dialogDineIn() {
    showDialog(
        context: Get.context!,
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
                                            controller: controller
                                                .selectedDateController,
                                            readOnly: true,
                                            onTap: () {
                                              controller.selectDate(context);
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
                            controller: controller.paxController,
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
                                  controller.placeInfoController.text = "";
                                  controller.initDialogPlace();
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
                                  controller.placeInfoController.text = txt;
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
                            controller: controller.voucherCodeController,
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

  void updateCartParam() {
    Get.context!
        .read<OrderBloc>()
        .add(OrderEvent.updateCart(controller.notesController.text));
  }

  @override
  Widget build(BuildContext context) {
    Get.put(OrderCartScreenViewController());
    controller.getCartCache();
    controller.getActiveAddress();
    controller.getCartSession();
    return MultiBlocListener(
        listeners: [
          BlocListener<OrderBloc, OrderState>(
            listener: (context, state) {
              state.maybeMap(
                  addCartSuccess: (r) {
                    controller.cartSession.value = r.response;
                    controller.checkAllLoaded();
                  },
                  getCartSessionSuccess: (r) {
                    controller.cartSession.value = r.response;
                    controller.notesController.text =
                        r.response.transactionData!.customerNote;
                    controller.getDetailOutlet();
                    controller.getListProduct();
                    print("data diterima");
                    controller.checkAllLoaded();
                  },
                  getDetailOutletSuccess: (r) {
                    controller.detailOutlet.value = r.response;
                    controller.checkAllLoaded();
                  },
                  getOutletListProductSuccess: (r) {
                    controller.listProduct.value = r.response;
                    controller.checkAllLoaded();
                  },
                  setSalesTypeCartSuccess: (r) {
                    controller.salesType.value = r.value;
                    updateCartParam();
                  },
                  getSalesTypeCartSuccess: (r) {
                    controller.salesType.value = r.value;
                    updateCartParam();
                  },
                  getPaymentMethodIDSuccess: (r) {
                    controller.paymentMethod.value = r.data;
                    updateCartParam();
                  },
                  getDeliveryMethodIDSuccess: (r) {
                    controller.deliveryMethod.value = r.data;
                    updateCartParam();
                  },
                  getVoucherMethodIDSuccess: (r) {
                    controller.voucherMethod.value = r.data;
                    updateCartParam();
                  },
                  removeCartSessionSuccess: (r) {
                    controller.checkCartSession();
                  },
                  checkoutCartSuccess: (r) {
                    var checkoutResponse = r.response.data;
                    controller.checkoutResponse.value = checkoutResponse;
                    if (r.response.response.messageDisplay != null &&
                        r.response.response.code != "00") {
                      final message = r.response.response.messageDisplay;
                      print("error response checkout 1:");

                      controller.isLoading.value = false;
                      ErrorPopupWidget.show("Digiresto", message!.id, () {
                        Get.back();
                      });
                      return;
                    }
                    controller.removeCartSession();
                  },
                  loadFailure: (e) {
                    e.e.maybeMap(
                        checkoutCartFail: (e) {
                          print("error response checkout 1:");
                          controller.isLoading.value = false;
                          ErrorPopupWidget.show("Digiresto", "Transaksi gagal",
                              () {
                            Get.back();
                          });
                        },
                        orElse: () {});
                  },
                  orElse: () {});
            },
          ),
          BlocListener<TransactionBloc, TransactionState>(
            listener: (context, state) {
              state.maybeMap(
                  getTransactionSuccess: (r) {},
                  getOngoingTransactionSuccess: (r) {},
                  loadFailure: (e) {
                    e.error.maybeMap(orElse: () {
                      ErrorPopupWidget.show("Error", "Transaction Error", () {
                        Get.back();
                      });
                    });
                  },
                  orElse: () {});
            },
          ),
          BlocListener<AddressListBloc, AddressListState>(
            listener: (context, state) {
              state.maybeMap(
                  getActiveAddressSuccess: (r) {
                    controller.activeAddress.value = r.response;
                  },
                  setActiveAddressSuccess: (r) {
                    controller.activeAddress.value = r.response;
                  },
                  orElse: () {});
            },
          )
        ],
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return Scaffold(
              body: Column(
                children: [
                  TopBackgound(backgroundColor: AppColors.red),
                  Expanded(
                    child: Obx(() => StackWithProgress(
                            isLoading: controller.isLoading.value,
                            children: [
                              Positioned.fill(
                                child: Container(
                                  height: MediaQuery.of(context).size.height -
                                      MediaQuery.of(context).padding.top,
                                  child: SingleChildScrollView(
                                    controller: controller.scrollController,
                                    child: Column(
                                      children: [
                                        _HeaderOrderCart(),
                                        controller.detailOutlet.value != null
                                            ? titleDetailOutlet()
                                            : Container(),
                                        controller.salesType.value != null &&
                                                controller.detailOutlet.value !=
                                                    null
                                            ? _selectSalesTypeMethod()
                                            : Container(),
                                        new _AddressOrderCart(),
                                        controller.detailOutlet.value != null &&
                                                controller.listProduct.value !=
                                                    null
                                            ? _ProductOrderCart()
                                            : Container(),
                                        _notes(),
                                        controller.detailOutlet.value != null
                                            ? _useVoucherCode()
                                            : Container(),
                                        controller.detailOutlet.value != null
                                            ? _paymentMethod()
                                            : Container(),
                                        controller.detailOutlet.value != null
                                            ? _voucherMethod()
                                            : Container(),
                                        controller.detailOutlet.value != null &&
                                                controller.salesType.value ==
                                                    "onlineDriver"
                                            ? _deliveryMethod()
                                            : Container(),
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
                            ])),
                  ),
                ],
              ),
            );
          },
        ));
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
  void getCartSession() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getCartSession());
  }

  void _editCart(TransactionDataItemResponse x, String y) {
    print("editcart");
  }

  void _plusProduct(int productId, int qty, int price,
      TransactionDataItemResponse detailProduct) {
    controller.reloadCounter.value++;
    if (qty != 0) {
      controller.isLoading.value = true;
      var productParam = CreateUpdateCartSessionItemParam(
          modifiers: [], note: '', productId: productId, qty: qty);
      Get.context!.read<OrderBloc>().add(OrderEvent.addCart(productParam,
          controller.detailOutlet.value!, controller.salesType.value!));
    }
  }

  _showDetailProduct(TransactionDataItemResponse cartProduct,
      OutletListProductDataResponse product, String orderType) {
    //Navigator.push(context,MaterialPageRoute(builder: (context) => Page2())).then((value) { setState(() {});
    Navigator.push(
            Get.context!,
            MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return DetailProductDialog(
                    cartSession: controller.cartSession.value!,
                    dataProduct: product,
                    orderType: orderType,
                    mode: "edit",
                    qtyProduct: cartProduct.qty,
                    detailOutlet: controller.detailOutlet.value!,
                    note: cartProduct.note,
                  );
                },
                fullscreenDialog: true))
        .then((value) {
      getCartSession();
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
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mau pesan yang lain ? ",
                        style: AppFont.textBlack14Bold),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text("Tambahkan pesanan lainnya ",
                          style: AppFont.textBlack14Regular),
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
                child: Text("Pesanan", style: AppFont.textBlack14Regular),
              ),
              Container(
                width: double.infinity,
                child: ListProductCartWidget(
                    addOrRemove: _plusProduct,
                    orderType: controller
                        .cartSession.value!.transactionData!.salesType,
                    productCart:
                        controller.cartSession.value!.transactionData!.items,
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
  @override
  Widget build(BuildContext context) {
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
                        ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routers.homeAllAddress)!
                                  .then((value) {
                                controller.getActiveAddress();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                            child: Text('Ubah',
                                style: TextStyle(
                                  color: AppColors.red,
                                  fontWeight: FontWeight.bold,
                                )))
                      else
                        ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routers.homeAllAddress)!
                                  .then((value) {
                                controller.getActiveAddress();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
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
                    padding: EdgeInsets.all(5),
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
  }
}

class _HeaderOrderCart extends GetView<OrderCartScreenViewController> {
  void goBack() {
    Get.delete<OrderCartScreenViewController>();
    Get.back();
  }

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
                    goBack();
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
