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
                      //pin box

                      KeyboardNumber(onComplete: (data){ print("hit api verify"+data); },)
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

class KeyboardNumber extends StatefulWidget {
  final onComplete;
  const KeyboardNumber({Key key,this.onComplete}) : super(key: key);

  @override
  _KeyboardNumberState createState() => _KeyboardNumberState(onComplete: this.onComplete);
}

class _KeyboardNumberState extends State<KeyboardNumber> {
  final onComplete;
  var arr = new List(6);
  int activeBox = 0;
  _KeyboardNumberState({this.onComplete});
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  void _handleClickNumber(int number){
    int before = activeBox;
    setState(() {
      if (activeBox<6 && arr[activeBox] == null){
        arr[activeBox]=number;
      }
      if (activeBox<6) activeBox++;
      }
    );
    if (activeBox==before) { widget.onComplete(arr.join());};

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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BoxInputPin(isActive: arr[0] !=null ? true : false),
              BoxInputPin(isActive: arr[1] !=null ? true : false),
              BoxInputPin(isActive: arr[2] !=null ? true : false),
              BoxInputPin(isActive: arr[3] !=null ? true : false),
              BoxInputPin(isActive: arr[4] !=null ? true : false),
              BoxInputPin(isActive: arr[5] !=null ? true : false),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BoxNumber(number: 1, onClick: (){_handleClickNumber(1);}),
                  BoxNumber(number: 2, onClick: (){_handleClickNumber(2);}),
                  BoxNumber(number: 3, onClick: (){_handleClickNumber(3);}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BoxNumber(number: 4,onClick: (){_handleClickNumber(4);}),
                  BoxNumber(number: 5,onClick: (){_handleClickNumber(5);}),
                  BoxNumber(number: 6,onClick: (){_handleClickNumber(6);}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BoxNumber(number: 7,onClick: (){_handleClickNumber(7);}),
                  BoxNumber(number: 8,onClick: (){_handleClickNumber(8);}),
                  BoxNumber(number: 9,onClick: (){_handleClickNumber(9);}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                    height: 70,
                    width: 70),
                  BoxNumber(number: 0, onClick: (){_handleClickNumber(0);}),
                  BoxNumber(icon: Icons.backspace_outlined,onClick: (){_handleClickBackspace();},),
                ],
              ),
            ],
          ),

        ),
      ],
    ); //botton box
  }
}
class BoxNumber extends StatelessWidget {
  final number;
  final icon;
  final onClick;
  const BoxNumber({Key key, this.number, this.icon,this.onClick}) : super(key: key);
  @override
  Widget IconBox(){
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(10.0)
      ),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        child: Icon(
          this.icon,
          color: AppColors.red,
          size: 30.0,
        ),
      ),
    );
  }

  Widget NumerBox(){
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(10.0)
      ),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        child: Text(this.number.toString(),style: TextStyle(
          fontFamily: "roboto",
          color: Colors.black,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),textAlign: TextAlign.center,),
      ),
    );
  }

  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: this.icon!=null ? IconBox() : NumerBox()
    );
  }
}
class BoxInputPin extends StatelessWidget {
  final isActive;
  const BoxInputPin({Key key, this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 60,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(15.0)
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20),
          ),
          isActive ?
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(15.0)
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20),
          ) : Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(15.0)
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20),
          )
        ],
      ),
    );
  }
}