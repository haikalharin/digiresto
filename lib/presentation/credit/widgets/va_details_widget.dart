import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/presentation/credit/widgets/detail_field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VADetailsWidget extends StatelessWidget {
  final TopUpVADetails vaDetails;
  const VADetailsWidget(this.vaDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailFieldItem(
          title: 'Batas Akhir Pembayaran',
          value: CommonUtils.dateFormat(
            'EEEE dd MMMM yyyy hh:mm',
            (vaDetails.expiresAt.add(DateTime.now().timeZoneOffset)),
          ).toString(),
        ),
        Text(
          'Transfer ke nomor virtual account',
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
                    'Copied to clipboard !',
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
                    'Salin',
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
          title: 'Nominal',
          value: CommonUtils.currencyFormat(
            double.parse(
              vaDetails.amount,
            ),
          ),
        ),
        DetailFieldItem(
          title: 'Biaya Layanan',
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
                  'Total Pembayaran',
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
                    'Copied to clipboard !',
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
                    'Salin',
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

// class VADetailsWidget extends StatelessWidget {
//   final TopUpVADetails vaDetails;
//   const VADetailsWidget(this.vaDetails, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
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
//                     'No. Virtual Account',
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     vaDetails.vaNumber,
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
//                     'Account Name',
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     vaDetails.title,
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
//                     'Expired at',
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     CommonUtils.dateFormat(
//                       'dd/MM/yyyy hh:mm',
//                       vaDetails.expiresAt,
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
//                     'Amount',
//                     style: Styles.creditDetailsLabelStyle,
//                   ),
//                 ),
//                 Expanded(
//                   child: SelectableText(
//                     CommonUtils.currencyFormat(
//                       double.parse(vaDetails.finalAmount),
//                     ),
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
