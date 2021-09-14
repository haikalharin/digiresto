import 'package:digiresto/application/profile/order_details/order_details_bloc.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/profile/order_history/order_details_done.dart';
import 'package:digiresto/presentation/profile/order_history/order_details_onprocess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

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
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              loadSuccess: (_state) {
                _state.optionSubmitRating.fold(
                  () {},
                  (a) => Get.defaultDialog(
                    title: 'Success',
                    middleText: 'Review Submitted',
                  ),
                );
              });
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Center(
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
              if (_orderDetails.status == 'waiting' ||
                  _orderDetails.status == 'process' ||
                  _orderDetails.status == 'ready') {
                return OrderDetailsOnProcess(_orderDetails);
              }
              return OrderDetailsDone(_orderDetails);
            },
          );
        },
      ),
    );
  }
}
