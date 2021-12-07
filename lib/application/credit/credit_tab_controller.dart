import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditTabController extends GetxController
    with SingleGetTickerProviderMixin {
  RxInt tabIndex = 0.obs;
  final List<Widget> tabs;
  CreditTabController(this.tabs);

  late TabController controller;

  @override
  void onInit() {
    super.onInit();

    controller = TabController(vsync: this, length: tabs.length);
    controller.addListener(() {
      tabIndex.value = controller.index;
    });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
