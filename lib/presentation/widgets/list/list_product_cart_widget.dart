import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListProductCartWidget extends StatefulWidget {
  final List<dynamic> data;
  final String orderType;
  final Axis scrollDirection;
  final height;
  final void Function(Map<String, dynamic>, String) runEditAction;
  final void Function(int, int, int, Map<String, dynamic>) addOrRemove;
  final void Function(Map<String, dynamic>, String) runDetailAction;
  const ListProductCartWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.orderType,
      required this.runEditAction,
      required this.addOrRemove,
      required this.runDetailAction})
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: widget.scrollDirection,
        shrinkWrap: true, // new line
        padding: const EdgeInsets.all(8),
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context, int index) {
          int? price;
          //int beforePrice;
          if (widget.data[index]["detail"]["isUseSalesType"] == true) {
            for (int i = 0;
                i < widget.data[index]["detail"]["salesTypes"].length;
                i++) {
              if (widget.data[index]["detail"]["salesTypes"][i]["code"] ==
                  widget.orderType) {
                price = widget.data[index]["detail"]["salesTypes"][i]["price"];
              }
            }
            if (price == null) {
              price = widget.data[index]["detail"]["price"] != null
                  ? widget.data[index]["detail"]["price"]
                  : widget.data[index]["detail"]["originalPrice"];
            }
          } else {
            if (widget.data[index]["detail"]["price"] != null) {
              if (widget.data[index]["detail"]["price"] <
                  widget.data[index]["detail"]["originalPrice"]) {
                price = widget.data[index]["detail"]["price"];
                //beforePrice = widget.data[index]["detail"]["originalPrice"];
              } else {
                price = widget.data[index]["detail"]["price"];
              }
            } else {
              price = widget.data[index]["detail"]["originalPrice"];
            }
          }

          // _userStore?.setRandomCacheImage(
          //     widget.data[index]["img"], widget.data[index]["id"].toString());
          // String defaultImage = _userStore!
          //     .getRandomCacheImage(widget.data[index]["id"].toString());

          return widget.data[index]["detail"]["categoryCode"] == "HIDDEN"
              ? Container()
              : GestureDetector(
                  onTap: () => {
                    //runEditAction(data[index],orderType)
                  },
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
                        // Container(
                        //   padding: EdgeInsets.only(right: 5, left: 5),
                        //   child: ClipRRect(
                        //     borderRadius:
                        //         BorderRadius.all(Radius.circular(8.0)),
                        //     child: Image(
                        //       //image: (data[index]["detail"]["img"].length > 1) ? NetworkImage(data[index]["detail"]["img"]) : RandomImages.getImage(),
                        //       image: RandomImages.getImageUrlDefault(
                        //           widget.data[index]["img"], defaultImage),
                        //       fit: BoxFit.fill,
                        //       height: 64,
                        //       width: 64,
                        //       alignment: Alignment.center,
                        //     ),
                        //   ),
                        // ),
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
                                  child:
                                      Text(widget.data[index]["detail"]["name"],
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
                                                  .data[index]["total"]
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
                                        print(widget.data[index]);
                                        print(widget.orderType);
                                        widget.runDetailAction(
                                            widget.data[index],
                                            widget.orderType);
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
                                            widget.data[index]["detail"]["id"],
                                            widget.data[index]["qty"] - 1,
                                            price!,
                                            widget.data[index]["detail"]);
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
                                      child: Text(
                                          widget.data[index]["qty"].toString(),
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
                                            widget.data[index]["detail"]["id"],
                                            widget.data[index]["qty"] + 1,
                                            price!,
                                            widget.data[index]["detail"]);
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
