import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/order/home_see_all_outlet_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListviewOutletWidget extends StatefulWidget {
  final List<OutletCategoryDataResponse> data;
  final Axis scrollDirection;
  final height;
  final void Function(OutletCategoryDataResponse data) runAction;
  final void Function() loadMoreAction;
  final void Function() onRefresh;
  const ListviewOutletWidget({
    Key? key,
    required this.data,
    this.scrollDirection = Axis.vertical,
    this.height,
    required this.runAction,
    required this.loadMoreAction,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _ListNearbyOutletWidgetState createState() => _ListNearbyOutletWidgetState();
}

class _ListNearbyOutletWidgetState extends State<ListviewOutletWidget> {
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

  List<Widget> generateListSalesType(OutletCategoryDataResponse data) {
    List<Widget> listWidget = [];
    data.salesTypes.forEach((element) {
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
    return Expanded(
      child: RefreshIndicator(
          onRefresh: () async => widget.onRefresh(),
          child: Stack(
            children: [
              ListView(),
              ListView.builder(
                controller: _scrollController,
                scrollDirection: widget.scrollDirection,
                shrinkWrap: true,
                itemCount: widget.data.length,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => {
                      if (widget.data[index].isOpen)
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        child: Image(
                                          errorBuilder:
                                              (context, obj, stacktrace) {
                                            return Image(
                                              height: 96,
                                              width: 96,
                                              image: RandomImages.getImage(),
                                            );
                                          },
                                          image:
                                              RandomImages.getImageUrlDefault(
                                                  widget.data[index].logo, ""),
                                          fit: BoxFit.cover,
                                          height: 96,
                                          width: 96,
                                          alignment: Alignment.center,
                                        ),
                                      )),
                                ),
                                !widget.data[index].isOpen
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        child: Container(
                                          width: 96,
                                          height: 96,
                                          color: Colors.black26,
                                          child: Center(
                                              child: Text(
                                                  I10n.current.outlet_closed,
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
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(top: 5),
                                    width:
                                        MediaQuery.of(context).size.width - 160,
                                    child:
                                        Text(widget.data[index].name.toString(),
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
                                    child: Text(
                                        widget.data[index].distance.distance,
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
                                        MediaQuery.of(Get.context!).size.width *
                                            0.65,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, bottom: 16),
                                      child: Wrap(
                                          children: generateListSalesType(
                                              widget.data[index])),
                                    ),
                                  ),
                                  (widget.data[index].countOutlet ?? 0) > 1
                                      ? SizedBox(
                                          height: 32,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.68,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Get.toNamed(
                                                      Routers.homeSeeAllOutlet,
                                                      arguments:
                                                          HomeSeeAllOutletViewArgument(
                                                              data: widget
                                                                  .data[index]))
                                                  ?.then((value) =>
                                                      widget.onRefresh());
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    I10n.current
                                                        .outlet_list_see_all_outlet(
                                                            widget.data[index]
                                                                .name),
                                                    style: AppFont
                                                        .textBlack10SemiBold
                                                        .copyWith(
                                                      color: AppColors.red,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                            style: ButtonStyle(
                                                shadowColor:
                                                    MaterialStateProperty.all(
                                                        Colors.transparent),
                                                shape: MaterialStateProperty
                                                    .all(RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                        side: BorderSide(
                                                            color: AppColors
                                                                .greyDEDEDE))),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.white)),
                                          ),
                                        )
                                      : Container(),
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
            ],
          )),
    );
  }
}
