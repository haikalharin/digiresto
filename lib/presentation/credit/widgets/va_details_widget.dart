import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/credit/widgets/detail_field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VADetailsWidget extends StatelessWidget {
  final TopUpVADetails vaDetails;
  const VADetailsWidget(this.vaDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i10n = I10n.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailFieldItem(
          title: i10n.billing_expired,
          value: CommonUtils.dateFormat(
            'EEEE dd MMMM yyyy hh:mm',
            (vaDetails.expiresAt.add(DateTime.now().timeZoneOffset)),
          ).toString(),
        ),
        Text(
          i10n.billing_va,
          style: Styles.creditDetailsLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vaDetails.title,
                  style: Styles.creditDetailsStyle,
                ),
                Text(
                  vaDetails.vaNumber,
                  style: Styles.creditDetailsStyle.copyWith(
                    color: AppColors.mainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Clipboard.setData(
                    ClipboardData(
                      text: vaDetails.vaNumber,
                    ),
                  );
                  Get.snackbar(
                    'Success',
                    i10n.billing_success_copy(vaDetails.vaNumber),
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(seconds: 2),
                  );
                },
                child: Ink(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: AppColors.mainColor,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    i10n.topup_copy_action,
                    style: Styles.creditDetailsStyle.copyWith(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          height: 30,
          color: AppColors.greyColor,
        ),
        DetailFieldItem(
          title: i10n.billing_nominal,
          value: CommonUtils.currencyFormat(
            double.parse(
              vaDetails.amount,
            ),
          ),
        ),
        DetailFieldItem(
          title: i10n.billing_fee,
          value: CommonUtils.currencyFormat(
            double.parse(
              vaDetails.fee,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  i10n.billing_total_payment,
                  style: Styles.creditDetailsLabelStyle,
                ),
                Text(
                  CommonUtils.currencyFormat(
                    double.parse(
                      vaDetails.finalAmount,
                    ),
                  ),
                  style: Styles.creditDetailsStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Clipboard.setData(
                    ClipboardData(
                      text: vaDetails.finalAmount,
                    ),
                  );
                  Get.snackbar(
                    'Success',
                    i10n.billing_success_copy(vaDetails.finalAmount),
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(seconds: 2),
                  );
                },
                child: Ink(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: AppColors.mainColor,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    i10n.topup_copy_action,
                    style: Styles.creditDetailsStyle.copyWith(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
