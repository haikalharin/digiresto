import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/address/map/address_map_bloc.dart';
import 'package:digiresto/application/auth/auth_bloc.dart';
import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/application/digi_locale/digi_locale_bloc.dart';
import 'package:digiresto/application/notification/notification_bloc.dart';
import 'package:digiresto/application/transaction/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:digiresto/infrastructure/core/globals.dart';
import 'package:digiresto/presentation/core/app_widget.dart';
import 'package:digiresto/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'application/home/home_navigation_view_controller.dart';
import 'application/home/home_user_bloc/home_user_bloc.dart';
import 'application/order/bloc/order_bloc.dart';
import 'injection.dart';
import 'presentation/core/widgets/loading.dart';

export 'package:digiresto/presentation/core/app_widget.dart';

Future<void> mainProgram() async {
  await Hive.initFlutter();
  await configureInjection(Globals.env);
  Bloc.observer = getIt<SimpleBlocObserver>();
  Loading.configLoading();
  runApp(
    InitiateProvider(),
  );
}

class InitiateProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeNavigationViewController());
    return MultiBlocProvider(providers: [
      BlocProvider<HomeUserBloc>(
        create: (context) => getIt<HomeUserBloc>()
          ..add(HomeUserEvent.getActiveAddress())
          ..add(HomeUserEvent.getStaticBanner())
          ..add(HomeUserEvent.getCartSessionID()),
      ),
      BlocProvider<AddressListBloc>(
          create: (context) => getIt<AddressListBloc>()),
      BlocProvider<AddressMapBloc>(
          create: (context) => getIt<AddressMapBloc>()),
      BlocProvider<OrderBloc>(create: (context) => getIt<OrderBloc>()),
      BlocProvider<TransactionBloc>(
          create: (context) => getIt<TransactionBloc>()),
      BlocProvider<AppBloc>(
        create: (context) => getIt<AppBloc>()..add(AppEvent.started()),
      ),
      BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(AuthEvent.authCheckRequested())),
      BlocProvider<NotificationBloc>(
          create: (context) =>
              getIt<NotificationBloc>()..add(NotificationEvent.started())),
      BlocProvider<DigiLocaleBloc>(
          create: (_) =>
              getIt<DigiLocaleBloc>()..add(DigiLocaleEvent.started()))
    ], child: getIt<AppWidget>());
  }
}

class InitiateHive {
  static initial() async {
    //..registerAdapter(UserAddressAdapter());
  }
}
