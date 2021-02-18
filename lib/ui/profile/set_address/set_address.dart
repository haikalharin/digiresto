import 'dart:ffi';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';
class SetAddressScreen extends StatefulWidget {

  @override
  _SetAddressScreenState createState() => _SetAddressScreenState();
}

class _SetAddressScreenState extends State<SetAddressScreen> {
  goBack(BuildContext context){
    Navigator.pop(context);
  }

  UserStore _userStore;
  String appVersion = '';
  var listAddress = [];
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    getAddress();
  }
  Widget _btnNewAddress(){
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 3,
            //offset: Offset(3,3), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(Routes.set_address_add);
        },
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5,),
                child: new IconButton(
                  icon: new Icon(Icons.add,
                      color: AppColors.red, size: 28.0),
                ),
              ),
              Text("Add New",
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: AppColors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center),
            ],

          ),
        ),
      ),
    );
  }
  Widget _listAddress(UserAddress data){
    //return Text("13");
    return data.isDelete == false ? Container(
      margin: EdgeInsets.only(left: 10,right: 10, top: 10, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 3,
            //offset: Offset(3,3), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: (){
          print("set default");
          setDefaultAddress(data.id);
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.only(top:6,bottom: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,),
                      child: new IconButton(
                        icon: ImageIcon(AssetImage(Assets.iconGps), size: 20, color: AppColors.red),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(data.name,
                              style: TextStyle(
                                fontFamily: "roboto",
                                color: AppColors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),),
                        ),

                        Container(
                          padding: EdgeInsets.only(top:10),
                          width: MediaQuery. of(context). size. width-170,
                          child: Text(data.address,
                              style: TextStyle(
                                fontFamily: "roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),softWrap: true,maxLines: 3
                            ,),
                        ),
                      ],

                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:6,right: 10,bottom:6),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(data.isDefault ? "Default" : "",
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),),
                    ),
                    new IconButton(
                      icon: new Icon(Icons.delete,
                          color: AppColors.red, size: 28.0),
                      onPressed: () {
                      print("delete address");
                      removeAddress(data.id);
                      }
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    ) : "";
  }

  void getAddress(){
        _userStore.getAddress(_userStore.profile.mobilePhone).then((res) {
          setState(() {
            listAddress=res;
          });
        }).catchError((err) {
          print("error response: "+ err);
        });
  }
  void removeAddress(int id){
      _userStore.removeAddress({
        "wa_id": _userStore.profile.mobilePhone,
        "waba_no": Strings.wabaNo,
        "id": id
      }).then((res) {
        getAddress();
      }).catchError((err) {
        print("error response: "+ err);
      });
  }
  void setDefaultAddress(int id){
      _userStore.setDefaultAddress({
        "wa_id": _userStore.otpHandphone,
        "waba_no": Strings.wabaNo,
        "id": id
      }).then((res) {
        setState(() {
          listAddress=res;
        });
      }).catchError((err) {
        print("error response: "+ err);
      });
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
            padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
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
                          _userStore.setActivedHomeTab("profile");
                            Navigator.of(context).pushReplacementNamed(Routes.home);
                          }
                        ),
                        Text("All Address",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                        Text(""),
                      ],
                    ),
                    Container(
                      height: MediaQuery. of(context). size. height-120,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            listAddress.length >0  ? new ListView.builder
                              (
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,

                                itemCount: listAddress.length,
                                itemBuilder: (BuildContext ctxt, int index) {
                                  return _listAddress(listAddress[index]);
                                },
                            ) : Container(

                            ),
                            _btnNewAddress(),
                          ],
                        )
                      ),
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
