import 'dart:convert';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/remote_config/remote_config.dart';
import 'package:boilerplate/widgets/horizontal_menu_widget.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:package_info/package_info.dart';
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

  String appVersion = '';

@override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores\
    _userStore = Provider.of<UserStore>(context);
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        // String appName = packageInfo.appName;
        // String packageName = packageInfo.packageName;
        appVersion = packageInfo.version;
        // String buildNumber = packageInfo.buildNumber;
      });

    });
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)
              .translate('profile_customer_service'),textAlign: TextAlign.center,),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(AppLocalizations.of(context)
                        .translate('profile_customer_service_desc'),textAlign: TextAlign.justify,style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),)),
                FutureBuilder(
                  future: GetRemoteConfig.setupRemoteConfig(),
                  builder: (BuildContext context, AsyncSnapshot<RemoteConfig> snapshot) {
                    return snapshot.hasData
                        ? CustomverServiceWidget(remoteConfig: snapshot.data)
                        : Container();
                  },
                ),

              ],
            ),
          ),
          actions: <Widget>[
                SizedBox(
              width: MediaQuery. of(context). size. width-100,
              height: 40,
              child: RaisedButton(
                  onPressed: () {Navigator.of(context).pop();},
                  color: Colors.white,
                  child: Text(AppLocalizations.of(context)
            .translate('profile_cancel'),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red)),
                  shape: RoundedRectangleBorder(

                      borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 1,
                      color: AppColors.red,
                    ),
                  ),

        ),
            ),
          ],
        );
      },
    );
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _userStore.profile.name,
                        style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 35,
                        padding: EdgeInsets.only(right: 15),
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(Routes.update_profile);
                            },
                            color: AppColors.redYoung,
                            child: Text("Ubah",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.redYoung,
                              ),
                            ),
                          ),
                      )
                    ],
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
                  // HorizontalMenu(
                  //   title: "Ubah PIN",
                  //   leftIcon: Icon(
                  //     Icons.security_outlined,
                  //     color: AppColors.red,
                  //     size: 21.0,
                  //   ),
                  //   rightIcon: Icons.arrow_forward_outlined,
                  //   onClick: () {
                  //     Navigator.of(context).pushNamed(Routes.history);
                  //   },
                  // ),
                  // HorizontalMenu(
                  //   title: "Pilih Bahasa",
                  //   leftIcon: Icon(
                  //     Icons.language,
                  //     color: AppColors.red,
                  //     size: 21.0,
                  //   ),
                  //   rightIcon: Icons.arrow_forward_outlined,
                  //   onClick: () {
                  //     Navigator.of(context).pushNamed(Routes.history);
                  //   },
                  // ),
                  HorizontalMenu(
                    title: AppLocalizations.of(context)
                  .translate('profile_history'),
                    leftIcon: new Image.asset(Assets.iconHistory,width: 21,height: 21,),
                    rightIcon: Icons.arrow_forward_outlined,
                    onClick: () {
                      Navigator.of(context).pushNamed(Routes.history);
                    },
                  ),
                  HorizontalMenu(
                      title: AppLocalizations.of(context)
                          .translate('profile_address'),
                      leftIcon: Icon(
                        Icons.pin_drop_outlined,
                        color: AppColors.red,
                        size: 21.0,
                      ),
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        _userStore.setActiveHistoryScreen("profile.address");
                        Navigator.of(context).pushNamed(Routes.set_address_list);
                      }),
                  HorizontalMenu(
                      title: AppLocalizations.of(context)
                          .translate('profile_customer_service'),
                      leftIcon: Icon(
                        Icons.contact_support_outlined,
                        color: AppColors.red,
                        size: 21.0,
                      ),
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        _showMyDialog(context);
                      }),
                  HorizontalMenu(
                      title: AppLocalizations.of(context)
                          .translate('profile_about_digiresto'),
                      leftIcon: Icon(
                        Icons.info_outline,
                        color: AppColors.red,
                        size: 21.0,
                      ),
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        Navigator.of(context).pushNamed(Routes.about);
                      }),
                  HorizontalMenu(
                      title: AppLocalizations.of(context)
                          .translate('profile_privacy_policy'),
                      leftIcon: new Image.asset(Assets.iconPrivacy,width: 21,height: 21,),
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        Navigator.of(context).pushNamed(Routes.privacy_policy);
                      }),
                  HorizontalMenu(
                      title: "Bergabung bersama digiresto",
                      leftIcon: Icon(
                        Icons.store,
                        color: AppColors.red,
                        size: 21.0,
                      ),
                      rightIcon: Icons.arrow_forward_outlined,
                      onClick: () {
                        LaunchUrl.run("https://play.google.com/store/apps/details?id=id.damcorp.digimitra");
                      }),
                  HorizontalMenu(
                    onClick: (){
                      PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
                        setState(() {
                          appVersion = packageInfo.version;
                        });
                      });
                    },
                    title: AppLocalizations.of(context)
                        .translate('profile_app_version'),
                    rightTitle: appVersion,
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
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          Routes.login_pin, (Route<dynamic> route) => false);
                    },
                    color: AppColors.red,
                    child: Text(AppLocalizations.of(context)
                        .translate('profile_logout'),
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


class CustomverServiceWidget extends AnimatedWidget {
  CustomverServiceWidget({this.remoteConfig}) : super(listenable: remoteConfig);
  final RemoteConfig remoteConfig;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> objectCustomerService = jsonDecode(remoteConfig.getString('customer_service'));
    return GestureDetector(
      onTap: (){
        for ( var dt in objectCustomerService["data"]){
          if (dt["type"]=="whatsapp"){
            LaunchUrl.run(dt["value"]);
          }
        }
      },
      child: Container(padding: EdgeInsets.only(top:10),child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 50,
            child: new IconButton(
              icon: new Icon(Icons.face_outlined,
                  color: AppColors.red, size: 28.0),
            ),
          ),
          Text("WhatsApp",style: TextStyle(
            fontFamily: "roboto",
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
            textAlign: TextAlign.center,),
          Container(width: 50),
        ],
      ),),
    );
  }
}