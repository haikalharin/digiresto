import 'package:digiresto/infrastructure/core/globals.dart';
import 'package:digiresto/main.dart';
import 'package:injectable/injectable.dart';
export 'package:digiresto/presentation/core/app_widget.dart';

Future<void> main() async {
  Globals.env = Environment.prod;
  await mainProgram();
}
