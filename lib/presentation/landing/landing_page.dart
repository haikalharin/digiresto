import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/landing/bottom_tab_view.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<BottomTabView>();
  }
}
