import 'package:digiresto/application/profile/order_history/order_history_bloc.dart';
import 'package:digiresto/application/profile/order_history/order_history_page_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_completed_widget.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_on_process_widget.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_pending_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

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
    final I10n i10n = I10n.of(context);
    late final _bloc = BlocProvider.of<OrderHistoryBloc>(context);
    void Function(int) tabListener = (int index) {
      final Map<int, OrderHistoryEvent> map = {
        0: OrderHistoryEvent.orderPendingOpen(),
        1: OrderHistoryEvent.orderOnProcessOpen(),
        2: OrderHistoryEvent.orderCompletedOpen(),
      };
      _bloc.add(map[index]!);
    };
    final _controller = Get.put(OrderHistoryPageController(
      tabListener: tabListener,
      i10n: i10n,
    ));
    return CollapsedScafold(
      showBackButton: true,
      title: i10n.profile_history,
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
        bloc: _bloc
          ..add(OrderHistoryEvent.orderPendingOpen())
          ..add(OrderHistoryEvent.getOrderOnProcessCount()),
        listener: (context, state) {
          state.orderOnProccessCountFailureOrSuccess.fold(
            () {},
            (failureOrSuccess) => failureOrSuccess.fold(
              (failure) {},
              (count) {
                _controller.orderProcessedCount.value = count;
              },
            ),
          );
          state.orderPendingCountOption.fold(
            () {},
            (count) {
              _controller.waitingPaymentCount.value = count;
            },
          );
        },
        builder: (context, state) => TabBarView(
          controller: _controller.controller,
          children: [
            //waiting payment
            RefreshIndicator(
              onRefresh: () async {
                _bloc.add(OrderHistoryEvent.orderPendingOpen());
              },
              child: Stack(
                children: <Widget>[
                  ListView(),
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
                            noData: (_) => i10n.history_empty_title,
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
                ],
              ),
            ),
            //purchase processed
            RefreshIndicator(
              onRefresh: () async {
                _bloc.add(OrderHistoryEvent.orderOnProcessOpen());
              },
              child: Stack(
                children: <Widget>[
                  ListView(),
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
                            noData: (_) => i10n.history_empty_title,
                          ),
                        ),
                      ),
                      (orderOnProcess) => ListView.builder(
                        itemCount: orderOnProcess.length,
                        itemBuilder: (context, index) {
                          return OrderOnProcessWidget(orderOnProcess[index],
                              refresh: () {
                            _bloc.add(OrderHistoryEvent.orderOnProcessOpen());
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //purchase completed
            RefreshIndicator(
              onRefresh: () async {
                _bloc.add(OrderHistoryEvent.orderCompletedOpen());
              },
              child: Stack(
                children: <Widget>[
                  ListView(),
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
                            noData: (_) => i10n.history_empty_title,
                          ),
                        ),
                      ),
                      (orderCompleted) => ListView.builder(
                        itemCount: orderCompleted.length,
                        itemBuilder: (context, index) {
                          return OrderCompletedWidget(orderCompleted[index],
                              refresh: () => _bloc
                                  .add(OrderHistoryEvent.orderCompletedOpen()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
