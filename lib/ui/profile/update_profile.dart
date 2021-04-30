import 'dart:ffi';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:boilerplate/widgets/digiresto_textfield.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';
class UpdateProfileScreen extends StatefulWidget {

  @override
  _UpdateProfileScreenState createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  var nameController = new TextEditingController();
  var emailController = new TextEditingController();
  var handphoneController = new TextEditingController();
  bool allowEdit;
  UserStore _userStore;
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    nameController.text = _userStore.profile.name;
    emailController.text = _userStore.profile.email;
    handphoneController.text = _userStore.profile.mobilePhone;
    setState(() {
      allowEdit=false;
    });
  }

  Widget updateProfile(){
    Loading.show();
    _userStore.updateProfile({
      "name": nameController.text.toString(),
      "email":  emailController.text.toString(),
    }) .then((res) {
      ErrorPopupWidget.show(context, "Digiresto", "Berhasil mengubah data profil", () {Navigator.pop(context);  });
      _userStore.getProfile();
      Loading.dismiss();
    }).catchError((err) {
      Loading.dismiss();
      ErrorPopupWidget.showDioError(context,err,null);
      print("error response: " + err.toString());
    });

    setState(() {
      allowEdit=false;
    });
  }
  Widget btnEdit(){
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            allowEdit=true;
          });
        },
        color: AppColors.redYoung,
        child: Text("Edit",
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
    );
  }

  Widget btnSave(){
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: () {
          updateProfile();
        },
        color: AppColors.redYoung,
        child: Text("Save",
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
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            color: AppColors.red,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new IconButton(
                          icon: new Icon(Icons.arrow_back_outlined,
                              color: Colors.black, size: 28.0),
                          onPressed: () {
                              Navigator.of(context).pop();
                          }
                        ),
                        Text("Ubah Profile",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center),
                        Container(width: 30,),
                      ],
                    ),
              ],
            ),
          ),
          Container(
            color: AppColors.greyStroke,
            width: double.infinity,
            height: 10,
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.bgUpdateProfile),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                DigirestoTextFieldWidget(
                    title: "Nama",
                    hintText: "nama",
                    textController: nameController,
                    enabled: allowEdit
                ),
                DigirestoTextFieldWidget(
                  title: "Email",
                  hintText: "email",
                  textController: emailController,
                  enabled: allowEdit,
                ),

                DigirestoTextFieldWidget(
                  title: "Nomor Handphone",
                  hintText: "nomor handphone",
                  textController: handphoneController,
                  enabled: false,
                ),

                (allowEdit==true) ? btnSave() : btnEdit()
              ],
            ),
          ),


        ],
      ),
    );
  }
}
