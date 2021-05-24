import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class HomeTrackOrderWidget extends StatelessWidget {
  final List<TransactionHistory> data;
  final Axis scrollDirection;
  final height;
  final void Function(TransactionHistory) runAction;
  const HomeTrackOrderWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height,this.runAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = new ScrollController();
    OrderMethodPopup _orderMethodPopup = new OrderMethodPopup();
    return Container(
        height: height,
        child: ListView.builder(
        controller: _scrollController,
        scrollDirection: scrollDirection,
        shrinkWrap: true, // new line
        //padding: const EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
            List<dynamic> status = data[index].deliveryDetail.containsKey("status") ? data[index].deliveryDetail["status"] : [];
            String textStatus = status.length>0 ? status[0]["state"] : "Menunggu";
            return GestureDetector(
              onTap: (){
                runAction(data[index]);
                //Navigator.of(context).pushNamed(Routes.history_detail, arguments: data[index]).then((value) => setState(() => {}));
              },
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: AppColors.greyStroke, //                   <--- border color
                      width: 1,
                    ), boxShadow: [BoxShadow(blurRadius: 1,color: AppColors.greyStroke,offset: Offset(1,2))]// make rounded corner of b
                ),
                height: 20,
                width: 250,
                child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: AppColors.redYoung,
                            radius: 20,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon:  new Image.asset(Assets.iconDeliveryNotification,width: 44,height: 44,),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                //padding: const EdgeInsets.all(5),
                                alignment: Alignment.centerLeft,
                                //transaction.status
                                child: Text(textStatus,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 5,bottom: 5),
                                alignment: Alignment.centerLeft,
                                child: Text(data[index].outlet.detail.name.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                //padding: const EdgeInsets.all(5),
                                alignment: Alignment.centerLeft,
                                child: Text(data[index].outlet.merchantName.toString(),
                                  maxLines: 1,
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

                    ],),

              ),
            );
          }),
    );
  }
}
