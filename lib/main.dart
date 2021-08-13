import 'package:digiresto/presentation/core/app_widget.dart';
import 'package:digiresto/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'injection.dart';

export 'package:digiresto/presentation/core/app_widget.dart';

void main() async {
  await Hive.initFlutter();
  configureInjection('dev');
  Bloc.observer = getIt<SimpleBlocObserver>();
  runApp(const AppWidget());
}
