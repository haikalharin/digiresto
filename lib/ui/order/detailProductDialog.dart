import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:provider/provider.dart';
class DetailProductDialog extends StatefulWidget {
  final dataProduct;
  final orderType;
  final qtyProduct;
  @override
  DetailProductDialog(
      {Key key,
      @required this.dataProduct,
      @required this.orderType,
      this.qtyProduct = 0})
      : super(key: key);

  @override
  _DetailProductDialogState createState() => _DetailProductDialogState();
}

class _DetailProductDialogState extends State<DetailProductDialog> {
  int totalqty = 0;
  OrderStore _orderStore;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orderStore = Provider.of<OrderStore>(context);
    setState(() {
      totalqty = widget.qtyProduct;
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

  @override
  Widget build(BuildContext context) {
    int price;
    int beforePrice;
    if (widget.dataProduct["isUseSalesType"] == true) {
      for (int i = 0; i < widget.dataProduct["salesTypes"].length; i++) {
        if (widget.dataProduct["salesTypes"][i]["code"] == widget.orderType) {
          price = widget.dataProduct["salesTypes"][i]["price"];
        }
      }
      if (price == null) {
        price = widget.dataProduct != null
            ? widget.dataProduct["price"]
            : widget.dataProduct["originalPrice"];
      }
    } else {
      if (widget.dataProduct["price"] != null) {
        if (widget.dataProduct["price"] < widget.dataProduct["originalPrice"]) {
          price = widget.dataProduct["price"];
          beforePrice = widget.dataProduct["originalPrice"];
        } else {
          price = widget.dataProduct["price"];
        }
      } else {
        price = widget.dataProduct["originalPrice"];
      }
    }

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
                          image: (widget.dataProduct["img"] != null)
                              ? NetworkImage(widget.dataProduct["img"])
                              : RandomImages.getImage(),
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
                      child: Text(widget.dataProduct["name"],
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
                          child: Text("Rp." + price.toString(),
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
                                child: Text("Rp." + beforePrice.toString(),
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
                        child: Text("Rp." + price.toString(),
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
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 50,
                        width: MediaQuery. of(context). size. width-190,
                        child: RaisedButton(
                          onPressed: () {
                            _orderStore.setProduct(widget.dataProduct["id"],totalqty,price,widget.dataProduct);
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
                        width: MediaQuery. of(context). size. width-190,
                        child: RaisedButton(
                          onPressed: () {},
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
