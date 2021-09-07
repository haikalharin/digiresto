import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/transaction/payment_receipt_view_argument.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebViewScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    WebViewController? _controller;
    String _title = "Payment";
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
                    checkoutDataResponse: args.checkoutDataResponse));
          },
        ),
        title: Text(
          _title,
          style: TextStyle(
            fontFamily: "roboto",
            color: Colors.white,
          ),
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
