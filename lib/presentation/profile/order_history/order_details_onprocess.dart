import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderDetailsOnProcess extends StatelessWidget {
  final OrderHistoryDetails orderDetails;
  const OrderDetailsOnProcess(this.orderDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              final _phoneStr = _phone.startsWith('0') ? '62$_phone' : _phone;
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
                  'Kirim pesan',
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
                    'Delivery',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.deliveryAmount.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              Divider(
                color: AppColors.greyColor,
                thickness: 1,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: Styles.menuItemLabelStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.finalAmount.toDouble()),
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
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alamat Pengiriman',
                style: Styles.menuItemLabelStyle
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                orderDetails.delivery.address,
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
              Text(
                'Status Pengiriman',
                style: Styles.menuItemLabelStyle
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              if (orderDetails.deliveryDetail.status.length == 0)
                Text(
                  'Menunggu driver',
                  style: Styles.menuItemLabelStyle,
                ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {},
                borderRadius: BorderRadius.circular(30),
                color: AppColors.mainColor,
                label: 'Batal',
                fontColor: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}
