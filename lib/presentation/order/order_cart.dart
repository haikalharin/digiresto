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
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/domain/order/order_select_delivery_method_view_argument.dart';
import 'package:digiresto/domain/order/order_select_payment_method_view_argument.dart';
import 'package:digiresto/domain/order/order_select_voucher_method_view_argument.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/widgets/list/list_product_cart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'detail_product_dialog.dart';

class OrderCartScreen extends GetView<OrderCartScreenViewController> {
  final bool? hideBackButton;
  OrderCartScreen({this.hideBackButton});
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
                                child: ElevatedButton(
                                  onPressed: () {
                                    controller.notesSubmited.value = true;
                                    controller.updateCartParam();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      side: BorderSide(
                                        width: 1,
                                        color: AppColors.redYoung,
                                      ),
                                    ),
                                  ),
                                  child: Text("Simpan",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
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
                      Text(I10n.current.cart_outlet,
                          style: AppFont.textBlack14Regular),
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
                        Text(I10n.current.cart_order_type,
                            style: AppFont.textBlack14Regular),
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
                      ElevatedButton(
                          onPressed: () {
                            _showDialogSalesType();
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
                          child: Text(I10n.current.cart_edit,
                              style: TextStyle(
                                color: AppColors.red,
                                fontWeight: FontWeight.bold,
                              )))
                    else
                      ElevatedButton(
                          onPressed: () {
                            _showDialogSalesType();
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
                          child: Text(I10n.current.cart_choose,
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
                          Text(I10n.current.cart_payment_method,
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
                          child: Text(I10n.current.cart_edit,
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
                        child: Text(I10n.current.cart_choose,
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
                          Text(I10n.current.cart_my_voucher,
                              style: AppFont.textBlack14Bold),
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
                          child: Text(I10n.current.cart_edit,
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
                        child: Text(I10n.current.cart_choose,
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
                          Text(I10n.current.cart_delivery,
                              style: AppFont.textBlack14Bold),
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
                          child: Text(I10n.current.cart_edit,
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
                        child: Text(I10n.current.cart_choose,
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
                  for (var i = 0;
                      i <
                          controller.cartSession.value!.transactionData!
                              .taxesAndServices.length;
                      i++)
                    _buildTaxAndServiceList(controller.cartSession.value!
                        .transactionData!.taxesAndServices[i]),
                  if (controller.salesType.value == 'onlineDriver' &&
                      controller.deliveryMethod.value != null)
                    SizedBox(
                      height: 5,
                    ),
                  if (controller.salesType.value == 'onlineDriver' &&
                      controller.deliveryMethod.value != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Delivery - ${controller.deliveryMethod.value!.name}'),
                        Text("Rp." +
                            Utils.formatRupiah(controller.cartSession.value!
                                .transactionData!.deliveryAmount
                                .toString()))
                      ],
                    ),
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
                                  child: Text(I10n.current.cart_schedule,
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
                                          value:
                                              controller.selectedKeyClock.value,
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
                                              controller.selectedKeyClock
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
                          value: controller.selectedKeySmoking.value,
                          items: controller.dataSmoking
                              .toList()
                              .map((data) => DropdownMenuItem<String>(
                                    child: Text(data.value!),
                                    value: data.key,
                                  ))
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              controller.selectedKeySmoking.value = value;
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
                              child: ElevatedButton(
                                onPressed: () {
                                  controller.placeInfoController.text = "";
                                  controller.initDialogPlace();
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                    side: BorderSide(
                                      width: 1,
                                      color: AppColors.redYoung,
                                    ),
                                  ),
                                ),
                                child: Text("Batal",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.redYoung)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: MediaQuery.of(context).size.width - 260,
                              child: ElevatedButton(
                                onPressed: () {
                                  String txt = "";
                                  if (controller.useSchedule.value!) {
                                    txt = controller.selectedDateController.text
                                            .toString() +
                                        " " +
                                        controller.selectedKeyClock.value! +
                                        " " +
                                        controller.paxController.text
                                            .toString() +
                                        " pax, " +
                                        OrderCartDineInModel.getValueSmoking(
                                            controller
                                                .selectedKeySmoking.value!);
                                  } else {
                                    txt = "Now, " +
                                        controller.paxController.text
                                            .toString() +
                                        " pax, " +
                                        OrderCartDineInModel.getValueSmoking(
                                            controller
                                                .selectedKeySmoking.value!);
                                  }
                                  controller.placeInfoController.text = txt;
                                  controller.setDineInMethodID();
                                  Get.back(closeOverlays: true);
                                },
                                child: Text("Ok",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                  primary: AppColors.red,
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
                  Text(I10n.current.cart_voucher_code,
                      style: AppFont.textBlack14Bold),
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
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                              child: Text(I10n.current.cart_voucher_code_use,
                                  style: AppFont.textBlack12Bold
                                      .copyWith(color: AppColors.white))),
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

  @override
  Widget build(BuildContext context) {
    final i10n = I10n.of(context);
    Get.put(getIt<OrderCartScreenViewController>());
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
                  removeCartSuccess: (r) {
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
                    controller.updateCartParam();
                  },
                  getSalesTypeCartSuccess: (r) {
                    controller.salesType.value = r.value;
                    controller.updateCartParam();
                  },
                  getPaymentMethodIDSuccess: (r) {
                    controller.paymentMethod.value = r.data;
                    controller.updateCartParam();
                  },
                  getDeliveryMethodIDSuccess: (r) {
                    controller.deliveryMethod.value = r.data;
                    controller.updateCartParam();
                  },
                  getVoucherMethodIDSuccess: (r) {
                    controller.voucherMethod.value = r.data;
                    controller.updateCartParam();
                  },
                  getDineInIDMethodSuccess: (r) {
                    controller.dineInIDMethod.value = r.data;
                    controller.parseDineInMethodID();
                    controller.updateCartParam();
                  },
                  setDineInIDMethodSuccess: (r) {
                    controller.dineInIDMethod.value = r.data;
                    controller.parseDineInMethodID();
                    controller.updateCartParam();
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
            return CollapsedScafold(
              showBackButton: !(hideBackButton ?? false),
              title: i10n.cart_title,
              body: Obx(
                () => StackWithProgress(
                  isLoading: controller.isLoading.value,
                  children: [
                    ListView(
                      children: [
                        controller.detailOutlet.value != null
                            ? titleDetailOutlet()
                            : Container(),
                        controller.salesType.value != null &&
                                controller.detailOutlet.value != null
                            ? _selectSalesTypeMethod()
                            : Container(),
                        new _AddressOrderCart(),
                        controller.detailOutlet.value != null &&
                                controller.listProduct.value != null
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
                                controller.salesType.value == "onlineDriver"
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
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget _buildTaxAndServiceList(TaxesAndService item) {
    return Column(
      children: [
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${item.name}"),
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

      controller.addCart(productId, qty);
    } else {
      ErrorPopupWidget.confirmation(Strings.appName,
          "Apakah ingin menghapus produk ${detailProduct.title}", () {
        Get.back(closeOverlays: true);
        controller.isLoading.value = true;
        if (controller.cartSession.value!.transactionData!.items.length == 1) {
          controller.removeCartSession();
        } else {
          controller.removeCart(productId);
        }
      });
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
                    Text(I10n.current.cart_add_other_title,
                        style: AppFont.textBlack14Bold),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text(I10n.current.cart_add_other_desc,
                          style: AppFont.textBlack14Regular),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(Get.context!).pushNamed(
                        Routers.orderDetailOutlet,
                        arguments: OrderDetailViewArgument(
                            controller.detailOutlet.value!.id,
                            controller.detailOutlet.value!.merchantId!));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      side: BorderSide(
                        width: 1,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                  child: Text(I10n.current.cart_add_other_action,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red)),
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
                child: Text(I10n.current.cart_order_title,
                    style: AppFont.textBlack14Regular),
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
                          Text(I10n.current.cart_address,
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
                            child: Text(I10n.current.cart_edit,
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
                            child: Text(I10n.current.cart_choose,
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
                  child: Text(I10n.current.cart_title,
                      //controller.detailOutlet.value != null ? data.outlet["detail"]["name"] : ""
                      style: AppFont.textBlack24Bold
                          .copyWith(color: AppColors.white),
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
