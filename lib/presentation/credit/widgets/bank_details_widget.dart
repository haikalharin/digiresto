import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/credit/widgets/detail_field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BankDetailWidget extends StatelessWidget {
  final TopUpBankDetails bankDetails;
  const BankDetailWidget(this.bankDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i10n = I10n.of(context);
    return Column(
      children: [
        DetailFieldItem(
          title: i10n.billing_transaction_date,
          value: CommonUtils.dateFormat(
            'EEEE dd MMMM yyyy hh:mm',
            bankDetails.formattedTransactionDate,
          ).toString(),
        ),
        DetailFieldItem(
          title: i10n.billing_expired,
          value: CommonUtils.dateFormat('EEEE dd MMMM yyyy hh:mm',
                  (bankDetails.expiresAt.add(DateTime.now().timeZoneOffset)))
              .toString(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  i10n.billing_rekening_number,
                  style: Styles.creditDetailsLabelStyle,
                ),
                Text(
                  bankDetails.bankAccNo,
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
                      text: bankDetails.bankAccNo,
                    ),
                  );
                  Get.snackbar(
                    'Success',
                    i10n.billing_success_copy(bankDetails.bankAccNo),
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
          title: i10n.cart_bank_acc_name,
          value: bankDetails.bankAccName,
        ),
        DetailFieldItem(
          title: i10n.cart_bank_name,
          value: bankDetails.bankName,
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
                      bankDetails.uniqueAmount,
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
                      text: bankDetails.uniqueAmount,
                    ),
                  );
                  Get.snackbar(
                    'Success',
                    i10n.billing_success_copy(bankDetails.uniqueAmount),
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
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.warning_rounded,
              color: AppColors.mainColor,
              size: 27,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                I10n.current.billing_alert_nominal,
                style: Styles.topUpDetailsStyle.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

// class BankDetailWidget extends StatelessWidget {
//   final TopUpBankDetails bankDetails;
//   const BankDetailWidget(this.bankDetails, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     I10n i10n = I10n.of(context);
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.mainColor.withOpacity(0.2),
//             spreadRadius: 3,
//             blurRadius: 5,
//             offset: Offset(0, 4),
//           ),
//         ],
//         color: Colors.white,
//         border: Border.all(
//           color: AppColors.mainColor,
//           width: 1,
//         ),
//       ),
//       child: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     i10n.billing_transaction_date,
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: Text(
//                     CommonUtils.dateFormat(
//                       'dd/MM/yyyy hh:mm',
//                       bankDetails.transactionDate,
//                     ).toString(),
//                     style: Styles.creditDetailsStyle,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             thickness: 1,
//             color: AppColors.dividerColor,
//             height: 0,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     i10n.billing_rekening_number,
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     bankDetails.bankAccNo,
//                     style: Styles.creditDetailsStyle
//                         .copyWith(color: AppColors.redYoung),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             thickness: 1,
//             color: AppColors.dividerColor,
//             height: 0,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     i10n.billing_bank_account_name,
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     bankDetails.bankAccName,
//                     style: Styles.creditDetailsStyle,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             thickness: 1,
//             color: AppColors.dividerColor,
//             height: 0,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     i10n.billing_bank_name,
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     bankDetails.bankName,
//                     style: Styles.creditDetailsStyle,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             thickness: 1,
//             color: AppColors.dividerColor,
//             height: 0,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     i10n.billing_amount,
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     bankDetails.formattedUniqueAmount,
//                     style: Styles.creditDetailsStyle
//                         .copyWith(color: AppColors.redYoung),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
