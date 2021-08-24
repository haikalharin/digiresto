import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/home/home_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeUserBloc>(
      create: (context) => getIt<HomeUserBloc>()
        ..add(HomeUserEvent.getActiveAddress())
        ..add(HomeUserEvent.getStaticBanner()),
      child: HomeContentScreen(),
    );
  }
}
