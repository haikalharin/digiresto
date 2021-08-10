import 'package:digiresto/presentation/core/app_widget.dart';
import 'package:digiresto/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

import 'injection.dart';

export 'package:digiresto/presentation/core/app_widget.dart';

void main() async {
  await Hive.initFlutter();
  configureInjection('dev');
  Get.put(SimpleBlocObserver(Logger()));
  Bloc.observer = Get.find<SimpleBlocObserver>();
  runApp(const AppWidget());
}
