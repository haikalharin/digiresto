import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class DetailOutletHotPromoWidget extends StatelessWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  const DetailOutletHotPromoWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        height: height,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(8),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return (data[index]["img"]==null) ? Container() : Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(
                    color: AppColors.greyStroke, //                   <--- border color
                    width: 1.0,
                  ), boxShadow: [BoxShadow(blurRadius: 1,color: AppColors.greyStroke,offset: Offset(1,3))]// make rounded corner of b
                ),
                width: 150,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius:   BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                      child: Image(
                        image: (data[index]["img"]!=null) ? NetworkImage(data[index]["img"]) : RandomImages.getImage(),
                        fit: BoxFit.fill,
                        width: 150,
                        height: 96,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left:5,top:5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        data[index]["title"].toString().toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    data[index]["voucherCode"] != null ? Container(
                      padding: const EdgeInsets.only(left:5,top:5),
                      child: Row(children: [
                        ImageIcon(
                          AssetImage(Assets.iconVoucher),
                          color: AppColors.red, size: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          width: 110,
                          child: Text(
                            data[index]["voucherCode"] ,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: "roboto",
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],),
                    ) : Container(),
                  ],
                ),
              );
            }
        )
    );
  }
}
