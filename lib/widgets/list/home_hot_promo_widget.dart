import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListHomeHotPromoWidget extends StatelessWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  const ListHomeHotPromoWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height})
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
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                ),
                width: 130,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                      child: Image(
                        image: (data[index].promoIcon!=null) ? NetworkImage(data[index].promoIcon) : RandomImages.getImage(),
                        fit: BoxFit.fill,
                        width: 130,
                        height: 96,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top:5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        data[index].merchant["name"].toString()+" - "+data[index].outlet["detail"]["name"].toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    data[index].promoCode != null ? Row(children: [
                      ImageIcon(
                        AssetImage(Assets.iconVoucher),
                        color: AppColors.red, size: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          data[index].promoCode,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],) : Container(),
                  ],
                ),
              );
            }
        )
    );
  }
}
