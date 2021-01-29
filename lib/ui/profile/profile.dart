import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/apis/login/login_pin_api.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/horizontal_menu_widget.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
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
                  padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text("Profile",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.white,
                              fontSize: 24,
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
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: AppColors.greyFill,
                  border: Border.all(color: AppColors.greyStroke)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _userStore.profile.name,
                    style: TextStyle(
                      fontFamily: "roboto",
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(_userStore.profile.email,
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.black,
                        fontSize: 14,
                      )),
                  Text(_userStore.profile.mobilePhone,
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.black,
                        fontSize: 14,
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: AppColors.greyFill),
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  HorizontalMenu(
                    title: "History",
                    leftIcon: Icons.history,
                    rightIcon: Icons.arrow_forward_outlined,
                    onClick: () {
                      print("Container clicked");
                    },
                  ),
                  HorizontalMenu(
                      title: "Address",
                      leftIcon: Icons.pin_drop_outlined,
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        print("Container clicked");
                      }),
                  HorizontalMenu(
                      title: "Customer Service",
                      leftIcon: Icons.contact_support_outlined,
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        print("Container clicked");
                      }),
                  HorizontalMenu(
                      title: "About Digiresto",
                      leftIcon: Icons.info_outline,
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        print("Container clicked");
                      }),
                  HorizontalMenu(
                      title: "Privacy Policy",
                      leftIcon: Icons.privacy_tip_outlined,
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        print("Container clicked");
                      }),
                  HorizontalMenu(
                    title: "App Verrsion",
                    rightTitle: "v0.1.1",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 50, right: 50),
              decoration:  BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide( //                    <--- top side
                    color: AppColors.greyStroke,
                  ),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 44,
                child: RaisedButton(
                    onPressed: () {
                      _userStore.logoutSessionLogin();
                      SharedPreferences.getInstance().then((prefs) {
                        prefs.setString(Preferences.access_token, "");
                      });
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          Routes.input_phone, (Route<dynamic> route) => false);
                    },
                    color: AppColors.red,
                    child: Text("Logout",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
