import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:digiresto/presentation/profile/order_history/order_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class OrderCompletedWidget extends StatelessWidget {
  final OrderHistory orderCompleted;
  final Function refresh;
  const OrderCompletedWidget(
    this.orderCompleted, {
    Key? key,
    required this.refresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      blurRadius: 2,
      spreadRadius: 2,
      offset: Offset(0, 1),
      shadowColor: AppColors.greyColor1,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.defaultMargin,
        vertical: Dimens.defaultMargin / 2,
      ),
      padding: EdgeInsets.zero,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.to(
            OrderDetailsPage(orderCompleted.receiptCode),
          )?.then((value) => refresh()),
          borderRadius: BorderRadius.circular(4),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  15,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/order_icon.svg'),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            CommonUtils.dateFormat('dd MMM yyyy, HH:mm:ss',
                                orderCompleted.deviceTimestamp)!,
                            style: Styles.topUpDateStyle,
                          ),
                          Text(
                            orderCompleted.outlet.detail.name,
                            style: Styles.topUpDetailsStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.dividerColor,
                thickness: 1,
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.all(
                  15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kode Struk'),
                        Text(orderCompleted.receiptCode),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tipe Order'),
                        Text(orderCompleted.salesType),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Status Transaksi'),
                        Text(orderCompleted.status),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total'),
                        Text(CommonUtils.currencyFormat(
                            double.parse(orderCompleted.finalAmount))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
