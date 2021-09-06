import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryPageController extends GetxController
    with SingleGetTickerProviderMixin {
  final void Function(int tabIndex) tabListener;
  OrderHistoryPageController(this.tabListener);
  RxInt tabIndex = 0.obs;
  final List<Widget> myTabs = [
    Tab(
      icon: Text(
        'Menunggu Pembayaran',
        textAlign: TextAlign.center,
      ),
      iconMargin: EdgeInsets.all(8),
      child: SizedBox(
        height: 5,
      ),
    ),
    Tab(
      icon: Text(
        'Pembelian Diproses',
        textAlign: TextAlign.center,
      ),
      iconMargin: EdgeInsets.all(8),
      child: SizedBox(
        height: 5,
      ),
    ),
    Tab(
      icon: Text(
        'Pembelian Selesai',
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
