import 'dart:io';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class WelcomeWidget extends AnimatedWidget {
  WelcomeWidget({this.remoteConfig}) : super(listenable: remoteConfig);

  final RemoteConfig remoteConfig;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remote Config Example'),
      ),
      body: Center(child: Text('Welcome ${remoteConfig.getString('welcome')}')),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () async {
            try {
              // Using default duration to force fetching from remote server.
              await remoteConfig.fetch(expiration: const Duration(seconds: 0));
              await remoteConfig.activateFetched();
            } on FetchThrottledException catch (exception) {
              // Fetch throttled.
              print(exception);
            } catch (exception) {
              print(
                  'Unable to fetch remote config. Cached or default values will be '
                      'used');
            }
          }),
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

  Future<RemoteConfig> setupRemoteConfig() async {
    await Firebase.initializeApp();
    final RemoteConfig remoteConfig = await RemoteConfig.instance;
    // Allow a fetch every millisecond. Default is 12 hours.
    remoteConfig
        .setConfigSettings(RemoteConfigSettings(minimumFetchIntervalMillis: 1));
    remoteConfig.setDefaults(<String, dynamic>{
      'welcome': 'default welcome',
      'hello': 'default hello',
    });
    return remoteConfig;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: setupRemoteConfig(),
          builder: (BuildContext context, AsyncSnapshot<RemoteConfig> snapshot) {
    return snapshot.hasData
    ? WelcomeWidget(remoteConfig: snapshot.data)
        : Container();
    },
        ),
      ),// body: Column(
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       height: 30,
      //       color: AppColors.red,
      //     ),
      //     Container(
      //       padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
      //       child: Column(
      //         children: [
      //
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               new IconButton(
      //                 icon: new Icon(Icons.arrow_back_outlined,
      //                     color: Colors.black, size: 28.0),
      //                 onPressed: () => Navigator.of(context).pop(),
      //               ),
      //               Text("About History Screen",
      //                   style: TextStyle(
      //                     fontFamily: "roboto",
      //                     color: Colors.black,
      //                     fontSize: 14,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                   textAlign: TextAlign.center),
      //               Text(""),
      //             ],
      //           ),
      //           Container(
      //             padding: EdgeInsets.only(left: 15, top: 15, right: 15),
      //             alignment: Alignment.topLeft,
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   alignment: Alignment.topLeft,
      //                   child: Text("Self order Digiresto",
      //
      //                     textAlign: TextAlign.left,
      //                     style: TextStyle(
      //                       fontFamily: "roboto",
      //                       color: Colors.black,
      //                       fontSize: 14,
      //                       fontWeight: FontWeight.normal,
      //                     ),),
      //                 ),
      //                 Container(
      //                   padding: EdgeInsets.only(top: 10),
      //                   child: Text("BB (BollingerBand) terbagi menjadi 3 garis, garis atas upperband, tengah middleband, dan bawah lower band, support dan resistance adalah garis harga yg menentukan saham akan break naik atau turun, support adalah garis bawah yg artinya harga terendah suatu saham sebelumnya dan resistance adalah harga tertinggu suatu saham sebelumnya, disini biasanya trader suka bingung bagaimana menentukannya, cara menentukan support dan resistance adalah jika support minimal 3 harga terendah sebelumnya dan resistance harga tertinggi sblumnya, karena support dan resistance bisa menjadi patokan harga yg mnentukan saham itu akan naik atau turun.",
      //                       style: TextStyle(
      //                         fontFamily: "roboto",
      //                         color: Colors.black,
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.normal,
      //                       ),
      //                       textAlign: TextAlign.justify),
      //                 ),
      //                 //KeyboardNumber(onComplete: (data){ print("hit api verify"+data); },)
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
