import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryPageController extends GetxController
    with SingleGetTickerProviderMixin {
  final void Function(int tabIndex) tabListener;
  final I10n i10n;
  OrderHistoryPageController({
    required this.tabListener,
    required this.i10n,
  });
  RxInt tabIndex = 0.obs;

  late final List<Widget> myTabs = [
    Tab(
      icon: Text(
        i10n.history_pending_payment,
        textAlign: TextAlign.center,
      ),
      iconMargin: EdgeInsets.all(8),
      child: SizedBox(
        height: 5,
      ),
    ),
    Tab(
      icon: Text(
        i10n.history_process,
        textAlign: TextAlign.center,
      ),
      iconMargin: EdgeInsets.all(8),
      child: SizedBox(
        height: 5,
      ),
    ),
    Tab(
      icon: Text(
        i10n.history_done,
        textAlign: TextAlign.center,
      ),
      iconMargin: EdgeInsets.all(8),
      child: SizedBox(
        height: 5,
      ),
    ),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    controller.addListener(() => tabListener(controller.index));
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
