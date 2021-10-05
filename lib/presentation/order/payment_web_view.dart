import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/transaction/payment_receipt_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebViewScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    WebViewController? _controller;
    String _title = I10n.current.cart_billing_payment;
    PaymentWebViewArgument args = Get.arguments as PaymentWebViewArgument;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Get.offNamed(Routers.paymentReceipt,
                arguments: PaymentReceiptViewArgument(
                    receiptCode: args.checkoutDataResponse.receiptCode));
          },
        ),
        title: Text(
          _title,
          style: AppFont.textBlack19Bold.copyWith(color: AppColors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.red,
      ),
      body: Container(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: args.checkoutDataResponse.payment.url,
          onWebViewCreated: (WebViewController wvcontroller) {
            _controller = wvcontroller;
          },
          onPageFinished: (String param) async {
            final pageTitle = (await _controller?.getTitle()) ?? "";
            print('DEBUG >> title $pageTitle');
            _title = pageTitle;
          },
        ),
      ),
    );
  }
}
