import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderMethodPopup{
  Future<void> showMyDialog(BuildContext context, Map<String,dynamic> param, void Function(Map<String, dynamic>) runAction) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text(param.detail["name"]),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(param["detailName"],textAlign: TextAlign.justify,style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),)),
               // Container(
               //      alignment: Alignment.center,
               //      padding: EdgeInsets.all(5),
               //      child: Text(param["merchantName"].toString(),textAlign: TextAlign.justify,style: TextStyle(
               //        fontFamily: "roboto",
               //        fontSize: 14,
               //        fontWeight: FontWeight.bold,
               //      ),)),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text("Silahkan pilih tipe order",textAlign: TextAlign.justify,style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),)),
                for (int i = 0; i < param["orderMethod"].length; i++) OrderMethodWidget(orderMethod: param["orderMethod"][i],param: param, runAction: runAction,),
              ],
            ),
          ),

        );
      },
    );
  }
}


class OrderMethodWidget extends StatelessWidget {
  final String orderMethod;
  final Map<String,dynamic> param;
  final void Function(Map<String, dynamic>) runAction;

  const OrderMethodWidget({
    Key key,
    this.orderMethod,
    this.param,
    this.runAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserStore _userStore;
    _userStore = Provider.of<UserStore>(context);
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
          runAction({
            "orderOutletName":param["name"],
            "orderSalesTypes":orderMethod,
            "orderMerchantName":param["merchantName"],
            "orderOutletDetailName":param["detailName"],
            "userProfile": _userStore.profile
          });
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
}
