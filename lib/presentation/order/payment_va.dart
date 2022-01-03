import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/ctoast/ctoast.dart';
import 'package:digiresto/domain/core/utils/formatting/rupiah.dart';
import 'package:digiresto/domain/transaction/payment_va_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PaymentVAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PaymentVAViewArgument args = Get.arguments as PaymentVAViewArgument;

    final vaPayment = args.checkoutDataResponse.payment.paymentCode;
    final vaAmount = vaPayment?.amount ?? vaPayment?.uniqueAmount ?? "0";
    final df = new DateFormat('EEEE, dd MMMM yyyy, hh:mm');
    final _userProfile = args.userProfile;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(I10n.current.cart_billing_payment,
            style: AppFont.textBlack19Bold.copyWith(color: AppColors.white)),
        centerTitle: true,
        backgroundColor: AppColors.red,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi ${_userProfile.name ?? ""},',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(I10n.current.billing_desc,
                    style: AppFont.textBlack12Regular),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(I10n.current.billing_transaction_date,
                    style: AppFont.textBlack15Regular),
                SizedBox(height: 5),
                Text(
                  df.format(
                      vaPayment!.formattedTransactionDate ?? DateTime.now()),
                  style: AppFont.textBlack15Bold,
                ),
                SizedBox(height: 10),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                Text(I10n.current.billing_expired,
                    style: AppFont.textBlack15Regular),
                SizedBox(height: 5),
                Text(
                  df.format(
                      vaPayment.expiresAt.add(DateTime.now().timeZoneOffset)),
                  style: AppFont.textBlack15Bold,
                ),
                SizedBox(height: 10),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                if (vaPayment.vaNumber != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(I10n.current.billing_va,
                          style: AppFont.textBlack15Regular),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                vaPayment.title ?? "",
                                style: AppFont.textBlack15Bold,
                              ),
                              SizedBox(height: 5),
                              Text(
                                vaPayment.vaNumber ?? "",
                                style: AppFont.textBlack15Bold
                                    .copyWith(color: AppColors.red),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: vaPayment.vaNumber));
                                Ctoast.show('VA Number Copied');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.red,
                                  ),
                                ),
                              ),
                              child: Text(I10n.current.topup_copy_action,
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                  )))
                        ],
                      ),
                    ],
                  ),
                if (vaPayment.bankAccNo != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                          I10n.current.billing_va
                              .replaceAll("Virtual Account", ""),
                          style: AppFont.textBlack15Regular),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                vaPayment.bankName ?? "",
                                style: AppFont.textBlack15Bold,
                              ),
                              SizedBox(height: 5),
                              Text(
                                vaPayment.bankAccNo ?? "",
                                style: AppFont.textBlack15Bold
                                    .copyWith(color: AppColors.red),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: vaPayment.bankAccNo));
                                Ctoast.show('Bank Acc Number Copied');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.red,
                                  ),
                                ),
                              ),
                              child: Text(I10n.current.topup_copy_action,
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                  )))
                        ],
                      ),
                    ],
                  ),
                SizedBox(height: 10),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                if (vaPayment.bankAccName != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(I10n.current.billing_bank_account_name,
                          style: AppFont.textBlack15Regular),
                      SizedBox(height: 5),
                      Text(
                        vaPayment.bankAccName ?? "",
                        style: AppFont.textBlack15Bold,
                      ),
                      SizedBox(height: 10),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(I10n.current.billing_total_payment,
                            style: AppFont.textBlack15Regular),
                        SizedBox(height: 5),
                        Text(
                          Rupiah.format(vaAmount.toString()),
                          style: AppFont.textBlack15Bold
                              .copyWith(color: AppColors.red),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Clipboard.setData(
                              ClipboardData(text: vaAmount.toString()));
                          Ctoast.show('Amount Copied');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
                          ),
                        ),
                        child: Text(I10n.current.topup_copy_action,
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            )))
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomButton(
            label: I10n.current.billing_action_done,
            color: AppColors.mainColor,
            fontColor: Colors.white,
            borderRadius: BorderRadius.circular(30),
            margin: EdgeInsets.all(Dimens.defaultMargin),
            onPressed: () {
              Get.offNamed(Routers.paymentReceipt,
                  arguments: PaymentReceiptViewArgument(
                      fromOrder: true,
                      receiptCode: args.checkoutDataResponse.receiptCode));
            },
          ),
        ],
      ),
    );
  }
}
