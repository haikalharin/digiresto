import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/presentation/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListHomeHotPromoWidget extends StatefulWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  final void Function(Map<String, dynamic>) runAction;
  const ListHomeHotPromoWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.runAction})
      : super(key: key);

  @override
  _ListHomeHotPromoWidgetState createState() => _ListHomeHotPromoWidgetState();
}

class _ListHomeHotPromoWidgetState extends State<ListHomeHotPromoWidget> {
//  UserStore? _userStore;
  void didChangeDependencies() {
    super.didChangeDependencies();
    //   _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    OrderMethodPopup _orderMethodPopup = new OrderMethodPopup();
    return Container(
        alignment: Alignment.topLeft,
        height: widget.height,
        child: ListView.builder(
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(8),
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              // _userStore?.setRandomCacheImage(widget.data[index].promoIcon,
              //     widget.data[index].outletId.toString());
              // String defaultImage = _userStore!
              //     .getRandomCacheImage(widget.data[index].outletId.toString());
              return GestureDetector(
                onTap: () {
                  if (widget.data[index].outlet["isOwnerLoggedIn"]) {
                    _orderMethodPopup.showMyDialog(
                        context,
                        {
                          "name": widget.data[index].outlet["name"],
                          "merchantName":
                              widget.data[index].merchant["name"].toString(),
                          "orderMethod": widget
                              .data[index].outlet["orderMethod"]["defaultList"],
                          "detailName": widget.data[index].outlet["detail"]
                              ["name"],
                        },
                        widget.runAction);
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0),
                      border: Border.all(
                        color: AppColors
                            .greyStroke, //                   <--- border color
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: AppColors.greyStroke,
                            offset: Offset(1, 3))
                      ] // make rounded corner of b
                      ),
                  width: 142,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: [
                          // ClipRRect(
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(8.0),
                          //       topRight: Radius.circular(8.0)),
                          //   child: Image(
                          //     image: RandomImages.getImageUrlDefault(
                          //         widget.data[index].promoIcon, defaultImage),
                          //     fit: BoxFit.fill,
                          //     width: double.infinity,
                          //     height: 120,
                          //     alignment: Alignment.center,
                          //   ),
                          // ),
                          !widget.data[index].outlet["isOwnerLoggedIn"]
                              ? ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                  child: Container(
                                    width: double.infinity,
                                    height: 120,
                                    color: Colors.black54,
                                    child: Center(
                                        child: Text("Tutup",
                                            style: TextStyle(
                                              fontFamily: "roboto",
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.left)),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.data[index].merchant["name"].toString() +
                              " - " +
                              widget.data[index].outlet["detail"]["name"]
                                  .toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      widget.data[index].promoCode != null
                          ? Container(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(AppAssets.iconVoucher),
                                    color: AppColors.red,
                                    size: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      widget.data[index].promoCode,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              );
            }));
  }
}
