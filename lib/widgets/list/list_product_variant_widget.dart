import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListProductVariant extends StatelessWidget {
  final List<dynamic> data;
  final Axis scrollDirection;
  final void Function(dynamic) runAction;
  const   ListProductVariant({Key key, this.data,this.scrollDirection= Axis.vertical,this.runAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = (data.length == 1) ?  MediaQuery. of(context). size. height - 350 :  MediaQuery. of(context). size. height - 280;

    return Container(
         height: height,
         width: MediaQuery. of(context). size. width - 100,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(5),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  runAction(data[index]);
                },
                child: Container(
                  padding:  EdgeInsets.only(left: 5,right: 5,bottom: 5),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          child: Image(
                            image: (data[index]["img"].length > 1) ? NetworkImage(data[index]["img"]) : RandomImages.getImage(),
                            fit: BoxFit.fill,
                            width: 150,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top:5),
                        width: MediaQuery. of(context). size. width-100,
                        child: Text(data[index]["name"],
                            softWrap: false,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: AppColors.red  ,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top:5),
                        child: Text("Rp. "+Utils.formatRupiah(data[index]["price"].toString()),
                            softWrap: false,
                            maxLines: 3,
                            style: TextStyle(
                              fontFamily: "roboto",
                              //color: AppColors.red  ,
                              fontSize: 14,
                              //fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left),
                      ),
                    ],
                  ),
                ),
              );
            }
        )
    );
  }
}
