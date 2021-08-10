import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/router/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Digiresto',
      enableLog: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mainMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: Routers().routers,
      initialRoute: Routers.intro,
    );
  }
}
