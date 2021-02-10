import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:webview_flutter/webview_flutter.dart';
class SetAddressScreen extends StatelessWidget {

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
            height: 30,
            color: AppColors.red,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new IconButton(
                          icon: new Icon(Icons.arrow_back_outlined,
                              color: Colors.black, size: 28.0),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Text("All Address",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                        Text(""),
                      ],

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            blurRadius: 3,
                            //offset: Offset(3,3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(Routes.set_address_add);
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,),
                                child: new IconButton(
                                  icon: new Icon(Icons.add,
                                      color: AppColors.red, size: 28.0),
                                ),
                              ),
                              Text("Add New",
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    color: AppColors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center),
                            ],

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
