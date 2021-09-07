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

class SelectPaymentMethodScreen extends StatelessWidget {
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
                  _buildItemList(r.response[index]),
              separatorBuilder: (context, index) => SizedBox(height: 5),
            );
          }, orElse: () {
            return Container();
          }));
    });
  }

  Widget _showCredits({required Function(UserBalance) balance}) {
    return BlocProvider<CreditBloc>(
        create: (context) => getIt<CreditBloc>()..add(CreditEvent.started()),
        child: BlocBuilder<CreditBloc, CreditState>(builder: (context, state) {
          return state.maybeMap(loaded: (r) {
            final userBalance = r.userBalance
                .getOrElse(() => UserBalance(username: "", balance: "0"));
            String tmpBalance = Utils.formatRupiah(userBalance.balance);
            balance(userBalance);
            return Text("Rp. " + tmpBalance,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14));
          }, orElse: () {
            balance(UserBalance(username: "", balance: "0"));
            return Text("Rp. 0",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14));
          });
        }));
  }

  Widget _buildItemList(PaymentMethodDataResponse item) {
    PaymentMethodDataResponse? paymentMethod;
    String title = item.title.replaceAll('%1\$s', Strings.appName);
    paymentMethod = item;
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
              title.toLowerCase() == "digiresto credits"
                  ? _showCredits(balance: (balance) {
                      paymentMethod =
                          paymentMethod!.copyWith(ammount: balance.balance);
                    })
                  : Container(),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                //save to local
                Get.context!
                    .read<OrderBloc>()
                    .add(OrderEvent.setPaymentMethodID(paymentMethod!));
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  side: BorderSide(
                    width: 1,
                    color: AppColors.red,
                  ),
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
