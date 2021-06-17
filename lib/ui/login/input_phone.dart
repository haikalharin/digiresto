import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/network/apis/auth/auth_api.dart';
import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/theme_text.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/services.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';

class InputPhoneScreen extends StatefulWidget {
  @override
  _InputPhoneScreenState createState() => _InputPhoneScreenState();
}

class _InputPhoneScreenState extends State<InputPhoneScreen> {
  UserStore _userStore;
  final handphoneController = TextEditingController();
  String identifier;
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  Future<void> loginNonUser() async{
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
        if (Platform.isIOS) {
       deviceInfoPlugin.iosInfo.then((data){
          setState(() {
            identifier = data.identifierForVendor;
          });//UUID for iOS
          _userStore.loginNonUser(identifier).then((value){
            if (value.token==null || value.token ==null ){
              ErrorPopupWidget.show(context, "Digiresto", "Sedang menyiapkan data, silahkan coba lagi", () { Navigator.of(context).pop(); });
            }else{
              _userStore.saveAuthToken(value.token);
              _userStore.setSkipAndContinue(true);
              print(value.token);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  Routes.home, (Route<dynamic> route) => false);
            }
          });
        });

      }
    } on PlatformException {
      print('Failed to get platform version');
    }

  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
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
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: handphoneController,
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: AppLocalizations.of(context)
                          .translate('login_input_phone_hint'),
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.white)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.white)),
                      //fillColor: Colors.green
                    ),
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    // Only numbers can be entered
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
                          if (handphoneController.text.toString().length >= 6) {
                            _userStore.saveAuthPhone(
                                handphoneController.text.toString());
                            Loading.show();
                            _userStore.getOtp(handphoneController.text.toString())
                                .then((res) {
                              Loading.dismiss();
                              List<String>  encodedUrl = res.wame.split("?text=");
                              // url
                              String url = encodedUrl[0]+"?text="+Uri.encodeComponent(encodedUrl[1]);
                              LaunchUrl.run(url);
                              Navigator.of(context)
                                  .pushNamed(Routes.verify_otp);
                            }).catchError((err) {
                              Loading.dismiss();
                              ErrorPopupWidget.showDioError(context,err,null);
                            });
                          }
                        },
                        color: AppColors.yellow,
                        child: Text(
                            AppLocalizations.of(context)
                                .translate('login_btn_verification'),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    loginNonUser();
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text("Skip and continue",
                        style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center),
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
