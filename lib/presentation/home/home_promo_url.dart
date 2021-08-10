import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePromoUrlScreen extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);
    final routes =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBackgound(backgroundColor: AppColors.red),
            Container(
              color: AppColors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new IconButton(
                        icon: new Icon(Icons.arrow_back_outlined,
                            color: Colors.white, size: 24.0),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Container(
                        width: 100,
                        child: Text("Promo",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        width: 10,
                      )
                    ],
                  ),
                  Container(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height,
                      ),
                      child: WebView(
                        initialUrl: routes['url']!.startsWith('http')
                            ? routes['url']!
                            : "http://" + routes['url']!,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
