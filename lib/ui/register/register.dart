import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/otp_validate_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
import 'package:boilerplate/widgets/input_pin_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/theme_text.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/services.dart';
import 'package:boilerplate/widgets/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/widgets/input_pin_widget.dart';
import 'package:boilerplate/models/auth/register_model.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  UserStore _userStore;
  OtpWame otpWame;
  bool isSelectedToc = false;
  int _curr = 0;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  String pin;
  String confirmPin;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _userStore = Provider.of<UserStore>(context);
  }

  void changeTic(bool value) {
    setState(() {
      isSelectedToc = value;
    });
  }

  PageController controller = PageController();

  var arr = new List(6);
  var confirmArr = new List(6);
  int activeBox = 0;
  int confirmActiveBox = 0;

  void _handleClickNumber(int number) {
    setState(() {
      if (activeBox < 6 && arr[activeBox] == null) {
        arr[activeBox] = number;
      }
      if (activeBox < 6) activeBox++;
    });
    if (activeBox == 6) {
      setState(() {
        pin = arr.join();
      });
    }
  }

  void _handleClickBackspace() {
    setState(() {
      if (activeBox > 0) {
        if (activeBox <= 6) {
          activeBox--;
          arr[activeBox] = null;
        } else {
          if (activeBox > 1 || activeBox < 6) activeBox = activeBox - 1;
        }
      }
    });
  }

  void _confirmHandleClickNumber(int number) {
    setState(() {
      if (confirmActiveBox < 6 && confirmArr[confirmActiveBox] == null) {
        confirmArr[confirmActiveBox] = number;
      }
      if (confirmActiveBox < 6) confirmActiveBox++;
    });
    if (confirmActiveBox == 6) {
      setState(() {
        confirmPin = confirmArr.join();
      });
    }
  }

  void _confirmHandleClickBackspace() {
    setState(() {
      if (confirmActiveBox > 0) {
        if (confirmActiveBox <= 6) {
          confirmActiveBox--;
          confirmArr[confirmActiveBox] = null;
        } else {
          if (confirmActiveBox > 1 || confirmActiveBox < 6)
            confirmActiveBox = confirmActiveBox - 1;
        }
      }
    });
  }

  void gotoNextPage() {
    controller.animateToPage(_curr + 1,
        duration: Duration(milliseconds: 10), curve: Curves.linear);
    setState(() {
      _curr++;
    });
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
            Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new IconButton(
                                icon: new Icon(Icons.arrow_back,
                                    color: Colors.white, size: 20.0),
                                onPressed: () {
                                  if (_curr <= 0) {
                                    Navigator.of(context).pop();
                                  } else {
                                    controller.animateToPage(_curr - 1,
                                        duration: Duration(milliseconds: 10),
                                        curve: Curves.linear);
                                    setState(() {
                                      _curr--;
                                    });
                                    print("back");
                                  }
                                }),
                            Text(
                                AppLocalizations.of(context)
                                    .translate('register_title'),
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center),
                            InkWell(
                              onTap: () {
                                if (_curr == 0) {
                                  //page 1 logic
                                  if (_usernameController.text.toString().length <
                                      6) {
                                    Ctoast.show(
                                        "required username & must have at least 6 characters");
                                  } else if (_emailController.text.toString() ==
                                      "") {
                                    Ctoast.show("required email address");
                                  } else if (isSelectedToc == false) {
                                    Ctoast.show(
                                        "required accept term and condition");
                                  } else {
                                    gotoNextPage();
                                  }
                                } else if (_curr == 1) {
                                  //page 2 logic
                                  if (pin.toString().length < 6) {
                                    Ctoast.show(
                                        "required pin & must have at least 6 digit number");
                                  } else {
                                    gotoNextPage();
                                  }
                                } else if (_curr == 2) {
                                  //page 3 logic
                                  if (confirmPin.toString() != pin.toString()) {
                                    Ctoast.show(
                                        "the confirmation pin must be the same as the pin");
                                  } else {
                                    var details = {
                                      'credential': pin.toString(),
                                      'name': _usernameController.text.toString(),
                                      'accountNumber': _userStore.authPhone,
                                      'email': _emailController.text.toString(),
                                      'pushid': '12313131',
                                      'uid': '-',
                                    };
                                    Loading.show();
                                    _userStore.register(details).then((res) {
                                      Loading.dismiss();
                                      Ctoast.show(res.message);
                                      if (res.code.toString() == '00') {
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                            Routes.login_pin,
                                                (Route<dynamic> route) => false);
                                      }else{
                                        throw("register failed");
                                      }
                                    }).catchError((onError){
                                      Loading.dismiss();
                                      Ctoast.show("register failed");
                                      print("error response: "+ onError.toString());
                                    });
                                  }
                                }
                              },
                              child: Text(
                                  AppLocalizations.of(context)
                                      .translate('register_next'),
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    color: Colors.white,
                                    fontSize: 18,
                                    //fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 88,
                    width: double.infinity,
                    child: PageView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 0),
                              width: double.infinity,
                              color: AppColors.greyStroke,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding:
                                        EdgeInsets.fromLTRB(50, 10, 50, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .translate(
                                                  'register_info_profile'),
                                              style: TextStyle(
                                                fontFamily: "roboto",
                                                color: AppColors.red,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              AppLocalizations.of(context)
                                                  .translate('register_create_pin'),
                                              style: TextStyle(
                                                fontFamily: "roboto",
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                        EdgeInsets.fromLTRB(70, 10, 70, 10),
                                        alignment: Alignment.center,
                                        child: Stack(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 10, right: 10),
                                              height: 3,
                                              color: Colors.black26,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Icon(Icons.circle,
                                                    color: Colors.red, size: 28.0),
                                                Icon(Icons.circle,
                                                    color: Colors.grey, size: 28.0),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  //KeyboardNumber(onComplete: (data){ print("hit api verify"+data); },)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: TextFormField(
                                      controller: _usernameController,
                                      decoration: new InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "Username",
                                        border: new OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              width: 2,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.white),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.white),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.white)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.white)),
                                        //fillColor: Colors.green
                                      ),
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.black),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your username';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: TextFormField(
                                      controller: _emailController,
                                      decoration: new InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "Email",
                                        border: new OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              width: 2,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.white),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.white),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.white)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.white)),
                                        //fillColor: Colors.green
                                      ),
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.black),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isSelectedToc = !isSelectedToc;
                                                });
                                              },
                                              child: isSelectedToc
                                                  ? Icon(
                                                Icons.check_box_rounded,
                                                color: AppColors.yellow,
                                                size: 30,
                                              )
                                                  : Icon(
                                                Icons.check_box_outline_blank,
                                                color: AppColors.yellow,
                                                size: 30,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Container(
                                              constraints: BoxConstraints(
                                                  minWidth: 200, maxWidth: 300),
                                              child: Text(
                                                  AppLocalizations.of(context)
                                                      .translate(
                                                      'register_toc_title'),
                                                  style: TextStyle(
                                                    fontFamily: "roboto",
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: AppColors.greyFill,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 0),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Container(
                                      color: AppColors.greyStroke,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                            EdgeInsets.fromLTRB(50, 10, 50, 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)
                                                      .translate(
                                                      'register_info_profile'),
                                                  style: TextStyle(
                                                    fontFamily: "roboto",
                                                    color: AppColors.red,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  AppLocalizations.of(context)
                                                      .translate('register_create_pin'),
                                                  style: TextStyle(
                                                    fontFamily: "roboto",
                                                    color: AppColors.red,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding:
                                            EdgeInsets.fromLTRB(70, 10, 70, 10),
                                            alignment: Alignment.center,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10, left: 10, right: 10),
                                                  height: 3,
                                                  color: Colors.red,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Icon(Icons.circle,
                                                        color: Colors.red, size: 28.0),
                                                    Icon(Icons.circle,
                                                        color: Colors.red, size: 28.0),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .translate('register_enter_pin'),
                                        style: TextStyle(
                                          fontFamily: "roboto",
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    Container(
                                        padding: EdgeInsets.only(top: 20,bottom: 20),
                                        child: InputPin(lengthPin: arr)),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Keyboard(
                                          height: 80.0,
                                          handleClickNumber: _handleClickNumber,
                                          handleClickBackspace: _handleClickBackspace,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: AppColors.greyFill,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 0),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Container(
                                      color: AppColors.greyStroke,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                            EdgeInsets.fromLTRB(50, 10, 50, 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)
                                                      .translate(
                                                      'register_info_profile'),
                                                  style: TextStyle(
                                                    fontFamily: "roboto",
                                                    color: AppColors.red,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  AppLocalizations.of(context)
                                                      .translate('register_create_pin'),
                                                  style: TextStyle(
                                                    fontFamily: "roboto",
                                                    color: AppColors.red,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )

                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding:
                                            EdgeInsets.fromLTRB(70, 10, 70, 10),
                                            alignment: Alignment.center,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10, left: 10, right: 10),
                                                  height: 3,
                                                  color: Colors.red,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Icon(Icons.circle,
                                                        color: Colors.red, size: 28.0),
                                                    Icon(Icons.circle,
                                                        color: Colors.red, size: 28.0),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .translate('register_confirm_pin'),
                                        style: TextStyle(
                                          fontFamily: "roboto",
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    Container(
                                        padding: EdgeInsets.only(top:20,bottom: 20),
                                        child: InputPin(lengthPin: confirmArr)),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Keyboard(
                                          height: 80.0,
                                          handleClickNumber:
                                          _confirmHandleClickNumber,
                                          handleClickBackspace:
                                          _confirmHandleClickBackspace,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                      scrollDirection: Axis.horizontal,
                      //reverse: true,
                      // physics: BouncingScrollPhysics(),
                      controller: controller,
                      onPageChanged: (num) {
                        setState(() {
                          _curr = num;
                        });
                      },
                    ),
                  ),
                ]),
          ],
        ));
  }
}
