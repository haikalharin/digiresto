import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:webview_flutter/webview_flutter.dart';
class HomeAllPromoScreen extends StatelessWidget {

  goBack(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20,
            color: AppColors.red,
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    new IconButton(
                      icon: new Icon(Icons.arrow_back_outlined,
                          color: Colors.black, size: 24.0),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Container(
                      width: 100,
                      child: Text("All Promo",
                          style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center),
                    ) ,
                    Container(width: 10,)
                  ],
                ),
                Container(
                    constraints: BoxConstraints(maxHeight: MediaQuery. of(context). size. height-68,),
                    child: Text("all promo")
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
