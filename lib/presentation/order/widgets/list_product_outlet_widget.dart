import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
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
          num? price;
          num? beforePrice;

          final item = widget.data[index];

          final isSoldOut = item.stock == 0 && item.variants.isEmpty;

          // bool randomImg;
          // if (item["img"]==null){
          //   randomImg=true;
          // }else if (item["img"].length > 1) {
          //   randomImg=false;
          // }else{
          //   randomImg=true;
          // }
          // if (item["isUseSalesType"] == true) {
          //   for (int i = 0; i < item["salesTypes"].length; i++) {
          //     if (item["salesTypes"][i]["code"] ==
          //         widget.orderType) {
          //       price = item["salesTypes"][i]["price"];
          //     }
          //   }
          //   if (price == null) {
          //     price = item.crossoutPrice != null
          //         ? item.crossoutPrice
          //         : item.price;
          //   }
          // } else {
          if (item.crossoutPrice != null) {
            if (item.crossoutPrice! < item.price) {
              price = item.crossoutPrice;
              beforePrice = item.price;
            } else {
              price = item.crossoutPrice;
            }
          } else {
            price = item.price;
          }
          //}

          // _userStore?.setRandomCacheImage(
          //     item["img"], item["id"].toString());
          // String defaultImage = _userStore!
          //     .getRandomCacheImage(item["id"].toString());
          //return item["category"] == "HIDDEN"
          return InkWell(
            onTap: () => {
              //print(item),
              if (isSoldOut)
                {}
              else
                {widget.runDetailAction(item, widget.orderType)}
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              child: Image(
                                errorBuilder: (context, obj, stacktrace) {
                                  return Image(
                                    height: 96,
                                    width: 96,
                                    image: RandomImages.getImage(),
                                  );
                                },
                                image: RandomImages.getImageUrlDefault(
                                    item.image, ""),
                                fit: BoxFit.fill,
                                height: 96,
                                width: 96,
                                alignment: Alignment.center,
                              ),
                            ),
                            if (item.isPreorder)
                              Positioned(
                                top: 12,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  child: Text(
                                    'PRE-ORDER',
                                    style: Styles.whiteFontStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            if (isSoldOut)
                              Positioned.fill(
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Colors.black54,
                                  child: Center(
                                    child: Text(
                                      I10n.current.product_detail_sold_out,
                                      style: Styles.whiteFontStyle.copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                item.name,
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.blackFontStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                item.description ?? '',
                                softWrap: false,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.blackFontStyle.copyWith(
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          if (item.isPreorder)
                            Text(
                              'Preorder : ${I10n.current.preorder_filter_a_day(item.preorderPeriod ?? 1)}',
                              style: Styles.blackFontStyle.copyWith(
                                fontSize: 12,
                                color: AppColors.redYoung,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  (item.variants.length == 0)
                      ? Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(top: 5),
                              //width: 10,
                              child: Text(
                                  "Rp " + Utils.formatRupiah(price.toString()),
                                  softWrap: false,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Styles.menuItemPriceStyle.copyWith(
                                    fontSize: 14,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.lineThrough),
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
