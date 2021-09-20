import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/address/map/address_map_bloc.dart';
import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/application/digi_locale/digi_locale_bloc.dart';
import 'package:digiresto/application/transaction/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:digiresto/presentation/core/app_widget.dart';
import 'package:digiresto/simple_bloc_delegate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'application/home/home_navigation_view_controller.dart';
import 'application/home/home_user_bloc/home_user_bloc.dart';
import 'application/order/bloc/order_bloc.dart';
import 'injection.dart';
import 'presentation/core/widgets/loading.dart';

export 'package:digiresto/presentation/core/app_widget.dart';

//TODO: Importance Jgn lupa ganti environment ini ketika di publish ke store
const env = Environment.dev;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp();
  await configureInjection(env);
  Bloc.observer = getIt<SimpleBlocObserver>();
  runApp(
    InitiateProvider(),
  );
  Loading.configLoading();
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
