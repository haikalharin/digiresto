import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/locale/app_localization.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Digiresto',
      enableLog: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.mainMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: Routers().routers,
      initialRoute: Routers.splash,
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
          'US',
          'en',
        ),
        Locale(
          'DK',
          'da',
        ),
        Locale(
          'ES',
          'es',
        ),
      ],
    );
  }
}
