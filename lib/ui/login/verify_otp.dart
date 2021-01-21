import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/models/login/otp_validate_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/login/otp_store.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
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
            padding: EdgeInsets.fromLTRB(10, 80, 10, 40),
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
                  padding: EdgeInsets.only(left: 15, top: 20, right: 15),
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
                              text: "\n\n\n" +
                                  AppLocalizations.of(context)
                                      .translate('login_verify_otp_resend'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: OTPTextField(
                          length: 6,
                          width: double.infinity,
                          fieldWidth: 50,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,
                              height: 0.9,
                          ),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.underline,
                          onCompleted: (pin) {
                            OtpValidate.connectToApi(
                                _otpStore.otpHandphone,pin.toString()).then((
                                res) {
                                  if (res.isMember == null){
                                    print("verifikasi otp gagal");
                                  }else{
                                    if (res.isMember){
                                      //go to verify pin
                                    }else{
                                      //go to register page
                                    }
                                    print("verifikasi otp berhasil");
                                    print("is_member = "+res.isMember.toString());
                                  }

                            });
                            print("Completed: " + pin);
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                Routes.login_pin, (Route<dynamic> route) => false);
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
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
