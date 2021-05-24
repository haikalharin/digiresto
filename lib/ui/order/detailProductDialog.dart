import 'dart:async';

import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:boilerplate/widgets/list/list_product_variant_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:provider/provider.dart';


class DetailProductDialog extends StatefulWidget {
  final dataProduct;
  final orderType;
  final qtyProduct;
  final mode;
  @override
  DetailProductDialog(
      {Key key,
      @required this.dataProduct,
      @required this.orderType,
        this.mode="new",
      this.qtyProduct = 1})
      : super(key: key);

  @override
  _DetailProductDialogState createState() => _DetailProductDialogState();
}

class _DetailProductDialogState extends State<DetailProductDialog> {
  int totalqty = 1;
  OrderStore _orderStore;
  UserStore _userStore;
  dynamic dataProductState;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orderStore = Provider.of<OrderStore>(context);
    _userStore = Provider.of<UserStore>(context);
    setState(() {
      dataProductState = widget.dataProduct;
      totalqty = widget.qtyProduct;
    });
    Timer.run(() {
    if (dataProductState["variants"].length > 0){
        _showMaterialDialog();
    }
    });
  }

  void plus() {
    setState(() {
      totalqty++;
    });
  }

  void minus() {
    if (totalqty > 0) {
      setState(() {
        totalqty--;
      });
    }
  }
  _chooseVariants(dynamic data){
    print("choose variant"+data.toString());
    setState(() {
      dataProductState = data;
    });
    Navigator.of(context).pop();
  }
  _showMaterialDialog() {
    double height = (dataProductState["variants"].length == 1) ?  MediaQuery. of(context). size. height - 300 :  MediaQuery. of(context). size. height - 220;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
          title:  Center( child: Text("PILIHAN VARIAN MENU", style: TextStyle(
            fontFamily: "roboto",
            color: AppColors.red,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),)),
          content: Container(
            height:  height,
            child: Column(
              children: [
                ListProductVariant(
                  runAction: _chooseVariants,
                    data: dataProductState["variants"]
                ),
                Container(
                  height: 50,
                  width: MediaQuery. of(context). size. width-190,
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
    int price;
    int beforePrice;
    if (dataProductState["isUseSalesType"] == true) {
      for (int i = 0; i < dataProductState["salesTypes"].length; i++) {
        if (dataProductState["salesTypes"][i]["code"] == widget.orderType) {
          price = dataProductState["salesTypes"][i]["price"];
        }
      }
      if (price == null) {
        price = dataProductState != null
            ? dataProductState["price"]
            : dataProductState["originalPrice"];
      }
    } else {
      if (dataProductState["price"] != null) {
        if (dataProductState["price"] < dataProductState["originalPrice"]) {
          price = dataProductState["price"];
          beforePrice = dataProductState["originalPrice"];
        } else {
          price = dataProductState["price"];
        }
      } else {
        price = dataProductState["originalPrice"];
      }
    }

    _userStore.setRandomCacheImage(dataProductState["img"],dataProductState["id"].toString());
    String defaultImage = _userStore.getRandomCacheImage(dataProductState["id"].toString());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 20,
                color: AppColors.red,
              ),
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        child: Image(
                          image: RandomImages.getImageUrlDefault(dataProductState["img"],defaultImage),
                          fit: BoxFit.fill,
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
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(dataProductState["name"],
                          softWrap: false,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
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
                          child: Text("Rp." + Utils.formatRupiah(price.toString()),
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
                                child: Text("Rp." + Utils.formatRupiah(beforePrice.toString()),
                                    softWrap: false,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.black38,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough),
                                    textAlign: TextAlign.left),
                              )
                            : Container(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
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
                        child: Text("Rp." + Utils.formatRupiah(price.toString()),
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
                (widget.mode == "new") ? Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 50,
                        width: MediaQuery.of(context).size.width/2-5,
                        child: RaisedButton(
                          onPressed: () {
                            _orderStore.setProduct(dataProductState["id"],totalqty,price,dataProductState);
                            Navigator.of(context).pop();
                          },
                          color: AppColors.red,
                          child: Text("Tambah ke keranjang",
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
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 50,
                        width: MediaQuery.of(context).size.width/2-5,
                        child: RaisedButton(
                          onPressed: () {
                            _orderStore.setProduct(dataProductState["id"],totalqty,price,dataProductState);
                            Navigator.of(context).popAndPushNamed(Routes.order_cart);
                          },
                          color: Colors.white,
                          child: Text("Beli Sekarang",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.red)),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ) : Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        _orderStore.setProduct(dataProductState["id"],totalqty,price,dataProductState);
                        Navigator.of(context).pop();
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
          )
        ],
      ),
    );
  }
}
