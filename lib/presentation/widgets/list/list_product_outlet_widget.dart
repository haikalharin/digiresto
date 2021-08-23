import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListProductOutletWidget extends StatefulWidget {
  final List<OutletListProductDataResponse> data;
  final String orderType;
  final Axis scrollDirection;
  final height;
  final void Function(OutletListProductDataResponse, String) runDetailAction;

  const ListProductOutletWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.orderType,
      required this.runDetailAction})
      : super(key: key);

  @override
  _ListProductOutletWidgetState createState() =>
      _ListProductOutletWidgetState();
}

class _ListProductOutletWidgetState extends State<ListProductOutletWidget> {
//  UserStore? _userStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: widget.scrollDirection,
        shrinkWrap: true, // new line
        padding: const EdgeInsets.all(8),
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context, int index) {
          int? price;
          int? beforePrice;
          // bool randomImg;
          // if (widget.data[index]["img"]==null){
          //   randomImg=true;
          // }else if (widget.data[index]["img"].length > 1) {
          //   randomImg=false;
          // }else{
          //   randomImg=true;
          // }
          // if (widget.data[index]["isUseSalesType"] == true) {
          //   for (int i = 0; i < widget.data[index]["salesTypes"].length; i++) {
          //     if (widget.data[index]["salesTypes"][i]["code"] ==
          //         widget.orderType) {
          //       price = widget.data[index]["salesTypes"][i]["price"];
          //     }
          //   }
          //   if (price == null) {
          //     price = widget.data[index].crossoutPrice != null
          //         ? widget.data[index].crossoutPrice
          //         : widget.data[index].price;
          //   }
          // } else {
          if (widget.data[index].crossoutPrice != null) {
            if (widget.data[index].crossoutPrice! < widget.data[index].price) {
              price = widget.data[index].crossoutPrice;
              beforePrice = widget.data[index].price;
            } else {
              price = widget.data[index].crossoutPrice;
            }
          } else {
            price = widget.data[index].price;
          }
          //}

          // _userStore?.setRandomCacheImage(
          //     widget.data[index]["img"], widget.data[index]["id"].toString());
          // String defaultImage = _userStore!
          //     .getRandomCacheImage(widget.data[index]["id"].toString());
          //return widget.data[index]["category"] == "HIDDEN"
          return false
              ? Container()
              : GestureDetector(
                  onTap: () => {
                    //print(widget.data[index]),
                    widget.runDetailAction(widget.data[index], widget.orderType)
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      //color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    height: 96,
                    width: 96,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 5, left: 5),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                child: Image(
                                  image: RandomImages.getImageUrlDefault(
                                      widget.data[index].image, ""),
                                  fit: BoxFit.fill,
                                  height: 96,
                                  width: 96,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(top: 5),
                              width: MediaQuery.of(context).size.width - 210,
                              child: Text(widget.data[index].name,
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
                          ],
                        ),
                        (widget.data[index].variants.length == 0)
                            ? Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 5),
                                    //width: 10,
                                    child: Text(
                                        "Rp." +
                                            Utils.formatRupiah(
                                                price.toString()),
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
                                  beforePrice != null
                                      ? Container(
                                          alignment: Alignment.topLeft,
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          //width: 10,
                                          child: Text(
                                              "Rp." + beforePrice.toString(),
                                              softWrap: false,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: "roboto",
                                                  color: Colors.black38,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                              textAlign: TextAlign.left),
                                        )
                                      : Container(),
                                ],
                              )
                            : Column(),
                      ],
                    ),
                    //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                  ),
                );
        });
  }
}
