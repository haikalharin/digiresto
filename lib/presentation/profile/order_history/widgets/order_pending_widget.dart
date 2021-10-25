import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/core/widgets/custom_webview.dart';
import 'package:digiresto/presentation/profile/order_history/cancel_order_page.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderPendingWidget extends StatelessWidget {
  final OrderPending orderPending;
  const OrderPendingWidget(this.orderPending, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    final isVa = orderPending.billingDetail.vaNumber.isNotEmpty;
    final isWebview = orderPending.billingDetail.isWebView;
    final isDeeplink = orderPending.billingDetail.isDeeplink;
    final isEwallet = isWebview || isDeeplink;
    // final isVa = orderPending.billingDetail..isNotEmpty;

    Widget ewallet() => Padding(
          padding: EdgeInsets.all(
            15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    i10n.history_pending_payment_method,
                    style: Styles.topUpDetailsStyle.copyWith(
                      color: AppColors.greyColor1,
                    ),
                  ),
                  Text(
                    orderPending.billingDetail.serviceProvider,
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
                        CommonUtils.currencyFormat(double.tryParse(
                                orderPending.billingDetail.amount.toString()) ??
                            0),
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
                            text: '${orderPending.billingDetail.amount}',
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
            ],
          ),
        );

    Widget bankOrVA() => Padding(
          padding: EdgeInsets.all(
            15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      orderPending.billingDetail.bankName,
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
                    isVa
                        ? orderPending.billingDetail.title
                        : orderPending.billingDetail.bankAccName,
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
                        isVa
                            ? i10n.history_pending_va_number
                            : i10n.billing_rekening_number,
                        style: Styles.topUpDetailsStyle.copyWith(
                          color: AppColors.greyColor1,
                        ),
                      ),
                      Text(
                        isVa
                            ? orderPending.billingDetail.vaNumber
                            : orderPending.billingDetail.bankAccNo,
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
                            text: orderPending.billingDetail.vaNumber,
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
                        isVa
                            ? CommonUtils.currencyFormat(double.tryParse(
                                    orderPending.billingDetail.amount
                                        .toString()) ??
                                0)
                            : CommonUtils.currencyFormat(double.tryParse(
                                    orderPending.billingDetail.uniqueAmount) ??
                                0),
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
                                ? '${orderPending.billingDetail.amount}'
                                : orderPending.billingDetail.uniqueAmount,
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
                  children: [
                    Icon(
                      Icons.warning_rounded,
                      color: AppColors.mainColor,
                      size: 27,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      i10n.billing_alert_nominal,
                      style: Styles.topUpDetailsStyle.copyWith(
                        color: AppColors.mainColor,
                      ),
                    )
                  ],
                ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        );

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        CommonUtils.dateFormat('dd MMMM yyyy, HH:mm',
                            orderPending.deviceTimestamp)!,
                        style: Styles.topUpDateStyle,
                      ),
                      Text(
                        orderPending.outlet.detail.name,
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
                  onSelected: (index) {
                    switch (index) {
                      case 1:
                        Get.toNamed(Routers.paymentReceipt,
                            arguments: PaymentReceiptViewArgument(
                                fromOrder: false,
                                receiptCode: orderPending.receiptCode));

                        break;
                      case 2:
                        Get.dialog(
                          CustomDialog(
                            backgroundColor: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  i10n.history_pending_cancel,
                                  style: Styles.dialogTitleStyle,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  i10n.history_pending_cancel_alert(
                                      orderPending.receiptCode),
                                  style: Styles.dialogSubtitleStyle,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomButton(
                                        onPressed: () => Get.back(),
                                        color: Colors.white,
                                        borderColor: AppColors.mainColor,
                                        label: i10n.alert_cancel,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: CustomButton(
                                        onPressed: () => Get.off(
                                                CancelOrderPage(
                                                    orderPending.receiptCode))
                                            ?.then(
                                          (value) => Get.back(),
                                        ),
                                        color: AppColors.mainColor,
                                        fontColor: Colors.white,
                                        label: i10n.alert_ok,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                        break;
                      default:
                    }
                  },
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 1,
                        child: Text(i10n.history_pending_detail),
                      ),
                      PopupMenuItem(
                        value: 2,
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
            child: Text(i10n.history_pending_expired(
                '${CommonUtils.dateFormat('dd MMM yyyy, HH:mm', (orderPending.billingDetail.expiresAt.add(DateTime.now().timeZoneOffset)))} ${DateTime.now().timeZoneName}')),
          ),
          isEwallet ? ewallet() : bankOrVA(),
          CustomButton(
            margin: EdgeInsets.all(15),
            label: i10n.history_pending_make_payment,
            onPressed: () {
              Get.dialog(
                CustomDialog(
                  backgroundColor: Colors.white,
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Digiresto',
                        style: Styles.dialogTitleStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        (orderPending.billingDetail.expiresAt
                                    .add(DateTime.now().timeZoneOffset))
                                .isAfter(DateTime.now())
                            ? i10n.history_pending_inquiry_pending
                            : i10n.history_pending_inquiry_expired,
                        style: Styles.dialogSubtitleStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onPressed: () async {
                          final url = orderPending.billingDetail.link;
                          Get.back();
                          if (url.isNotEmpty && url.isURL) {
                            isDeeplink
                                ? Get.to(CustomWebView(url: url))
                                : launch(url);
                          }
                        },
                        color: AppColors.mainColor,
                        fontColor: Colors.white,
                        label: i10n.alert_ok,
                      ),
                    ],
                  ),
                ),
              );
            },
            color: AppColors.mainColor,
            fontColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
