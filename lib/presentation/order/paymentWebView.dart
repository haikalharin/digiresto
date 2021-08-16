import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatefulWidget {
  @override
  _PaymentWebViewState createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends State<PaymentWebView> {
  WebViewController _controller;
  String _title = "Payment";
  OrderStore _orderStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orderStore = Provider.of<OrderStore>(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () async {
            await _orderStore.getTransaction();
            Navigator.of(context).pushReplacementNamed(Routes.payment_receipt);
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
          initialUrl: _orderStore.paymentData.url,
          onWebViewCreated: (WebViewController wvcontroller) {
            _controller = wvcontroller;
          },
          onPageFinished: (String param) async {
            final pageTitle = await _controller.getTitle();
            print('DEBUG >> title $pageTitle');
            setState(() {
              _title = pageTitle;
            });
          },
        ),
      ),
    );
  }
}
