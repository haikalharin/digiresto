import 'dart:io';

import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/styles.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      title: 'Digiresto',
      appBarColor: AppColors.mainColor,
      titleFontColor: Colors.white,
      suffixWidget: GestureDetector(
        onTap: () => Get.back(),
        child: Text(
          'CLOSE',
          style: Styles.appBarTitleStyle.copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      body: WebView(
        initialUrl: 'https://digiresto.co.id/privacy.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
