import 'package:digiresto/application/profile/order_history/order_history_bloc.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/order_on_process_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OrderOnProcessPage extends StatefulWidget {
  const OrderOnProcessPage({Key? key}) : super(key: key);

  @override
  _OrderOnProcessPageState createState() => _OrderOnProcessPageState();
}

class _OrderOnProcessPageState extends State<OrderOnProcessPage> {
  final PagingController<int, OrderHistory> _pagingController =
      PagingController(firstPageKey: 1);
  late final _bloc = BlocProvider.of<OrderHistoryBloc>(context);
  @override
  Widget build(BuildContext context) {
    return PagedListView<int, OrderHistory>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<OrderHistory>(
        itemBuilder: (context, orderOnProcess, index) => OrderOnProcessWidget(
          orderOnProcess,
          refresh: () => _bloc.add(
            OrderHistoryEvent.orderOnProcessOpen(),
          ),
        ),
      ),
    );
  }
}
