import 'package:digiresto/application/profile/order_details/order_details_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/profile/order_history/order_details_onprocess.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailsPage extends StatelessWidget {
  final String receiptCode;
  const OrderDetailsPage(this.receiptCode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderDetailsBloc>(
      create: (context) => getIt<OrderDetailsBloc>()
        ..add(
          OrderDetailsEvent.started(receiptCode),
        ),
      child: OrderDetailsWidget(receiptCode),
    );
  }
}

class OrderDetailsWidget extends StatelessWidget {
  final String receiptCode;
  const OrderDetailsWidget(this.receiptCode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CollapsedScafold(
      showBackButton: true,
      title: 'Detail Riwayat',
      body: BlocConsumer<OrderDetailsBloc, OrderDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
            initial: (_state) => Container(),
            loading: (_state) => Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_state) => Center(
              child: Text(
                _state.failure.maybeMap(
                  orElse: () => 'Unknown Error',
                  noData: (_) => 'No Data',
                  noInternet: (_) => 'No Internet',
                  serverError: (_) => 'Server Error',
                ),
              ),
            ),
            loadSuccess: (_state) {
              final _orderDetails = _state.orderHistoryDetails;
              if (_orderDetails.status == 'waiting') {
                return OrderDetailsOnProcess(_orderDetails);
              }
              return Container();
            },
          );
        },
      ),
    );
  }
}
