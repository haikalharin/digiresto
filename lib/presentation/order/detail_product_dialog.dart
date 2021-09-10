import 'dart:async';
import 'dart:core';

import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/order/order_view_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/widgets/list/list_product_variant_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class DetailProductDialog extends StatefulWidget {
  final OutletListProductDataResponse dataProduct;
  final CartSessionResponse? cartSession;
  final String note;
  final String orderType;
  final qtyProduct;
  final mode;
  final bool isDifferentOutlet;
  final DetailOutletDataResponse detailOutlet;
  @override
  DetailProductDialog(
      {Key? key,
      required this.dataProduct,
      required this.orderType,
      required this.cartSession,
      this.isDifferentOutlet = false,
      required this.detailOutlet,
      required this.note,
      this.mode = "new",
      this.qtyProduct = 1})
      : super(key: key);

  @override
  _DetailProductDialogState createState() => _DetailProductDialogState();
}

class _DetailProductDialogState extends State<DetailProductDialog> {
  int totalqty = 1;
  // OrderStore _orderStore;
  // UserStore _userStore;
  late OutletListProductDataResponse dataProductState;
  late OutletListProductDataResponse variantProductSelected;
  final notesController = TextEditingController();
  String notes = '';
  bool noteIsSubmitted = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _orderStore = Provider.of<OrderStore>(context);
    // _userStore = Provider.of<UserStore>(context);
    setState(() {
      dataProductState = widget.dataProduct;
      variantProductSelected = dataProductState;
      totalqty = widget.qtyProduct;
      _setTotalQtyFromExistCart();
      notesController.text = widget.note;
    });
    Timer.run(() {
      if (dataProductState.variants.length > 0) {
        _showMaterialDialog();
      } else {}
    });
  }

  void plus() {
    setState(() {
      totalqty++;
    });
  }

  void minus() {
    if (totalqty > 1) {
      setState(() {
        totalqty--;
      });
    }
  }

  void setProduct() {
    if (widget.isDifferentOutlet) {
      ErrorPopupWidget.confirmation("Digiresto", "outlet yang berbeda", () {
        Get.context!.read<OrderBloc>().add(
              OrderEvent.addCart(
                  CreateUpdateCartSessionItemParam(
                      modifiers: [],
                      note: notes,
                      productId: int.parse(variantProductSelected.id),
                      qty: totalqty),
                  widget.detailOutlet,
                  widget.orderType),
            );
      });
      return;
    }
    if (totalqty > (variantProductSelected.stock ?? 999)) {
      ErrorPopupWidget.show("Digiresto", "out of stock", () {
        Get.back();
      });
      return;
    }
    Get.context!.read<OrderBloc>().add(
          OrderEvent.addCart(
              CreateUpdateCartSessionItemParam(
                  modifiers: [],
                  note: notes,
                  productId: int.parse(variantProductSelected.id),
                  qty: totalqty),
              widget.detailOutlet,
              widget.orderType),
        );
  }

  _chooseVariants(OutletListProductDataVariantResponse data) {
    //print("choose variant"+data.toString());
    setState(() {
      variantProductSelected =
          OutletListProductDataVariantResponse.variantToDetailProductResponse(
              data);
    });
    _setTotalQtyFromExistCart();
    Navigator.of(context).pop();
  }

  _setTotalQtyFromExistCart() {
    widget.cartSession?.transactionData!.items.forEach((element) {
      if (variantProductSelected.id == element.productId.toString()) {
        setState(() {
          totalqty = element.qty;
        });
      }
    });
  }

  _showMaterialDialog() {
    double height = (dataProductState.variants.length == 1)
        ? MediaQuery.of(context).size.height - 300
        : MediaQuery.of(context).size.height - 220;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
              title: Center(
                  child: Text(
                "PILIHAN VARIAN MENU",
                style: TextStyle(
                  fontFamily: "roboto",
                  color: AppColors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              content: Container(
                height: height,
                child: Column(
                  children: [
                    ListProductVariant(
                        runAction: _chooseVariants,
                        data: dataProductState.variants),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 190,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        color: Colors.white,
                        child: Text("Kembali",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.red)),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
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
            ));
  }

  @override
  Widget build(BuildContext context) {
    int? price;
    int? beforePrice;
    // if (dataProductState["isUseSalesType"] == true) {
    //   for (int i = 0; i < dataProductState["salesTypes"].length; i++) {
    //     if (dataProductState["salesTypes"][i]["code"] == widget.orderType) {
    //       price = dataProductState["salesTypes"][i]["price"];
    //     }
    //   }
    //   if (price == null) {
    //     price = dataProductState.crossoutPrice!= null
    //         ? dataProductState.crossoutPrice
    //         : dataProductState.price;
    //   }
    // }

    if (variantProductSelected.crossoutPrice != null) {
      if ((variantProductSelected.crossoutPrice ?? 0) <
          variantProductSelected.price) {
        price = variantProductSelected.crossoutPrice;
        beforePrice = variantProductSelected.price;
      } else {
        price = variantProductSelected.crossoutPrice;
      }
    } else {
      price = variantProductSelected.price;
    }

    // _userStore.setRandomCacheImage(
    //     dataProductState["img"], dataProductState["id"].toString());
    //String defaultImage = _userStore.getRandomCacheImage(dataProductState["id"].toString());
    String defaultImage = "";
    return BlocConsumer<OrderBloc, OrderState>(listener: (context, state) {
      var controller = Get.find<OrderViewController>();
      state.maybeMap(addCartSuccess: (r) {
        controller.cartSession.value = r.response;
        Get.back();
      }, orElse: () {
        //
      });
    }, builder: (context, state) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBackgound(backgroundColor: AppColors.red),
                Container(
                  height: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          child: Image(
                            image: RandomImages.getImageUrlDefault(
                                variantProductSelected.image, defaultImage),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black54,
                          child: new IconButton(
                              icon: new Icon(Icons.close,
                                  color: Colors.white, size: 30.0),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width / 2 + 50,
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(variantProductSelected.name,
                            softWrap: true,
                            maxLines: 3,
                            //overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left),
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(top: 5),
                            //width: 10,
                            child: Text(
                                "Rp." + Utils.formatRupiah(price.toString()),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          beforePrice != null
                              ? Container(
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.only(top: 5),
                                  //width: 10,
                                  child: Text(
                                      "Rp." +
                                          Utils.formatRupiah(
                                              beforePrice.toString()),
                                      softWrap: false,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: "roboto",
                                          color: Colors.black38,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough),
                                      textAlign: TextAlign.left),
                                )
                              : Container(),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      color: AppColors.white,
                      child: Text(variantProductSelected.description,
                          style: AppFont.textBlack12Regular),
                    )),
                Divider(
                  thickness: 12,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Catatan", style: AppFont.textBlack14Bold),
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("opsional",
                                style: AppFont.textBlack8Light),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5, bottom: 10),
                        child: TextField(
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) {},
                            onChanged: (text) {
                              setState(() {
                                noteIsSubmitted = false;
                              });
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
                      if (noteIsSubmitted == false)
                        Row(
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
                                    setState(() {
                                      notes = notesController.text;
                                      noteIsSubmitted = true;
                                    });
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
                    ],
                  ),
                )
              ],
            ),
            SafeArea(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(5),
                            //width: 10,
                            child: Text(
                                "Rp." +
                                    Utils.formatRupiah(
                                        ((price ?? 0) * totalqty).toString()),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  minus();
                                },
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: AppColors.greyStroke,
                                  child: new Icon(Icons.remove,
                                      color: AppColors.redYoung, size: 20.0),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Text(totalqty.toString(),
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              GestureDetector(
                                onTap: () {
                                  plus();
                                },
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: AppColors.greyStroke,
                                  child: new Icon(Icons.add,
                                      color: AppColors.redYoung, size: 20.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    (widget.mode == "new")
                        ? Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width / 2 - 5,
                                  child: RaisedButton(
                                    onPressed: () {
                                      setProduct();
                                      // if (_userStore.skipAndContinue ?? false) {
                                      //   ErrorPopupWidget.showLoginRequired(context,
                                      //       () {
                                      //     Navigator.of(context).pop();
                                      //   }, () {
                                      //     _userStore.removeSkipAndContinue();
                                      //     _userStore.removeAuthToken();
                                      //     Navigator.of(context)
                                      //         .pushNamed(Routes.input_phone);
                                      //   });
                                      // } else {
                                      //   // _orderStore.setProduct(
                                      //   //     dataProductState["id"],
                                      //   //     totalqty,
                                      //   //     price,
                                      //   //     dataProductState);
                                      //   Navigator.of(context).pop();
                                      // }
                                    },
                                    color: AppColors.red,
                                    child: Text("+keranjang",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      side: BorderSide(
                                        width: 1,
                                        color: AppColors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width / 2 - 5,
                                  child: RaisedButton(
                                    onPressed: () {
                                      setProduct();
                                      // if (_userStore.skipAndContinue ?? false) {
                                      //   ErrorPopupWidget.showLoginRequired(context,
                                      //       () {
                                      //     Navigator.of(context).pop();
                                      //   }, () {
                                      //     _userStore.removeSkipAndContinue();
                                      //     _userStore.removeAuthToken();
                                      //     Navigator.of(context)
                                      //         .pushNamed(Routes.input_phone);
                                      //   });
                                      // } else {
                                      //   _orderStore.setProduct(
                                      //       dataProductState["id"],
                                      //       totalqty,
                                      //       price,
                                      //       dataProductState);
                                      //   Navigator.of(context)
                                      //       .popAndPushNamed(Routes.order_cart);
                                      // }
                                    },
                                    color: Colors.white,
                                    child: Text("Beli sekarang",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.red)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      side: BorderSide(
                                        width: 1,
                                        color: AppColors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: double.infinity,
                              child: RaisedButton(
                                onPressed: () {
                                  setProduct();
                                  // _orderStore.setProduct(dataProductState["id"],
                                  //     totalqty, price, dataProductState);
                                  Get.back(closeOverlays: true);
                                },
                                color: AppColors.red,
                                child: Text("Perbaharui Keranjang",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.red,
                                  ),
                                ),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
