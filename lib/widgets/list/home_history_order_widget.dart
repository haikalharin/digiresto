import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListHomeHistoryOrderWidget extends StatelessWidget {
  final List<TransactionHistory> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  final void Function(Map<String, dynamic>) runAction;
  const ListHomeHistoryOrderWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height,this.runAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    OrderMethodPopup _orderMethodPopup = new OrderMethodPopup();
    return Container(
        alignment: Alignment.topLeft,
        height: height,
        child: GridView.count(
          // crossAxisCount is the number of columns
         // shrinkWrap: true, // new line
          padding: const EdgeInsets.all(8),
          crossAxisCount: 2,
          scrollDirection: scrollDirection,
          // This creates two columns with two items in each column
          children: List.generate(data.length, (index) {
            return GestureDetector(
              onTap: (){
                if (data[index].outlet.isOwnerLoggedIn){
                  _orderMethodPopup.showMyDialog(context,{
                    "name": data[index].outlet.name,
                    "merchantName": data[index].outlet.merchantName.toString(),
                    "orderMethod": data[index].outlet.orderMethod.defaultList,
                    "detailName": data[index].outlet.detail.name,
                  },runAction);
                }
              },
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(
                      color: AppColors.greyStroke, //                   <--- border color
                      width: 1.5,
                    ), boxShadow: [BoxShadow(blurRadius: 1,color: AppColors.greyStroke,offset: Offset(1,3))]// make rounded corner of b
                ),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)),
                          child: Image(
                            image:  RandomImages.getImageUrl(data[index].items[0].img),
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: 100,
                            alignment: Alignment.center,
                          ),
                        ),
                        !data[index].outlet.isOwnerLoggedIn ? ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)),
                          child: Container(
                            width: double.infinity,
                            height: 100,
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
                    Container(
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: Text(data[index].outlet.merchantName.toString() + " - "+data[index].outlet.detail.name.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        )
    );
  }
}
