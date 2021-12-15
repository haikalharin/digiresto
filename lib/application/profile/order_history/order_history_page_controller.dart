import 'package:badges/badges.dart';
import 'package:digiresto/domain/core/theme.dart';
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

  RxInt waitingPaymentCount = 0.obs;
  RxInt orderProcessedCount = 0.obs;
  RxInt orderUpcomingCount = 0.obs;

  setOrderProcessCount(int count) {
    orderProcessedCount.value = count;
  }

  late final List<Widget> myTabs = [
    Obx(
      () => Tab(
        icon: Badge(
          showBadge: waitingPaymentCount.value > 0,
          padding: EdgeInsets.all(6),
          position: BadgePosition.topEnd(end: -20),
          badgeContent: Text(
            '$waitingPaymentCount',
            style: Styles.badgeContentStyle,
          ),
          child: Text(
            i10n.history_pending_payment,
            textAlign: TextAlign.center,
          ),
        ),
        iconMargin: EdgeInsets.all(8),
        child: SizedBox(
          height: 5,
        ),
      ),
    ),
    Obx(
      () => Tab(
        icon: Badge(
          showBadge: orderProcessedCount.value > 0,
          padding: EdgeInsets.all(6),
          position: BadgePosition.topEnd(end: -20),
          badgeContent: Text(
            '$orderProcessedCount',
            style: Styles.badgeContentStyle,
          ),
          child: Text(
            i10n.history_process,
            textAlign: TextAlign.center,
          ),
        ),
        iconMargin: EdgeInsets.all(8),
        child: SizedBox(
          height: 5,
        ),
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
    Obx(
      () => Tab(
        icon: Badge(
          showBadge: orderUpcomingCount.value > 0,
          padding: EdgeInsets.all(6),
          position: BadgePosition.topEnd(end: -20),
          badgeContent: Text(
            '$orderUpcomingCount',
            style: Styles.badgeContentStyle,
          ),
          child: Text(
            i10n.upcoming_order,
            textAlign: TextAlign.center,
          ),
        ),
        iconMargin: EdgeInsets.all(8),
        child: SizedBox(
          height: 5,
        ),
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
