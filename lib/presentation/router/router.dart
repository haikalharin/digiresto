import 'package:digiresto/presentation/intro/intro_page.dart';
import 'package:get/route_manager.dart';

class Routers {
  static const String landing = '/';
  static const String intro = '/intro';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.intro,
      page: () => IntroPage(),
    ),
  ];
}
