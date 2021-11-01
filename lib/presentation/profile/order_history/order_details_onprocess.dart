import 'package:digiresto/application/profile/order_details/order_details_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/profile/order_history/cancel_order_page.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderDetailsOnProcess extends StatelessWidget {
  final OrderHistoryDetails orderDetails;
  const OrderDetailsOnProcess(this.orderDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final _orderDetailBloc = BlocProvider.of<OrderDetailsBloc>(context);
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Divider(
          thickness: 12,
          color: AppColors.dividerColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Order Resto ${orderDetails.outlet.detail.name}',
          style: Styles.outletNameStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Receipt Code ${orderDetails.receiptCode}',
          style: Styles.receiptCodeStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '${CommonUtils.dateFormat('dd MMM yyyy, HH:mm:ss', orderDetails.deviceTimestamp)}',
          style: Styles.receiptCodeStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: CustomButton(
            onPressed: () {
              final _phone = orderDetails.outlet.detail.phone;
              final _phoneStr = _phone!.startsWith('0') ? '62$_phone' : _phone;
              launch('https://wa.me/$_phoneStr');
            },
            color: Colors.white,
            height: 45,
            borderColor: AppColors.mainColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chat_rounded,
                  color: AppColors.mainColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  I10n.current.chat_outlet,
                  style: Styles.buttonLabelStyle.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
            width: 180,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              ...orderDetails.items
                  .map((item) => MenuItemWidget(item))
                  .toList(),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: AppColors.greyColor,
                thickness: 1,
                height: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.itemTotalAmount.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    I10n.current.cart_delivery,
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.deliveryAmount.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              ...orderDetails.promos
                  .map((promo) => Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                promo.title,
                                style: Styles.menuItemLabelStyle,
                              ),
                              Text(
                                '- ${CommonUtils.currencyFormat(promo.amount.toDouble())}',
                                style: Styles.menuItemPriceStyle,
                              ),
                            ],
                          ),
                        ],
                      ))
                  .toList(),
              Divider(
                color: AppColors.greyColor,
                thickness: 1,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    I10n.current.billing_total_payment,
                    style: Styles.menuItemLabelStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.totalPayment.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        if (orderDetails.delivery != null)
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  I10n.current.cart_address,
                  style: Styles.menuItemLabelStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  orderDetails.delivery?.address ?? '',
                  style: Styles.menuItemLabelStyle,
                ),
              ],
            ),
          ),
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (orderDetails.delivery != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      I10n.current.delivery_status,
                      style: Styles.menuItemLabelStyle
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (orderDetails.deliveryDetail.status?.length == 0)
                      Text(
                        I10n.current.text_menunggu,
                        style: Styles.menuItemLabelStyle,
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              if (orderDetails.status == 'waiting')
                CustomButton(
                  onPressed: () => Get.dialog(
                    CustomDialog(
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Digiresto',
                            style: Styles.dialogTitleStyle,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            I10n.current.history_pending_cancel_alert(
                                orderDetails.receiptCode),
                            style: Styles.dialogSubtitleStyle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  onPressed: () => Get.back(),
                                  color: Colors.white,
                                  borderColor: AppColors.mainColor,
                                  label: I10n.current.alert_cancel,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: CustomButton(
                                  onPressed: () => Get.off(CancelOrderPage(
                                          orderDetails.receiptCode))
                                      ?.then((value) => _orderDetailBloc.add(
                                          OrderDetailsEvent.refresh(
                                              orderDetails.receiptCode))),
                                  color: AppColors.mainColor,
                                  fontColor: Colors.white,
                                  label: I10n.current.alert_ok,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.mainColor,
                  label: I10n.current.alert_cancel,
                  fontColor: Colors.white,
                ),
              if (orderDetails.status == 'ready' ||
                  orderDetails.status == 'process')
                CustomButton(
                  onPressed: () => Get.dialog(
                    CustomDialog(
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            I10n.current.tvselesai,
                            style: Styles.dialogTitleStyle,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            I10n.current.history_order_asking_done,
                            style: Styles.dialogSubtitleStyle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  onPressed: () => Get.back(),
                                  color: Colors.white,
                                  borderColor: AppColors.mainColor,
                                  label: I10n.current.alert_cancel,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: CustomButton(
                                  onPressed: () async {
                                    Get.back();
                                    _orderDetailBloc.add(
                                      OrderDetailsEvent.doneTransaction(
                                          orderDetails.receiptCode),
                                    );
                                  },
                                  color: AppColors.mainColor,
                                  fontColor: Colors.white,
                                  label: I10n.current.alert_ok,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.mainColor,
                  label: I10n.current.tvselesai,
                  fontColor: Colors.white,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
