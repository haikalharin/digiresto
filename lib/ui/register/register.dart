import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/models/login/otp_validate_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/login/otp_store.dart';
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
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/widgets/input_pin_widget.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  OtpStore _otpStore;
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
    _otpStore = Provider.of<OtpStore>(context);
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
          confirmArr[activeBox] = null;
        } else {
          if (confirmActiveBox > 1 || confirmActiveBox < 6)
            confirmActiveBox = confirmActiveBox - 1;
        }
      }
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
            Column(children: [
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
                                    duration: Duration(milliseconds: 500),
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
                            controller.animateToPage(_curr + 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear);
                            setState(() {
                              _curr++;
                            });
                            print("username: "+_usernameController.text.toString());
                            print("email: "+_emailController.text.toString());
                            print("pin: "+pin.toString());
                            print("confirm pin: "+confirmPin.toString());
                            print("accept Toc: "+isSelectedToc.toString());
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
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          width: double.infinity,
                          color: AppColors.greyFill,
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
                                          "Info Profile",
                                          style: TextStyle(
                                            fontFamily: "roboto",
                                            color: AppColors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Buat PIN Login",
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
                                          constraints: BoxConstraints(minWidth: 200, maxWidth: 300),
                                          child: Text(
                                              "Dengan mengklik lanjutkan, Saya setuju dengan syarat dann ketentuan digiresto",
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
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          width: double.infinity,
                          color: AppColors.greyFill,
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
                                          "Info Profile",
                                          style: TextStyle(
                                            fontFamily: "roboto",
                                            color: AppColors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Buat PIN Login",
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
                              Text(
                                "Masukkan Pin Login",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              InputPin(lengthPin: arr),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Keyboard(
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
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          width: double.infinity,
                          color: AppColors.greyFill,
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
                                          "Info Profile",
                                          style: TextStyle(
                                            fontFamily: "roboto",
                                            color: AppColors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Buat PIN Login",
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
                              Text(
                                "Masukkan Kembali Pin Login",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              InputPin(lengthPin: confirmArr),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Keyboard(
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
              )
            ]),
          ],
        ));
  }
}

class Pages extends StatelessWidget {
  final text;

  Pages({this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
