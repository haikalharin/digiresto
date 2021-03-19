import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListNearbyOutletWidget extends StatelessWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  const ListNearbyOutletWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height})
      : super(key: key);

  Widget _btnOrderMethod(BuildContext context,String orderMethod){
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
                for (int i = 0; i < param.orderMethod["defaultList"].length; i++) _btnOrderMethod(context,param.orderMethod["defaultList"][i]),
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
        height: height,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(8),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {_showMyDialog(context, data[index])},
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
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          child: Image(
                            image: (data[index].merchantLogo!=null) ? NetworkImage(data[index].merchantLogo) : RandomImages.getImage(),
                            fit: BoxFit.fill,
                            width: 96,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(top:5),
                            width: MediaQuery. of(context). size. width-160,
                            child: Text(data[index].outletName.toString(),
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
                            child: Text(data[index].merchantName.toString(),
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
                            child: Text(data[index].distance["text"],
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          !data[index].isOwnerLoggedIn ? Padding(
                            padding: const EdgeInsets.only(top:5),
                            child: Text("Closed",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: AppColors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left),
                          ) : Container()
                        ],
                      ),
                    ],
                  ),
                  //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                ),
              );
            }
        )
    );
  }
}
