import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:digiresto/domain/core/constants/styles.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/credit/top_up_pending.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TopUpPendingItem extends StatelessWidget {
  final TopUpPending topUp;
  final void Function(String billingId) onTapDelete;
  const TopUpPendingItem(
    this.topUp, {
    Key? key,
    required this.onTapDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i10n = I10n.of(context);
    final isVa = topUp.detail.vaNumber != null;
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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/top_up_icon.svg'),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CommonUtils.dateFormat(
                            'dd MMM yyyy, H:m:s', topUp.createdDate)!,
                        style: Styles.topUpDateStyle,
                      ),
                      Text(
                        i10n.credit_topup,
                        style: Styles.topUpDetailsStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                PopupMenuButton(
                  child: Icon(
                    Icons.more_horiz,
                    size: 35,
                  ),
                  onSelected: (_) {
                    onTapDelete(topUp.billingId);
                  },
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 1,
                        child: Text(i10n.history_pending_cancel),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.dividerColor,
            thickness: 1,
            height: 1,
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            margin: EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFFFE2E4),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Color(0xFFFFA5AA),
                width: 1,
              ),
            ),
            child: Text(
              i10n.history_pending_expired(
                  '${CommonUtils.dateFormat('dd MMM yyyy, HH:mm', (topUp.detail.expiresAt))} ${DateTime.now().timeZoneName}'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isVa
                              ? i10n.history_pending_va_number
                              : i10n.billing_rekening_number,
                          style: Styles.topUpDetailsStyle.copyWith(
                            color: AppColors.greyColor1,
                          ),
                        ),
                        Text(
                          isVa
                              ? topUp.detail.vaNumber!
                              : topUp.detail.bankAccNo!,
                          style: Styles.topUpDetailsStyle.copyWith(
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
                              text: isVa
                                  ? topUp.detail.vaNumber!
                                  : topUp.detail.bankAccNo!,
                            ),
                          );
                          Get.snackbar(
                            'Success',
                            i10n.billing_success_copy(isVa
                                ? topUp.detail.vaNumber!
                                : topUp.detail.bankAccNo!),
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
                            style: Styles.topUpDetailsStyle.copyWith(
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
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isVa ? 'Virtual Account' : i10n.billing_bank_account_name,
                      style: Styles.topUpDetailsStyle.copyWith(
                        color: AppColors.greyColor1,
                      ),
                    ),
                    Text(
                      isVa ? topUp.detail.title! : topUp.detail.bankAccName!,
                      style: Styles.topUpDetailsStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                if (!isVa)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        i10n.billing_bank_name,
                        style: Styles.topUpDetailsStyle.copyWith(
                          color: AppColors.greyColor1,
                        ),
                      ),
                      Text(
                        topUp.detail.bankName!,
                        style: Styles.topUpDetailsStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i10n.billing_total_payment,
                          style: Styles.topUpDetailsStyle.copyWith(
                            color: AppColors.greyColor1,
                          ),
                        ),
                        Text(
                          CommonUtils.currencyFormat(
                            double.parse(
                              isVa
                                  ? topUp.detail.finalAmount!
                                  : topUp.detail.uniqueAmount!,
                            ),
                          ),
                          style: Styles.topUpDetailsStyle.copyWith(
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
                              text: isVa
                                  ? topUp.detail.finalAmount!
                                  : topUp.detail.uniqueAmount!,
                            ),
                          );
                          Get.snackbar(
                            'Success',
                            i10n.billing_success_copy(isVa
                                ? topUp.detail.finalAmount!
                                : topUp.detail.uniqueAmount!),
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
                            style: Styles.topUpDetailsStyle.copyWith(
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
                  height: 15,
                ),
                if (!isVa)
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
                          i10n.billing_alert_nominal,
                          style: Styles.topUpDetailsStyle.copyWith(
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
