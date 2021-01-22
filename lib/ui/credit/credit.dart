import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';

class CreditScreen extends StatefulWidget {
  @override
  _CreditScreenState createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {

  String balance;
  @override
  void initState() {
    super.initState();
    // initializing stores
    balance = '0';
    getBalance();
  }

  void getBalance(){
    SharedPreferences.getInstance().then((prefs) {
      UserApi.balance(prefs.getString(Preferences.access_token)).then((res) {

        var tmpBalance =double.parse(res.balance);
        setState(() {
          balance = tmpBalance.toString();
        });
      }).catchError((err) {
        print("error response: "+ err);
      });
    });

  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.bgHome),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(10, 80, 10, 0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                      AppLocalizations.of(context).translate('credit_title'),
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 180.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                              AppLocalizations.of(context)
                                  .translate('credit_info'),
                              style: TextStyle(
                                fontFamily: "roboto",
                                color: AppColors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center),
                        ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Rp',
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: AppColors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 25  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    balance,
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: AppColors.red,
                                      fontSize: 34,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],

                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
