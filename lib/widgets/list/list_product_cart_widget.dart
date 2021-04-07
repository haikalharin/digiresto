import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListProductCartWidget extends StatelessWidget {
  final List<dynamic> data;
  final String orderType;
  final Axis scrollDirection;
  final height;
  final void Function(Map<String,dynamic>,String) runEditAction;
  final void Function(int,int,int,Map<String,dynamic>) addOrRemove;

  const ListProductCartWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height, this.orderType,this.runEditAction,this.addOrRemove})
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
              if (data[index]["detail"]["isUseSalesType"]==true){
                for (int i = 0; i < data[index]["detail"]["salesTypes"].length; i++){
                  if (data[index]["detail"]["salesTypes"][i]["code"]==orderType){
                    price = data[index]["detail"]["salesTypes"][i]["price"];
                  }
                }
                if (price==null){
                  price = data[index]["detail"]["price"]!=null ? data[index]["detail"]["price"] : data[index]["detail"]["originalPrice"];
                }
              }else{
                if (data[index]["detail"]["price"]!=null){
                    if (data[index]["detail"]["price"]<data[index]["detail"]["originalPrice"]){
                      price = data[index]["detail"]["price"];
                      beforePrice = data[index]["detail"]["originalPrice"];
                    }else{
                      price = data[index]["detail"]["price"];
                    }
                }else{
                    price = data[index]["detail"]["originalPrice"];
                }
              }
              return data[index]["detail"]["categoryCode"]=="HIDDEN" ? Container() : GestureDetector(
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
                      Container(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          child: Image(
                            //image: (data[index]["detail"]["img"].length > 1) ? NetworkImage(data[index]["detail"]["img"]) : RandomImages.getImage(),
                            image: RandomImages.getImageUrl(data[index]["img"]),
                            fit: BoxFit.fill,
                            height: 64,
                            width: 64,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top:5),
                                width: MediaQuery. of(context). size. width-200,
                                child: Text(data[index]["detail"]["name"],
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
                                    child: Text("Rp."+Utils.formatRupiah(data[index]["total"].toString()),
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
                                padding: const EdgeInsets.only(top:5),
                                width: MediaQuery. of(context). size. width-200,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  height: 40,
                                  child: RaisedButton(
                                    onPressed: () {

                                    },
                                    color: AppColors.red,
                                    child: Text("Ubah",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(25.0),
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
                                      addOrRemove(data[index]["detail"]["id"],data[index]["qty"]-1,price,data[index]["detail"]);
                                      //minus();
                                    },
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundColor: AppColors.greyStroke,
                                      child: new Icon(Icons.remove,
                                          color: AppColors.redYoung, size: 20.0),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    child: Text( data[index]["qty"].toString(),
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
                                      addOrRemove(data[index]["detail"]["id"],data[index]["qty"]+1,price,data[index]["detail"]);
                                      //plus();
                                    },
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundColor: AppColors.greyStroke,
                                      child: new Icon(Icons.add,
                                          color: AppColors.redYoung, size: 20.0),
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
            }
    );
  }
}
