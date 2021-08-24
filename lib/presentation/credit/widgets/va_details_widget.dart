import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:flutter/material.dart';

class VADetailsWidget extends StatelessWidget {
  final TopUpVADetails vaDetails;
  const VADetailsWidget(this.vaDetails, {Key? key}) : super(key: key);

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
                    'No. Virtual Account',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    vaDetails.vaNumber,
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
                    'Account Name',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    vaDetails.title,
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
                    'Expired at',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    CommonUtils.dateFormat(
                      'dd/MM/yyyy hh:mm',
                      vaDetails.expiresAt,
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
                    'Amount',
                    style: Styles.creditDetailsLabelStyle,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    CommonUtils.currencyFormat(
                      double.parse(vaDetails.finalAmount),
                    ),
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
