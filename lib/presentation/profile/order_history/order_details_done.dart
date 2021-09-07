import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/delivery_status_widget.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class OrderDetailsDone extends StatelessWidget {
  final OrderHistoryDetails orderDetails;
  const OrderDetailsDone(this.orderDetails, {Key? key}) : super(key: key);

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
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tipe Order',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    orderDetails.salesType,
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
                    'Status Transaksi',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    orderDetails.status,
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
                    'Daftar Order',
                    style: Styles.menuItemLabelStyle,
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
              ...orderDetails.deliveryDetail.status
                  .map((status) => DeliveryStatusWidget(status))
                  .toList(),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {},
                borderRadius: BorderRadius.circular(30),
                color: AppColors.mainColor,
                label: 'Beli Lagi',
                fontColor: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}
