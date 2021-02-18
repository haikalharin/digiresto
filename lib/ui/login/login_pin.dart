import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
//import 'package:boilerplate/data/network/apis/login/login_pin_api.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
import 'package:boilerplate/widgets/input_pin_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/services.dart';
import 'package:boilerplate/widgets/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginPinScreen extends StatefulWidget {
  @override
  _LoginPinScreenState createState() => _LoginPinScreenState();
}

class _LoginPinScreenState extends State<LoginPinScreen> {
  UserStore _userStore;

  var arr = new List(6);
  int activeBox = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _userStore = Provider.of<UserStore>(context);
  }


  void _handleClickNumber(int number){
    setState(() {
      if (activeBox<6 && arr[activeBox] == null){
        arr[activeBox]=number;
      }
      if (activeBox<6) activeBox++;
    }
    );
    if (activeBox==6) {
      String pin = arr.join();
      Loading.show();
      _userStore.loginUser(
          _userStore.authPhone, pin.toString())
          .then((res) {
            Loading.dismiss();
        if (res.token != null) {
          _userStore.activeSessionLogin(res);
          _userStore.saveAuthToken(res.token);
          Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.home, (Route<dynamic> route) => false);
        }else{
          throw("login failed");
        }
      }).catchError((err) {
        Ctoast.show("login Failed");
        Loading.dismiss();
        print("error response: "+ err.toString());
      });
    };

  }
  void _handleClickBackspace(){
    setState(() {
      if (activeBox>0){

        if (activeBox<=6){
          activeBox--;
          arr[activeBox]=null;
        }else{
          if (activeBox>1 || activeBox < 6)  activeBox = activeBox-1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(
        children: [Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage(Assets.bgSplash),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ))),
            Container(
              padding: EdgeInsets.fromLTRB(10, 80, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      child: AppIconWidget(
                    image: Assets.appLogo,
                    percent: 0.1,
                  )),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 50),
                          child: Text(
                              AppLocalizations.of(context)
                                  .translate('login_enter_pin'),
                              style: TextStyle(
                                fontFamily: "roboto",
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center),
                        ),
                        InputPin(lengthPin: arr),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Keyboard(
                handleClickNumber:_handleClickNumber,
                handleClickBackspace: _handleClickBackspace,
              ),
            ],
          ),
      ]
      ),
    );
  }
}
