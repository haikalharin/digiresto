import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewController extends GetxController {
  final String initialTitle;
  CustomWebViewController({required this.initialTitle}) : super();

  Rxn<WebViewController?> webController = Rxn<WebViewController?>();
  RxString pageTitle = ''.obs;

  @override
  void onInit() {
    updatePageTitle(initialTitle);
    super.onInit();
  }

  updateController(WebViewController webcontroller) async {
    webController.value = webcontroller;
    update();
  }

  updatePageTitle(String title) {
    pageTitle.value = title;
  }
}

class CustomWebView extends StatelessWidget {
  final String title;
  final String url;
  final bool staticTitle;
  const CustomWebView({
    Key? key,
    this.title = '',
    required this.url,
    this.staticTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.put(CustomWebViewController(initialTitle: title), permanent: false);
    return Obx(
      () => CustomScafold(
        showBackButton: true,
        title: controller.pageTitle.value,
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: url,
          onWebViewCreated: (WebViewController webcontroller) {
            controller.updateController(webcontroller);
          },
          onPageFinished: (String param) async {
            final pageTitle =
                (await controller.webController.value?.getTitle()) ?? "";
            controller.updatePageTitle(pageTitle);
          },
        ),
      ),
    );
  }
}
