import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/models/login/login_pin_model.dart';
import 'package:boilerplate/data/network/apis/login/login_pin_api.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/login/otp_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
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
  OtpStore _otpStore;
  UserStore _userStore;
  OtpWame otpWame;
  LoginPinApi loginPinApi;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _otpStore = Provider.of<OtpStore>(context);
    _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(
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
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 60),
                        child: OTPTextField(
                          length: 6,
                          width: double.infinity,
                          fieldWidth: 50,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            height: 0.9,
                          ),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.underline,
                          onCompleted: (pin) {
                            LoginPinApi.login(
                                    _otpStore.otpHandphone, pin.toString())
                                .then((res) {
                              if (res.token != null) {
                                _userStore.activeSessionLogin(res);
                                SharedPreferences.getInstance().then((prefs) {
                                  prefs.setString(Preferences.access_token, res.token);
                                });
                                Navigator.of(context).pushReplacementNamed(Routes.home);
                              } else {
                                print("login gagal");
                              }
                            }).catchError((err) {
                              print("error response: "+ err);
                            });

                            //print("check variabel = " + _userStore.user.name);
                          },
                        ),
                      ),
                    ],
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
