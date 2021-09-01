import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_on_process_widget.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_pending_widget.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CollapsedScafold(
        showBackButton: true,
        title: 'Riwayat Pembelian',
        tabbar: TabBar(
          labelColor: AppColors.mainColor,
          unselectedLabelColor: AppColors.greyColor,
          labelStyle: Styles.creditTabStyle.copyWith(
            fontSize: 12,
          ),
          tabs: [
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
          ],
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return OrderPendingWidget();
              },
            ),
            ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return OrderOnProcessWidget();
              },
            ),
            ListView(),
          ],
        ),
      ),
    );
  }
}
