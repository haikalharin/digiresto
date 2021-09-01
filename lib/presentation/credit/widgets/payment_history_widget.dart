import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/payment_history.dart';
import 'package:flutter/material.dart';

class PaymentHistoryWidget extends StatelessWidget {
  final PaymentHistoryDetail _detail;
  const PaymentHistoryWidget(this._detail, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimens.defaultMargin,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
              ),
              child: Text(
                CommonUtils.dateFormat('dd MMMM yyyy',
                    DateTime.tryParse(_detail.transactionDate))!,
                style: Styles.topUpDetailsStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Text(
                        _detail.transferTypeName,
                        style: Styles.topUpDetailsStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                      double.parse(_detail.amount),
                    ),
                    style: Styles.topUpDetailsStyle.copyWith(
                      color: double.parse(_detail.amount).isNegative
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimens.defaultMargin,
            ),
            Divider(
              thickness: 1,
              color: AppColors.dividerColor,
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
