import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListProductCartWidget extends StatefulWidget {
  final List<TransactionDataItemResponse> productCart;
  final List<OutletListProductDataResponse> product;
  final String orderType;
  final Axis scrollDirection;
  final height;
  final void Function(TransactionDataItemResponse, String) runEditAction;
  final void Function(int, int, int, TransactionDataItemResponse) addOrRemove;
  final void Function(
          TransactionDataItemResponse, OutletListProductDataResponse, String)
      runDetailAction;
  const ListProductCartWidget(
      {Key? key,
      required this.productCart,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.orderType,
      required this.runEditAction,
      required this.addOrRemove,
      required this.runDetailAction,
      required this.product})
      : super(key: key);

  @override
  _ListProductCartWidgetState createState() => _ListProductCartWidgetState();
}

class _ListProductCartWidgetState extends State<ListProductCartWidget> {
//  UserStore? _userStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //   _userStore = Provider.of<UserStore>(context);
  }

  String getImageUrl(int index) {
    String url = "";
    widget.product.forEach((element) {
      if (widget.productCart[index].productId.toString() == element.id) {
        url = element.image;
      }
    });
    return url;
  }

  OutletListProductDataResponse? getMetaProduct(int index) {
    OutletListProductDataResponse? product;

    widget.product.forEach((element) {
      if (widget.productCart[index].productId.toString() == element.id) {
        product = element;
      }
    });
    return product;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: widget.scrollDirection,
        shrinkWrap: true, // new line
        padding: const EdgeInsets.all(8),
        itemCount: widget.productCart.length,
        itemBuilder: (BuildContext context, int index) {
          int? price;
          var productCart = widget.productCart[index];

          void minus() {
            final initialQty = productCart.qty;
            productCart = productCart.copyWith(qty: initialQty - 1);
          }

          void plus() {
            final initialQty = productCart.qty;
            productCart = productCart.copyWith(qty: initialQty + 1);
          }
          //int beforePrice;
          // if (widget.data[index]["detail"]["isUseSalesType"] == true) {
          //   for (int i = 0;
          //       i < widget.data[index]["detail"]["salesTypes"].length;
          //       i++) {
          //     if (widget.data[index]["detail"]["salesTypes"][i]["code"] ==
          //         widget.orderType) {
          //       price = widget.data[index]["detail"]["salesTypes"][i]["price"];
          //     }
          //   }
          //   if (price == null) {
          //     price = widget.data[index]["detail"]["price"] != null
          //         ? widget.data[index]["detail"]["price"]
          //         : widget.data[index]["detail"]["originalPrice"];
          //   }
          // }

          if (productCart != null) {
            if (productCart.amount < productCart.price) {
              price = productCart.amount;
              //beforePrice = widget.data[index]["detail"]["originalPrice"];
            } else {
              price = productCart.price;
            }
          } else {
            price = productCart.price;
          }

          // _userStore?.setRandomCacheImage(
          //     widget.data[index]["img"], widget.data[index]["id"].toString());
          // String defaultImage = _userStore!
          //     .getRandomCacheImage(widget.data[index]["id"].toString());

          return productCart.categoryCode == "HIDDEN"
              ? Container()
              : GestureDetector(
                  onTap: () =>
                      widget.runEditAction(productCart, widget.orderType),
                  child: Container(
                    decoration: BoxDecoration(
                      //color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    height: 96,
                    width: 96,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 5, left: 5),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            child: Image(
                              //image: (data[index]["detail"]["img"].length > 1) ? NetworkImage(data[index]["detail"]["img"]) : RandomImages.getImage(),
                              image: RandomImages.getImageUrlDefault(
                                  getImageUrl(index), ""),
                              fit: BoxFit.fill,
                              height: 64,
                              width: 64,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.only(top: 5),
                                  width:
                                      MediaQuery.of(context).size.width - 200,
                                  child: Text(productCart.title,
                                      softWrap: false,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.black,
                                        fontSize: 12,
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
                                          "Rp." +
                                              Utils.formatRupiah(widget
                                                  .productCart[index].amount
                                                  .toString()),
                                          softWrap: false,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: "roboto",
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: const EdgeInsets.only(top: 5),
                                  width:
                                      MediaQuery.of(context).size.width - 200,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 40,
                                    child: RaisedButton(
                                      onPressed: () {
                                        print(productCart);
                                        print(widget.orderType);
                                        widget.runDetailAction(
                                          productCart,
                                          getMetaProduct(index)!,
                                          widget.orderType,
                                        );
                                      },
                                      color: AppColors.red,
                                      child: Text("Ubah",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          width: 1,
                                          color: AppColors.redYoung,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        widget.addOrRemove(
                                            productCart.productId,
                                            productCart.qty - 1,
                                            price!,
                                            productCart);
                                        //minus();
                                      },
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: AppColors.greyStroke,
                                        child: new Icon(Icons.remove,
                                            color: AppColors.redYoung,
                                            size: 20.0),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Text(productCart.qty.toString(),
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
                                        widget.addOrRemove(
                                            productCart.productId,
                                            productCart.qty + 1,
                                            price!,
                                            productCart);
                                        //plus();
                                      },
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: AppColors.greyStroke,
                                        child: new Icon(Icons.add,
                                            color: AppColors.redYoung,
                                            size: 20.0),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                  ),
                );
        });
  }
}
