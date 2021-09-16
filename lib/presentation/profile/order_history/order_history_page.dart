import 'package:digiresto/application/profile/order_history/order_history_bloc.dart';
import 'package:digiresto/application/profile/order_history/order_history_page_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_completed_widget.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_on_process_widget.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_pending_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderHistoryBloc>(
      create: (context) => getIt<OrderHistoryBloc>(),
      child: OrderHistoryWidget(),
    );
  }
}

class OrderHistoryWidget extends StatelessWidget {
  const OrderHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final _bloc = BlocProvider.of<OrderHistoryBloc>(context);
    void Function(int) tabListener = (int index) {
      final Map<int, OrderHistoryEvent> map = {
        0: OrderHistoryEvent.orderPendingOpen(),
        1: OrderHistoryEvent.orderOnProcessOpen(),
        2: OrderHistoryEvent.orderCompletedOpen(),
      };
      _bloc.add(map[index]!);
    };
    final _controller = Get.put(OrderHistoryPageController(tabListener));
    return CollapsedScafold(
      showBackButton: true,
      title: 'Riwayat Pembelian',
      tabbar: TabBar(
        controller: _controller.controller,
        labelColor: AppColors.mainColor,
        unselectedLabelColor: AppColors.greyColor,
        labelStyle: Styles.creditTabStyle.copyWith(
          fontSize: 12,
        ),
        tabs: _controller.myTabs,
      ),
      body: BlocConsumer<OrderHistoryBloc, OrderHistoryState>(
        bloc: _bloc..add(OrderHistoryEvent.orderPendingOpen()),
        listener: (context, state) {},
        builder: (context, state) => TabBarView(
          controller: _controller.controller,
          children: [
            //waiting payment
            state.orderPendingFailureOrSuccess.fold(
              () => Center(
                child: CircularProgressIndicator(),
              ),
              (data) => data.fold(
                (failure) => Center(
                  child: Text(
                    failure.maybeMap(
                      orElse: () => 'Error',
                      serverError: (_) => 'Server Error',
                      noData: (_) => 'Belum ada transaksi',
                    ),
                  ),
                ),
                (orderPendingList) => ListView.builder(
                  itemCount: orderPendingList.length,
                  itemBuilder: (context, index) {
                    return OrderPendingWidget(orderPendingList[index]);
                  },
                ),
              ),
            ),
            //purchase processed
            state.orderOnProccessFailureOrSuccess.fold(
              () => Center(
                child: CircularProgressIndicator(),
              ),
              (data) => data.fold(
                (failure) => Center(
                  child: Text(
                    failure.maybeMap(
                      orElse: () => 'Error',
                      serverError: (_) => 'Server Error',
                      noData: (_) => 'Belum ada transaksi',
                    ),
                  ),
                ),
                (orderOnProcess) => ListView.builder(
                  itemCount: orderOnProcess.length,
                  itemBuilder: (context, index) {
                    return OrderOnProcessWidget(orderOnProcess[index]);
                  },
                ),
              ),
            ),
            //purchase completed
            state.orderCompletedFailureOrSuccess.fold(
              () => Center(
                child: CircularProgressIndicator(),
              ),
              (data) => data.fold(
                (failure) => Center(
                  child: Text(
                    failure.maybeMap(
                      orElse: () => 'Error',
                      serverError: (_) => 'Server Error',
                      noData: (_) => 'Belum ada transaksi',
                    ),
                  ),
                ),
                (orderCompleted) => ListView.builder(
                  itemCount: orderCompleted.length,
                  itemBuilder: (context, index) {
                    return OrderCompletedWidget(orderCompleted[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
