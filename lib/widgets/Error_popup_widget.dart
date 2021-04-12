import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/constants/response_mapping.dart';
import 'package:boilerplate/models/key_value_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
   static  showDioError(BuildContext context,DioError dioError,void Function() runAction) {
     KeyValueModel respError = ResponseMapping.getMessage(dioError);
     UserStore _userStore;
     _userStore = Provider.of<UserStore>(context, listen: false);
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
                   respError.desciption=="" ? respError.value : respError.desciption.toString(),
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
                       if(respError.key=="21"){
                         _userStore.logoutSessionLogin();
                         Navigator.of(context).pushNamedAndRemoveUntil(
                             Routes.login_pin, (Route<dynamic> route) => false);
                       }else if (runAction!=null){
                         runAction();
                       }
                       //Navigator.of(context).pop();
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
