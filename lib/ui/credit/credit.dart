import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:provider/provider.dart';

class CreditScreen extends StatefulWidget {
  @override
  _CreditScreenState createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {

  String balance;
  @override
  void initState() {
    super.initState();
  }

  UserStore _userStore;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _userStore = Provider.of<UserStore>(context);
    var tmpBalance = double.parse(_userStore.balance.balance).toString();
    setState(() {
      balance = tmpBalance;
    });
    getBalance();
  }

  void getBalance(){
    SharedPreferences.getInstance().then((prefs) {
      _userStore.getBalance(prefs.getString(Preferences.access_token)).then((res) {
        var tmpBalance =double.parse(res.balance).toString();
        setState(() {
          balance = tmpBalance;
        });
      });
    });
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.bgHome),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                      AppLocalizations.of(context).translate('credit_title'),
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
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
                                fontSize: 14,
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
                                      fontSize: 14,
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
                                      fontSize: 36,
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
