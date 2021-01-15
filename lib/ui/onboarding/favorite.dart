import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/theme_text.dart';
import 'package:boilerplate/constants/colors.dart';

class FavoriteScreen extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: AppIconWidget(
                  image: Assets.appLogo,
                  percent: 0.1,
                )),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Image(
                    image: AssetImage(Assets.bgOnbooarding3),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                          AppLocalizations.of(context)
                              .translate('onboarding_favorite_title'),
                          style: ThemeText.onboardingTitle,
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('onboarding_favorite_desc'),
                        style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.fiber_manual_record,
                              color: Colors.white, size: 20),
                          Icon(Icons.fiber_manual_record,
                              color: Colors.white, size: 20),
                          Icon(Icons.fiber_manual_record,
                              color: AppColors.yellow, size: 20),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 110,
                      child: RaisedButton(
                          onPressed: () {
                            SharedPreferences.getInstance().then((prefs) {
                              prefs.setBool(Preferences.show_onboarding, false);
                            });
                            Navigator.of(context)
                                .pushReplacementNamed(Routes.login);
                          },
                          color: AppColors.yellow,
                          child: Text(
                              AppLocalizations.of(context)
                                  .translate('onboarding_btn_next'),
                              style: TextStyle(fontSize: 20)),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
