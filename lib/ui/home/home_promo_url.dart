import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:webview_flutter/webview_flutter.dart';
class HomePromoUrlScreen extends StatelessWidget {

  goBack(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final routes=ModalRoute.of(context).settings.arguments as Map<String,String>;
    print(routes["url"]);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20,
            color: AppColors.red,
          ),
          Container(
            color: AppColors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                      new IconButton(
                        icon: new Icon(Icons.arrow_back_outlined,
                            color: Colors.white, size: 24.0),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    Container(
                      width: 100,
                      child: Text("Promo",
                          style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ) ,
                    Container(width: 10,)
                  ],
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: MediaQuery. of(context). size. height-68,),
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: routes['url'],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
