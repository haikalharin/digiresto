import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/param/get_list_voucher_outlet_param.dart';
import 'package:digiresto/domain/order/order_select_voucher_method_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SelectVouchertMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderSelectVoucherMethodViewArgument args =
        Get.arguments as OrderSelectVoucherMethodViewArgument;
    Get.context!.read<OrderBloc>().add(OrderEvent.getListVoucherOutlet(
        GetListVoucherOutletParam(
            body: GetListVoucherOutletBodyParam(),
            queryString: GetListVoucherOutletQueryParam(
                merchantId: args.outlet.merchantId,
                outletId: args.outlet.id))));
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
            title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ImageIcon(
                AssetImage(
                  AppAssets.iconVoucher,
                ),
                size: 24,
                color: AppColors.redD12B34,
              ),
              SizedBox(
                width: 12,
              ),
              Text(I10n.current.cart_my_voucher,
                  style: AppFont.textBlack15Bold),
              SizedBox(
                width: 48,
              ),
            ]),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: state.maybeMap(getListVoucherOutletSuccess: (r) {
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

  Widget _buildItemList(GetListVoucherOutletDataResponse response) {
    String title = response.name;
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
              Text(response.code,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                //save to local
                Get.context!
                    .read<OrderBloc>()
                    .add(OrderEvent.setVoucherMethodID(response));
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
