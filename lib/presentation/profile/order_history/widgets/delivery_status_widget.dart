import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:flutter/material.dart';

class DeliveryStatusWidget extends StatelessWidget {
  final DeliveryStatus status;
  final int index;
  final int length;
  const DeliveryStatusWidget(
      {required this.status,
      required this.length,
      required this.index,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 2, left: 6, right: 6),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.green54C30F,
                shape: BoxShape.circle,
              ),
            ),
            index != length - 1
                ? Container(
                    margin: EdgeInsets.only(bottom: 6, left: 6, right: 6),
                    width: 3,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.green54C30F,
                    ),
                  )
                : Container(
                    height: 50,
                  ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      CommonUtils.dateFormat(
                          'dd MMM yyyy',
                          status.updatedDate
                              .add(DateTime.now().timeZoneOffset))!,
                      style: Styles.menuItemLabelStyle.copyWith(
                        color: AppColors.green54C30F,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    '${CommonUtils.dateFormat('HH:mm', status.updatedDate.add(DateTime.now().timeZoneOffset))!}',
                    style: Styles.menuItemLabelStyle.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                status.statusDescription,
                style: Styles.menuItemLabelStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
