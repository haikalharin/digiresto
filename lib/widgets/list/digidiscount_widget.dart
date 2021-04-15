import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListDigidiscountWidget extends StatelessWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;

  const ListDigidiscountWidget(
      {Key key, this.data, this.scrollDirection = Axis.vertical, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true,
            // new line
            //padding: const EdgeInsets.only(top: 10),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {
                  if (data[index].isOwnerLoggedIn){
                    print("do action")
                  }
                },
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  height: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Stack(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Stack(children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        child: Image(
                                          image: (data[index].merchantLogo != null)
                                              ? NetworkImage(data[index].merchantLogo)
                                              : RandomImages.getImage(),
                                          fit: BoxFit.fill,
                                          width: 96,
                                          height: 96,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top:15),
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: AppColors.red,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(2),
                                          child: Text("PROMO",
                                              softWrap: false,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontFamily: "roboto",
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                              textAlign: TextAlign.left),
                                        ),
                                      )
                                    ])),
                                (!data[index].isOwnerLoggedIn) ? ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: Container(
                                    width: 96,
                                    height: 96,
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
                                ) : Container()
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  width: MediaQuery.of(context).size.width - 160,
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
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(data[index].merchantName.toString(),
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.left),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    ImageIcon(
                                        AssetImage(Assets.iconHomeDiscountPercent),
                                        color: AppColors.red),
                                    Text("FREE ONGKIR",
                                        style: TextStyle(
                                          fontFamily: "roboto",
                                          color: AppColors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(data[index].distance["text"],
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.left),
                                ),
                                // data[index].isOwnerLoggedIn ? Padding(
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
                      ),
                      Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.greyStroke
                      )
                    ],
                  ),
                  //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                ),
              );
            }));
  }
}
