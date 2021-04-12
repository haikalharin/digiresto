import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListNearbyOutletWidget extends StatefulWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  final void Function(Map<String, dynamic>) runAction;
  final void Function() loadMoreAction;
  const ListNearbyOutletWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height,this.runAction,this.loadMoreAction})
      : super(key: key);

  @override
  _ListNearbyOutletWidgetState createState() => _ListNearbyOutletWidgetState();
}

class _ListNearbyOutletWidgetState extends State<ListNearbyOutletWidget> {
  final ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
          widget.loadMoreAction();
        /*getDetailOutlet(
            _orderStore.orderOutletName, searchName, filterCategory, page + 1);*/
      }
    });
  }
  Widget _btnOrderMethod(BuildContext context,String orderMethod,OutletList param){
    String textOrderMethod;
    switch(orderMethod) {
      case "dineIn": {
        textOrderMethod = "Makan di Tempat";
        break;
      // statements;
      }

      case "takeAway" : {
        textOrderMethod = "Bawa Pulang";
        break;
      //statements;
      }

      case "onlineDriver" : {
        textOrderMethod = "Pesan Antar";
        break;
      //statements;
      }

      case "driveThru" : {
        textOrderMethod = "Drive Thru";
        break;
      //statements;
      }

      default: {
        break;
      }
    }
    return Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery. of(context). size. width-100,
          height: 50,
          child: RaisedButton(
            onPressed: () {
                widget.runAction({
                    "orderOutletName":param.name,
                    "orderSalesTypes":orderMethod,
                    "orderMerchantName":param.merchantName,
                    "orderOutletDetailName":param.detail["name"],
                  });
                Navigator.of(context)
                    .pushNamed(Routes.order_detail_outlet);
            },
            color: AppColors.red,
            child: Text(textOrderMethod,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
              side: BorderSide(
                width: 1,
                color: AppColors.red,
              ),
            ),
          ),
    );
  }

  Future<void> _showMyDialog(BuildContext context, OutletList param) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text(param.detail["name"]),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(param.detail["name"],textAlign: TextAlign.justify,style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),)),
                Container(
                  alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(param.merchantName,textAlign: TextAlign.justify,style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),)),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text("Silahkan pilih tipe order",textAlign: TextAlign.justify,style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),)),
                for (int i = 0; i < param.orderMethod["defaultList"].length; i++) _btnOrderMethod(context,param.orderMethod["defaultList"][i],param),
              ],
            ),
          ),

        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        child: ListView.builder(
            controller: _scrollController,
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true, // new line
            //padding: const EdgeInsets.all(8),
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {
                  if (widget.data[index].isOwnerLoggedIn){
                    _showMyDialog(context, widget.data[index])
                  }
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        //color: Colors.amber[100],
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      height: 96,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: Image(
                                    image: (widget.data[index].merchantLogo!=null) ? NetworkImage(widget.data[index].merchantLogo) : RandomImages.getImage(),
                                    fit: BoxFit.fill,
                                    width: 96,
                                    alignment: Alignment.center,
                                  ),
                                )),
                              !widget.data[index].isOwnerLoggedIn ? ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                                            textAlign: TextAlign.left)
                                      ),
                                    ),
                                  ) : Container(),
                              ]
                            ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(top:5),
                                width: MediaQuery. of(context). size. width-160,
                                child: Text(widget.data[index].outletName.toString(),
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
                                padding: const EdgeInsets.only(top:5),
                                child: Text(widget.data[index].merchantName.toString(),
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: Text(widget.data[index].distance["text"],
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              // !widget.data[index].isOwnerLoggedIn ? Padding(
                              //   padding: const EdgeInsets.only(top:5),
                              //   child: Text("Closed",
                              //       style: TextStyle(
                              //         fontFamily: "roboto",
                              //         color: AppColors.red,
                              //         fontSize: 12,
                              //         fontWeight: FontWeight.w700,
                              //       ),
                              //       textAlign: TextAlign.left),
                              // ) : Container()
                            ],
                          ),
                        ],
                      ),
                      //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: AppColors.greyStroke
                    )
                  ],
                ),
              );
            }
        )
    );
  }
}
