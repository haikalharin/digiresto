import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:flutter/material.dart';

class BankDetailWidget extends StatelessWidget {
  final TopUpBankDetails bankDetails;
  const BankDetailWidget(this.bankDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainColor.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
        color: Colors.white,
        border: Border.all(
          color: AppColors.mainColor,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Transaction Date',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: Text(
                    CommonUtils.dateFormat(
                      'dd/MM/yyyy hh:mm',
                      bankDetails.transactionDate,
                    ).toString(),
                    style: Styles.creditDetailsStyle,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColors.dividerColor,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'No. Rekening',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    bankDetails.bankAccNo,
                    style: Styles.creditDetailsStyle
                        .copyWith(color: AppColors.redYoung),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColors.dividerColor,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Bank Account Name',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    bankDetails.bankAccName,
                    style: Styles.creditDetailsStyle,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColors.dividerColor,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Bank Name',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    bankDetails.bankName,
                    style: Styles.creditDetailsStyle,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColors.dividerColor,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Amount',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    bankDetails.formattedUniqueAmount,
                    style: Styles.creditDetailsStyle
                        .copyWith(color: AppColors.redYoung),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
