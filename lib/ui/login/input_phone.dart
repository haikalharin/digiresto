import 'dart:async';
import 'dart:developer';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/login/otp_store.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/theme_text.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/services.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';



class InputPhoneScreen extends StatefulWidget {
  @override
  _InputPhoneScreenState createState() => _InputPhoneScreenState();
}

class _InputPhoneScreenState extends State<InputPhoneScreen> {
  OtpStore _otpStore;
  OtpWame otpWame;
  final handphoneController = TextEditingController();
  @override
  void setState(fn) {
    // TODO: implement setState
    otpWame=null;
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _otpStore = Provider.of<OtpStore>(context);
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
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 50),
                    child: AppIconWidget(
                      image: Assets.appLogo,
                      percent: 0.1,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                          AppLocalizations.of(context)
                              .translate('login_input_phone_title'),
                          style: ThemeText.headerTitle,
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('login_input_phone_desc'),
                        style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top:20),
                  child: TextFormField(
                    controller: handphoneController,
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText:
                      AppLocalizations.of(context)
                          .translate('login_input_phone_hint'),
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 2,)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1,color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1,color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1,color: Colors.white)
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1,color: Colors.white)
                      ),
                      //fillColor: Colors.green
                    ),
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 53,
                    child: RaisedButton(
                        onPressed: () {
                            if (handphoneController.text.toString().length > 6) {
                              _otpStore.setOtpHandphone(handphoneController.text
                                  .toString());
                              OtpWame.connectToApi(
                                  handphoneController.text.toString()).then((
                                  res) {
                                SharedPreferences.getInstance().then((prefs) {
                                  prefs.setString(Preferences.handPhone, handphoneController.text
                                      .toString());
                                });
                                LaunchUrl.run(res.wame);
                                Navigator.of(context)
                                    .pushNamed(Routes.verify_otp);
                              });
                            }
                          },
                        color: AppColors.yellow,
                        child: Text(
                            AppLocalizations.of(context)
                                .translate('login_btn_verification'),
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: FlatButton(
                    onPressed: (){},
                    highlightColor: Colors.transparent,
                    child: Text(AppLocalizations.of(context)
                        .translate('login_btn_skip_continue'),
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: FontFamily.roboto, color: AppColors.yellow),

                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
