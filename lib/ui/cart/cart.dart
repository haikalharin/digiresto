import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  UserStore _userStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores\
    _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
