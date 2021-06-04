import 'dart:convert';

import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/remote_config/remote_config.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class AboutWidget extends AnimatedWidget {
  AboutWidget({this.remoteConfig}) : super(listenable: remoteConfig);
  final RemoteConfig remoteConfig;

  @override
  Widget build(BuildContext context) {
    print("remote config about app >>");
    print(remoteConfig.getString('about_app'));
    Map<String, dynamic> objectAbout = jsonDecode(remoteConfig.getString('about_app'));
    return Container(
      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(objectAbout["short_description"],

              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "roboto",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(objectAbout["full_description"],
                style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify),
          )
        ],
      ),
    );
  }
}

class _AboutScreenState extends State<AboutScreen> {

  goBack(BuildContext context){
    Navigator.pop(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
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
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new IconButton(
                      icon: new Icon(Icons.arrow_back_outlined,
                          color: Colors.black, size: 28.0),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text("About Screen",
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
                FutureBuilder(
                  future: GetRemoteConfig.setupRemoteConfig(),
                  builder: (BuildContext context, AsyncSnapshot<RemoteConfig> snapshot) {
                    return snapshot.hasData
                        ? AboutWidget(remoteConfig: snapshot.data)
                        : Container();
                  },
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
