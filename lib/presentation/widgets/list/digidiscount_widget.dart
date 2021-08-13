import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/presentation/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListDigidiscountWidget extends StatefulWidget {
  final List<dynamic> data;
  final Axis scrollDirection;
  final height;
  final void Function(Map<String, dynamic>) runAction;

  const ListDigidiscountWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.runAction})
      : super(key: key);

  @override
  _ListDigidiscountWidgetState createState() => _ListDigidiscountWidgetState();
}

class _ListDigidiscountWidgetState extends State<ListDigidiscountWidget> {
  // UserStore? _userStore;
  void didChangeDependencies() {
    super.didChangeDependencies();
    //   _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    OrderMethodPopup _orderMethodPopup = new OrderMethodPopup();
    return Container(
        height: widget.height,
        child: ListView.builder(
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true,
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              // _userStore?.setRandomCacheImage(widget.data[index].merchantLogo,
              //     widget.data[index].outletId.toString());
              // String defaultImage = _userStore!
              //     .getRandomCacheImage(widget.data[index].outletId.toString());
              return GestureDetector(
                onTap: () => {
                  if (widget.data[index].isOwnerLoggedIn)
                    {
                      _orderMethodPopup.showMyDialog(
                          context,
                          {
                            "name": widget.data[index].name,
                            "merchantName":
                                widget.data[index].merchantName.toString(),
                            "orderMethod":
                                widget.data[index].orderMethod["defaultList"],
                            "detailName": widget.data[index].outletName,
                          },
                          widget.runAction)
                    }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  height: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Stack(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Stack(children: [
                                      // ClipRRect(
                                      //   borderRadius: BorderRadius.all(
                                      //       Radius.circular(8.0)),
                                      //   child: Image(
                                      //     image:
                                      //         RandomImages.getImageUrlDefault(
                                      //             widget
                                      //                 .data[index].merchantLogo,
                                      //             defaultImage),
                                      //     fit: BoxFit.fill,
                                      //     width: 96,
                                      //     height: 96,
                                      //     alignment: Alignment.center,
                                      //   ),
                                      // ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15),
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: AppColors.red,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(2),
                                          child: Text("PROMO",
                                              softWrap: false,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontFamily: "roboto",
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                              textAlign: TextAlign.left),
                                        ),
                                      )
                                    ])),
                                (!widget.data[index].isOwnerLoggedIn)
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        child: Container(
                                          width: 96,
                                          height: 96,
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  width:
                                      MediaQuery.of(context).size.width - 160,
                                  child: Text(
                                      widget.data[index].outletName.toString(),
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                      widget.data[index].merchantName
                                          .toString(),
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.left),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    ImageIcon(
                                        AssetImage(
                                            AppAssets.iconHomeDiscountPercent),
                                        color: AppColors.red),
                                    Text("FREE ONGKIR",
                                        style: TextStyle(
                                          fontFamily: "roboto",
                                          color: AppColors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child:
                                      Text(widget.data[index].distance["text"],
                                          style: TextStyle(
                                            fontFamily: "roboto",
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          textAlign: TextAlign.left),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.greyStroke)
                    ],
                  ),
                  //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                ),
              );
            }));
  }
}
