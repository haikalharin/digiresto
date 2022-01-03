import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/entity/order/digi_discount_outlet_response.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListDigidiscountWidget extends StatefulWidget {
  final List<DigiDiscountOutletDataResponse> data;
  final Axis scrollDirection;
  final height;
  final void Function(DigiDiscountOutletDataResponse data) runAction;
  final void Function() loadMoreAction;

  const ListDigidiscountWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.runAction,
      required this.loadMoreAction})
      : super(key: key);

  @override
  _ListDigidiscountWidgetState createState() => _ListDigidiscountWidgetState();
}

class _ListDigidiscountWidgetState extends State<ListDigidiscountWidget> {
  final ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        widget.loadMoreAction();
      }
    });
  }

  List<Widget> generateListSalesType(DigiDiscountOutletDataResponse data) {
    List<Widget> listWidget = [];
    data.orderMethod.defaultList.forEach((element) {
      if (element == "dineIn") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.32,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDineIn),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                I10n.current.landing_dine_in,
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      } else if (element == "takeAway") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.32,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderTakeIt),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                I10n.current.landing_take_away,
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      } else if (element == "onlineDriver") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.32,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDelivery),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                I10n.current.landing_delivery,
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      } else if (element == "driveThru") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.32,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDriveThru),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                I10n.current.landing_drive_thru,
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      }
    });
    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: widget.scrollDirection,
        shrinkWrap: true,
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              if (widget.data[index].isLive)
                {widget.runAction(widget.data[index])}
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  padding: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  //height: 96,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        Align(
                          child: Container(
                              padding: EdgeInsets.only(right: 5),
                              child: ClipRRect(
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
                                      widget.data[index].merchantLogo, ""),
                                  fit: BoxFit.cover,
                                  height: 96,
                                  width: 96,
                                  alignment: Alignment.center,
                                ),
                              )),
                        ),
                        !widget.data[index].isLive
                            ? ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                child: Container(
                                  width: 96,
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
                            : Container(),
                      ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            width: MediaQuery.of(context).size.width - 160,
                            child:
                                Text(widget.data[index].detail.name.toString(),
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
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(widget.data[index].distance.text,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(Get.context!).size.width * 0.65,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16),
                              child: Wrap(
                                  children: generateListSalesType(
                                      widget.data[index])),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          )
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
          );
        },
      ),
    );
  }
}
