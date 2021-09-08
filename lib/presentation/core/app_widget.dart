import 'package:alice/alice.dart';
import 'package:digiresto/application/digi_locale/digi_locale_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@injectable
class AppWidget extends HookWidget {
  const AppWidget({required this.alice});
  final Alice alice;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DigiLocaleBloc, DigiLocaleState>(
      buildWhen: (previous, current) =>
          previous.toString() != current.toString(),
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => SizedBox.shrink(),
            loadLocale: (lcl) {
              return GetMaterialApp(
                title: 'Digiresto',
                navigatorKey: alice.getNavigatorKey(),
                enableLog: false,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  I10n.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: I10n.delegate.supportedLocales,
                locale: lcl.locale,
                fallbackLocale: lcl.locale,
                theme: ThemeData(
                  primarySwatch: AppColors.mainMaterialColor,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                getPages: Routers().routers,
                initialRoute: Routers.splash,
              );
            });
      },
    );
  }
}
