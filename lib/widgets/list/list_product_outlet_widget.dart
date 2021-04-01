import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListProductOutletWidget extends StatelessWidget {
  final List<dynamic> data;
  final String orderType;
  final Axis scrollDirection;
  final height;
  final void Function(Map<String,dynamic>,String) runDetailAction;

  const ListProductOutletWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height, this.orderType,this.runDetailAction})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(8),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              int price;
              int beforePrice;
              if (data[index]["isUseSalesType"]==true){
                for (int i = 0; i < data[index]["salesTypes"].length; i++){
                  if (data[index]["salesTypes"][i]["code"]==orderType){
                    price = data[index]["salesTypes"][i]["price"];
                  }
                }
                if (price==null){
                  price = data[index]["price"]!=null ? data[index]["price"] : data[index]["originalPrice"];
                }
              }else{
                if (data[index]["price"]!=null){
                    if (data[index]["price"]<data[index]["originalPrice"]){
                      price = data[index]["price"];
                      beforePrice = data[index]["originalPrice"];
                    }else{
                      price = data[index]["price"];
                    }
                }else{
                    price = data[index]["originalPrice"];
                }
              }
              return data[index]["categoryCode"]=="HIDDEN" ? Container() : GestureDetector(
                onTap: () => {
                  runDetailAction(data[index],orderType)
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
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          child: Image(
                            image: (data[index]["img"]!=null) ? NetworkImage(data[index]["img"]) : RandomImages.getImage(),
                            fit: BoxFit.fill,
                            height: 96,
                            width: 96,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(top:5),
                        width: MediaQuery. of(context). size. width-200,
                        child: Text(data[index]["name"],
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
                            padding: const EdgeInsets.only(top:5),
                            //width: 10,
                            child: Text("Rp."+price.toString(),
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
                          beforePrice!=null ? Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(top:5),
                            //width: 10,
                            child: Text("Rp."+beforePrice.toString(),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black38,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough
                                ),
                                textAlign: TextAlign.left),
                          ) : Container(),
                        ],
                      ),
                    ],
                  ),
                  //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                ),
              );
            }
    );
  }
}
