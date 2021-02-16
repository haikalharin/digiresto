import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:webview_flutter/webview_flutter.dart';
class PrivacyPolicy extends StatelessWidget {

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
            color: AppColors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container( width: 100,child: Text("")),
                    Container(
                      width: 100,
                      child: Text("Digiresto",
                          style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () => Navigator.of(context).pop(),
                        highlightColor: Colors.transparent,
                        child: Text("CLOSE",
                          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, fontFamily: 'roboto', color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: MediaQuery. of(context). size. height-68,),
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: 'https://digiresto.co.id/privacy-policy.html',
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
