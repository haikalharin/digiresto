import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListAllPromoWidget extends StatelessWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  const ListAllPromoWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height})
      : super(key: key);

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
              return Container(
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
                          image: (data[index].promoIcon!=null) ? NetworkImage(data[index].promoIcon) : RandomImages.getImage(),
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
                          child: Text(data[index].outlet["detail"]["name"].toString(),
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
                          child: Text(data[index].merchant["name"].toString(),
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
                  ],
                ),
                //child: Center(child: Text('Entry ${data[index].id.toString()}')),
              );
            }
        )
    );
  }
}
