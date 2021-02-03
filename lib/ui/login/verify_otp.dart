import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/models/login/otp_validate_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/login/otp_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
import 'package:boilerplate/widgets/input_pin_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/theme_text.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/services.dart';
import 'package:boilerplate/widgets/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';

class VerifyOtpScreen extends StatefulWidget {
  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  OtpStore _otpStore;
  OtpWame otpWame;
  OtpValidate otpValidate;

  var arr = new List(6);
  int activeBox = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _otpStore = Provider.of<OtpStore>(context);
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
      SharedPreferences.getInstance().then((prefs) {
        prefs.setString(Preferences.phone_number, _otpStore.otpHandphone);
      });
      String pin = arr.join();
      OtpValidate.connectToApi(
          _otpStore.otpHandphone,pin.toString()).then((
          res) {
        if (res.isMember == null){
          Ctoast.show(
              "Otp verification failed");
        }else{
          if (res.isMember){
            //go to verify pin
          }else{
            //go to register page
          }
          SharedPreferences.getInstance().then((prefs) {
            prefs.setBool(Preferences.phone_verified, true);
          });
          print("verifikasi otp berhasil");
          print("is_member = "+res.isMember.toString());
          if (res.isMember){
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.login_pin, (Route<dynamic> route) => false);
          }else{
            Navigator.of(context).pushReplacementNamed(Routes.register);
          }
        }
      });
      //Navigator.of(context).pushReplacementNamed(Routes.register);
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
        children: [
          Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.bgSplash),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ))),
              Container(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        new IconButton(
                          icon: new Icon(Icons.arrow_back,
                              color: Colors.white, size: 28.0),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Text(
                            AppLocalizations.of(context)
                                .translate('login_verify_otp_title'),
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Column(
                        children: [
                          new RichText(
                            textAlign: TextAlign.center,
                            text: new TextSpan(
                              // Note: Styles for TextSpans must be explicitly defined.
                              // Child text spans will inherit styles from parent
                              style: new TextStyle(
                                fontFamily: "roboto",
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: AppLocalizations.of(context)
                                      .translate('login_verify_otp_desc'),
                                ),
                                TextSpan(
                                  text: " " + _otpStore.otpHandphone,
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    color: AppColors.yellow,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  //textAlign: TextAlign.center
                                ),
                                TextSpan(
                                  text: ". " +
                                      AppLocalizations.of(context)
                                          .translate('login_verify_otp_desc2'),

                                  //textAlign: TextAlign.center
                                ),
                                TextSpan(
                                  text: "\n\n" +
                                      AppLocalizations.of(context)
                                          .translate('login_verify_otp_resend'),
                                ),
                              ],
                            ),
                          ),

                          InputPin(lengthPin: arr),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: double.infinity,
                              height: 53,
                              child: RaisedButton(
                                  onPressed: () {
                                    OtpWame.connectToApi(
                                        _otpStore.otpHandphone).then((
                                        res) {
                                      LaunchUrl.run(res.wame);
                                    });
                                  },
                                  color: AppColors.yellow,
                                  child: Text(
                                      AppLocalizations.of(context)
                                          .translate('login_btn_verify_otp_resend'),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      new BorderRadius.circular(10.0))),
                            ),
                          ),
                          //pin box

                          //KeyboardNumber(onComplete: (data){ print("hit api verify"+data); },)
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

        ],
      )
    );
  }
}
