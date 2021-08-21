import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/presentation/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListCategoryOutletWidget extends StatefulWidget {
  final List<OutletCategoryDataResponse> data;
  final Axis scrollDirection;
  final height;
  final void Function(OutletCategoryDataResponse data) runAction;
  final void Function() loadMoreAction;
  const ListCategoryOutletWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.runAction,
      required this.loadMoreAction})
      : super(key: key);

  @override
  _ListNearbyOutletWidgetState createState() => _ListNearbyOutletWidgetState();
}

class _ListNearbyOutletWidgetState extends State<ListCategoryOutletWidget> {
  final ScrollController _scrollController = new ScrollController();
//  UserStore? _userStore;

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

  @override
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
            controller: _scrollController,
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
                  if (widget.data[index].isOpen)
                    {
                      // _oderMethodPopup.showMyDialog(context,widget.data[index],widget.runAction)
                      //   _showMyDialog(context, widget.data[index])
                      //print(widget.data[index].name);
                      // _orderMethodPopup.showMyDialog(
                      //     context,
                      //     {
                      //       "name": widget.data[index].name,
                      //       "merchantName":
                      //           widget.data[index].merchantName.toString(),
                      //       "orderMethod":
                      //           widget.data[index].orderMethod["defaultList"],
                      //       "detailName": widget.data[index].outletName,
                      //       // "userProfile": _userStore!.profile
                      //     },
                      //     widget.runAction)
                      widget.runAction(widget.data[index])
                    }
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      height: 96,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(children: [
                            Container(
                                padding: EdgeInsets.only(right: 5),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  child: Image(
                                    image: RandomImages.getImageUrlDefault(
                                        widget.data[index].merchantLogo, ""),
                                    fit: BoxFit.fill,
                                    width: 96,
                                    alignment: Alignment.center,
                                  ),
                                )),
                            !widget.data[index].isOpen
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
                                child: Text(widget.data[index].name.toString(),
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
                                    widget.data[index].merchantName.toString(),
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child:
                                    Text(widget.data[index].distance.distance,
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
                      //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                    ),
                    Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.greyStroke)
                  ],
                ),
              );
            }));
  }
}
