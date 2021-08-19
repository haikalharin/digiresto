import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Digiresto',
      enableLog: false,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        I10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: I10n.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: AppColors.mainMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: Routers().routers,
      initialRoute: Routers.splash,
    );
  }
}
