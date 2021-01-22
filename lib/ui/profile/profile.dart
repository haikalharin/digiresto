import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/apis/login/login_pin_api.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:provider/provider.dart';
class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserStore _userStore;

  OtpWame otpWame;

  LoginPinApi loginPinApi;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores\
    _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.bgHome),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.fromLTRB(10, 80, 10, 0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text("Profile",
                          style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 50, right: 50),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                  onPressed: () {
                    _userStore.logoutSessionLogin();
                    SharedPreferences.getInstance().then((prefs) {
                      prefs.setString(Preferences.access_token, "");
                    });
                  },
                  color: AppColors.red,
                  child: Text("Logout",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ),
          ),
        ],
      ),
    );
  }
}
