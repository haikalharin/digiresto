import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/material.dart';

class ErrorPopupWidget  {
   static  show(BuildContext context,String message,void Function() runAction) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
          title:  Center( child: Text("Digiresto", style: TextStyle(
            fontFamily: "roboto",
            //color: AppColors.red,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),)),
          content: Container(
            height:  100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  message.toString(),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "roboto",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      runAction();
                      Navigator.of(context).pop();
                    },
                    color: AppColors.redYoung,
                    child: Text("Ok",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(
                        width: 1,
                        color: AppColors.redYoung,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
