import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:digiresto/domain/core/theme.dart';

class CustomScafold extends StatelessWidget {
  final bool showBackButton;
  final Widget body;
  final Widget suffixWidget;
  final String title;

  const CustomScafold({
    Key? key,
    required this.body,
    this.suffixWidget = const SizedBox(),
    this.title = '',
    this.showBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: mainColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              color: mainColor,
              padding: const EdgeInsets.all(
                defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (showBackButton)
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: () => Get.back(),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  Expanded(
                    child: Text(
                      title,
                      style: titleStyle,
                    ),
                  ),
                  suffixWidget,
                ],
              ),
            ),
            Expanded(
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
