import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/ctoast/ctoast.dart';
import 'package:digiresto/domain/core/utils/formatting/rupiah.dart';
import 'package:digiresto/domain/entity/user/user_profile_model.dart';
import 'package:digiresto/domain/transaction/payment_va_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PaymentVAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProfile? _userProfile;
    PaymentVAViewArgument args = Get.arguments as PaymentVAViewArgument;

    final vaPayment = args.checkoutDataResponse.payment.paymentCode;
    final vaAmount = vaPayment?.amount ?? vaPayment?.uniqueAmount ?? "0";
    final df = new DateFormat('EEEE, dd MMMM yyyy, hh:mm');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Pembayaran',
          style: TextStyle(
            fontFamily: 'roboto',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.red,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi ${_userProfile?.name ?? ""},',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                      'Silahkan lanjutkan proses pembayaran dengan detail sebagai berikut'),
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
                  Text('Batas akhir pembayaran'),
                  SizedBox(height: 5),
                  Text(
                    df.format(vaPayment!.expiresAt),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
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
                        Text('Transfer ke nomor Virtual Account'),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  vaPayment.title ?? "",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  vaPayment.vaNumber ?? "",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.red,
                                  ),
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
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                    side: BorderSide(
                                      width: 1,
                                      color: AppColors.red,
                                    ),
                                  ),
                                ),
                                child: Text('Salin',
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
                        Text('Transfer ke nomor'),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  vaPayment.bankName ?? "",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  vaPayment.bankAccNo ?? "",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.red,
                                  ),
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
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                    side: BorderSide(
                                      width: 1,
                                      color: AppColors.red,
                                    ),
                                  ),
                                ),
                                child: Text('Salin',
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
                        Text('Pemilik Rekening'),
                        SizedBox(height: 5),
                        Text(
                          vaPayment.bankAccName ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
                          Text('Total pembayaran'),
                          SizedBox(height: 5),
                          Text(
                            Rupiah.format(vaAmount.toString()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                          onPressed: () {
                            Clipboard.setData(
                                ClipboardData(text: vaAmount.toString()));
                            Ctoast.show('Amount Copied');
                          },
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
                          ),
                          child: Text('Salin',
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
            Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.white,
                child: FlatButton(
                    minWidth: double.infinity,
                    onPressed: () async {
                      Get.offNamed(Routers.paymentReceipt,
                          arguments: PaymentReceiptViewArgument(
                              receiptCode:
                                  args.checkoutDataResponse.receiptCode));
                    },
                    color: AppColors.red,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      'Selesai',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
