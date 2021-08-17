import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        state.preInstalled.fold(
          () => null,
          (preInstalled) => preInstalled
              ? Get.offAllNamed(Routers.auth)
              : Get.offAllNamed(Routers.intro),
        );
      },
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
