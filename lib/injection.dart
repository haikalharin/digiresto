import 'package:digiresto/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}
