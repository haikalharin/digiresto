import 'dart:async';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/login/otp_wame_model.dart';
import 'package:boilerplate/models/login/otp_validate_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/login/otp_store.dart';
import 'package:boilerplate/widgets/app_icon_widget.dart';
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

class BoxNumber extends StatelessWidget {
  final number;
  final icon;
  final onClick;

  const BoxNumber({Key key, this.number, this.icon, this.onClick})
      : super(key: key);

  @override
  Widget IconBox(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.center,
      child: Material(
        child: InkWell(
          onTap: onClick,
          child: Container(
            alignment: Alignment.center,
            child: Icon(
              this.icon,
              color: AppColors.red,
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget NumerBox(BuildContext context) {
    return Container(
      //color: Colors.w,
      height: 70,
      width: MediaQuery.of(context).size.width / 3,
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.center,
      child: Material(
        child: InkWell(
          onTap: onClick,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              this.number.toString(),
              style: TextStyle(
                fontFamily: "roboto",
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
        child: this.icon != null ? IconBox(context) : NumerBox(context));
  }
}

class BoxInputPin extends StatelessWidget {
  final isActive;

  const BoxInputPin({Key key, this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 60,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(15.0)),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20),
          ),
          isActive
              ? Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: AppColors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(15.0)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20),
                )
              : Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(15.0)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20),
                )
        ],
      ),
    );
  }
}

class Keyboard extends StatelessWidget {
  final handleClickNumber;
  final handleClickBackspace;

  const Keyboard({Key key, this.handleClickNumber, this.handleClickBackspace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxNumber(
                  number: 1,
                  onClick: () {
                    handleClickNumber(1);
                  }),
              BoxNumber(
                  number: 2,
                  onClick: () {
                    handleClickNumber(2);
                  }),
              BoxNumber(
                  number: 3,
                  onClick: () {
                    handleClickNumber(3);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxNumber(
                  number: 4,
                  onClick: () {
                    handleClickNumber(4);
                  }),
              BoxNumber(
                  number: 5,
                  onClick: () {
                    handleClickNumber(5);
                  }),
              BoxNumber(
                  number: 6,
                  onClick: () {
                    handleClickNumber(6);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxNumber(
                  number: 7,
                  onClick: () {
                    handleClickNumber(7);
                  }),
              BoxNumber(
                  number: 8,
                  onClick: () {
                    handleClickNumber(8);
                  }),
              BoxNumber(
                  number: 9,
                  onClick: () {
                    handleClickNumber(9);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
              ),
              BoxNumber(
                  number: 0,
                  onClick: () {
                    handleClickNumber(0);
                  }),
              BoxNumber(
                icon: Icons.backspace_outlined,
                onClick: () {
                  handleClickBackspace();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
