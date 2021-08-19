import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/address/map/address_map_bloc.dart';
import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/presentation/core/app_widget.dart';
import 'package:digiresto/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'application/home/home_user_bloc/home_user_bloc.dart';
import 'injection.dart';

export 'package:digiresto/presentation/core/app_widget.dart';

const env = Environment.dev;
Future<void> main() async {
  await Hive.initFlutter();
  await configureInjection(env);
  // Bloc.observer = getIt<SimpleBlocObserver>();
  runApp(InitiateProvider());
}

class InitiateProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<HomeUserBloc>(
        create: (context) => getIt<HomeUserBloc>(),
      ),
      BlocProvider<AddressListBloc>(
          create: (context) => getIt<AddressListBloc>()),
      BlocProvider<AddressMapBloc>(
          create: (context) => getIt<AddressMapBloc>()),
      BlocProvider<AppBloc>(
        create: (context) => getIt<AppBloc>()..add(AppEvent.started()),
      )
    ], child: AppWidget());
  }
}

class InitiateHive {
  static initial() async {
    //..registerAdapter(UserAddressAdapter());
  }
}
