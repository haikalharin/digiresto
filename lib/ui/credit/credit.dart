import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class CreditScreen extends StatefulWidget {
  @override
  _CreditScreenState createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {

  String balance = "0";
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
    //var tmpBalance = double.parse(_userStore.balance.balance).toString();
    String tmpBalance="0";
    if (_userStore.skipAndContinue??false){
      Timer.run(() {
        ErrorPopupWidget.showLoginRequired(context,(){
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(Routes.home);
        },(){
          _userStore.removeSkipAndContinue();
          _userStore.removeAuthToken();
          Navigator.of(context).pushNamed(Routes.input_phone);
        });
      });
    }else if (_userStore.balance != null ) {
      tmpBalance = Utils.formatRupiah(_userStore.balance.balance);
      setState(() {
        balance = tmpBalance;
      });
    }else{
      getBalance();
    }
  }


  void getBalance(){
      Loading.show();
      _userStore.getBalance().then((res) {
        var tmpBalance =Utils.formatRupiah(res.balance);
        setState(() {
          balance = tmpBalance;
        });
        Loading.dismiss();
      }).catchError((err) {
        Loading.dismiss();
        print("error response: " + err.toString());
        ErrorPopupWidget.showDioError(context,err, getBalance);
      });
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
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
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(25),
                //     bottomRight: Radius.circular(25))
            ),
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
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  height: 140.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 7,
                        offset: Offset(0,2), // changes position of shadow
                      ),
                    ],
                  ),
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
                                  padding: EdgeInsets.only(top: 10  ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(0.0),
                              alignment: Alignment.bottomRight,
                              width: 50,
                              child: new IconButton(
                                onPressed: (){
                                  getBalance();
                                },
                                icon: new Icon(Icons.refresh,
                                    color: AppColors.red, size: 28.0),
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
