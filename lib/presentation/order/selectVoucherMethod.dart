import 'package:digiresto/application/credit/credit_bloc.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/core/constants/strings.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/credit/user_balance.dart';
import 'package:digiresto/domain/entity/order/param/get_payment_method_param.dart';
import 'package:digiresto/domain/entity/order/payment_method_response.dart';
import 'package:digiresto/domain/order/order_select_payment_method_view_argument.dart';
import 'package:digiresto/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SelectVouchertMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderSelectPaymentMethodViewArgument args =
        Get.arguments as OrderSelectPaymentMethodViewArgument;
    Get.context!.read<OrderBloc>().add(OrderEvent.getPaymentMethod(
        GetPaymentMethodParam(
            body: GetPaymentMethodBodyParam(),
            queryString: GetPaymentMethodQueryParam(
                outletName: args.outlet.endpointName,
                salesType: args.salestype))));
    return BlocConsumer<OrderBloc, OrderState>(listener: (context, state) {
      state.maybeMap(
          getPaymentMethodSuccess: (r) {
            print(r.response);
          },
          orElse: () {});
    }, builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Metode Pembayaran',
              style: TextStyle(
                fontFamily: "roboto",
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: state.maybeMap(getPaymentMethodSuccess: (r) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount: r.response.length,
              itemBuilder: (context, index) =>
                  _buildItemList(context, r.response[index]),
              separatorBuilder: (context, index) => SizedBox(height: 5),
            );
          }, orElse: () {
            return Container();
          }));
    });
  }

  Widget _showSubtitle() {
    return BlocProvider<CreditBloc>(
        create: (context) => getIt<CreditBloc>()..add(CreditEvent.started()),
        child: BlocBuilder<CreditBloc, CreditState>(builder: (context, state) {
          return state.maybeMap(loaded: (r) {
            String tmpBalance = Utils.formatRupiah(r.userBalance
                .getOrElse(() => UserBalance(username: "", balance: ""))
                .balance);

            return Text("Rp. " + tmpBalance,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14));
          }, orElse: () {
            return Text("Rp. 0",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14));
          });
        }));
  }

  Widget _buildItemList(context, PaymentMethodDataResponse item) {
    String title = item.title.replaceAll('%1\$s', Strings.appName);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              _showSubtitle()
            ],
          ),
          FlatButton(
              onPressed: () {
                //_orderStore.setPaymentMethod(item);
                Navigator.of(context).pop();
              },
              color: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),
                side: BorderSide(
                  width: 1,
                  color: AppColors.red,
                ),
              ),
              child: Text('Pilih',
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                  )))
        ],
      ),
    );
  }
}
