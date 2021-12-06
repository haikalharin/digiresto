import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:digiresto/presentation/profile/order_history/order_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class OrderOnProcessWidget extends StatelessWidget {
  final OrderHistory orderOnProcess;
  final Function refresh;
  const OrderOnProcessWidget(
    this.orderOnProcess, {
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
          onTap: () => Get.to(OrderDetailsPage(orderOnProcess.receiptCode))
              ?.then((value) => refresh()),
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
                                orderOnProcess.deviceTimestamp)!,
                            style: Styles.topUpDateStyle,
                          ),
                          Text(
                            orderOnProcess.outlet.detail.name,
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
                        Text(I10n.current.history_receipt),
                        Text(orderOnProcess.receiptCode),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(I10n.current.history_order_type),
                        Text(orderOnProcess.salesType),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(I10n.current.history_status),
                        Text(orderOnProcess.status),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(I10n.current.history_total_payment),
                        Text(CommonUtils.currencyFormat(
                            double.parse(orderOnProcess.finalAmount))),
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
